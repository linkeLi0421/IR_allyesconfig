; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_ioctl_linux.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_ioctl_linux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iw_priv_args = type { i32, i16, i16, [16 x i8] }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.mp_ioctl_handler = type { i32, ptr, i32 }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._adapter = type { %struct.dvobj_priv, %struct.mlme_priv, %struct.cmd_priv, %struct.evt_priv, ptr, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.wlan_acl_pool, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.hal_priv, %struct.led_priv, %struct.mp_priv, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.net_device_stats, %struct.iw_statistics, i32, %struct.work_struct, i8, %struct.spinlock, ptr, ptr, %struct.mutex, %struct.completion }
%struct.dvobj_priv = type { ptr, i32, i8, ptr, ptr, ptr }
%struct.mlme_priv = type { %struct.spinlock, %struct.spinlock, i32, i8, ptr, ptr, %struct.__queue, %struct.__queue, ptr, i32, i8, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, %struct.sitesurvey_ctrl, %struct.timer_list, i32, i32, %struct.timer_list, %struct.timer_list, %struct.qos_priv, %struct.ht_priv, %struct.timer_list }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.evt_priv = type { %struct.__queue, i8, ptr, ptr, i32, %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.2, i32 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, i32, i32, %struct.__queue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, i32, ptr, i8, i8, i8, i16, i32, i64, i32, ptr, i8, i8, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32 }
%struct.hw_txqueue = type { i32, i32, i32, i32, [8 x i32], i32, i32, i32 }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, %struct.smooth_rssi_data, %struct.smooth_rssi_data }
%struct.sk_buff_head = type { %union.anon.3, i32, %struct.spinlock }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.iwreq = type { %union.anon.120, %union.iwreq_data }
%union.anon.120 = type { [16 x i8] }
%struct.ieee_param = type { i32, [6 x i8], %union.anon.121 }
%union.anon.121 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, [32 x i8], [0 x i8] }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, %struct.stainfo_stats, [16 x %struct.recv_reorder_ctrl], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16], i32, i64, i32 }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache, i32, i32, i32 }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i32, i32, i64, i32 }
%struct.recv_reorder_ctrl = type { ptr, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.iw_freq = type { i32, i16, i8, i8 }
%struct.iw_param = type { i32, i8, i8, i16 }
%struct.iw_range = type { i32, i32, i32, i16, i8, i8, [6 x i32], i32, %struct.iw_quality, %struct.iw_quality, i8, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [8 x i16], i8, i8, i8, i16, i8, [8 x i32], i8, i8, i16, i16, i16, i32, i32, i32, i32, i16, i8, [32 x %struct.iw_freq], i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.8, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.94, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.8 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.94 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.iw_scan_req = type { i8, i8, i8, i8, %struct.sockaddr, [32 x i8], i32, i32, [32 x %struct.iw_freq] }
%struct.iw_event = type { i16, i16, %union.iwreq_data }
%struct.iw_encode_ext = type { i32, [8 x i8], [8 x i8], %struct.sockaddr, i16, i16, [0 x i8] }
%struct.iw_pmksa = type { i32, %struct.sockaddr, [16 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.oid_par_priv = type { ptr, i32, ptr, i32, ptr, ptr, i32, i32 }
%struct.mp_ioctl_param = type { i32, i32, [0 x i8] }

@r8711_handlers = internal global { [56 x ptr], [32 x i8] } { [56 x ptr] [ptr null, ptr @r8711_wx_get_name, ptr @dummy, ptr @dummy, ptr @r8711_wx_set_freq, ptr @r8711_wx_get_freq, ptr @r8711_wx_set_mode, ptr @r8711_wx_get_mode, ptr @dummy, ptr @r8711_wx_get_sens, ptr null, ptr @r8711_wx_get_range, ptr @r871x_wx_set_priv, ptr null, ptr null, ptr null, ptr @dummy, ptr @dummy, ptr null, ptr null, ptr @r8711_wx_set_wap, ptr @r8711_wx_get_wap, ptr @r871x_wx_set_mlme, ptr @dummy, ptr @r8711_wx_set_scan, ptr @r8711_wx_get_scan, ptr @r8711_wx_set_essid, ptr @r8711_wx_get_essid, ptr @dummy, ptr @r871x_wx_get_nick, ptr null, ptr null, ptr @r8711_wx_set_rate, ptr @r8711_wx_get_rate, ptr @dummy, ptr @r8711_wx_get_rts, ptr @r8711_wx_set_frag, ptr @r8711_wx_get_frag, ptr @dummy, ptr @dummy, ptr @dummy, ptr @r8711_wx_get_retry, ptr @r8711_wx_set_enc, ptr @r8711_wx_get_enc, ptr @dummy, ptr @r8711_wx_get_power, ptr null, ptr null, ptr @r871x_wx_set_gen_ie, ptr null, ptr @r871x_wx_set_auth, ptr null, ptr @r871x_wx_set_enc_ext, ptr null, ptr @r871x_wx_set_pmkid, ptr null], [32 x i8] zeroinitializer }, align 32
@r8711_private_handler = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @r8711_wx_read32, ptr @r8711_wx_write32, ptr @r8711_drvext_hdl, ptr @r871x_mp_ioctl_hdl, ptr @r871x_get_ap_info, ptr @r871x_set_pid, ptr @r871x_wps_start, ptr @r871x_set_chplan], [32 x i8] zeroinitializer }, align 32
@r8711_private_args = internal constant { [8 x %struct.iw_priv_args], [32 x i8] } { [8 x %struct.iw_priv_args] [%struct.iw_priv_args { i32 35808, i16 18433, i16 0, [16 x i8] c"read32\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35809, i16 18433, i16 0, [16 x i8] c"write32\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35810, i16 0, i16 0, [16 x i8] c"driver_ext\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35811, i16 0, i16 0, [16 x i8] c"mp_ioctl\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35812, i16 18433, i16 0, [16 x i8] c"apinfo\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35813, i16 18433, i16 0, [16 x i8] c"setpid\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35814, i16 18433, i16 0, [16 x i8] c"wps_start\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35815, i16 18433, i16 0, [16 x i8] c"chplan\00\00\00\00\00\00\00\00\00\00" }], [32 x i8] zeroinitializer }, align 32
@r871x_handlers_def = dso_local global { %struct.iw_handler_def, [40 x i8] } { %struct.iw_handler_def { ptr @r8711_handlers, i16 56, i16 8, i16 8, ptr @r8711_private_handler, ptr @r8711_private_args, ptr @r871x_get_wireless_stats }, [40 x i8] zeroinitializer }, align 32
@__const.r871x_set_wpa_ie.wps_oui = private unnamed_addr constant [4 x i8] c"\00P\F2\04", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"r8712u: SET WPS_IE\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"r8712u: SET WPS_IE, wps_phase==true\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WEP\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"r8712u: %s: crypt.alg = WEP\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.wpa_set_encryption = private unnamed_addr constant [19 x i8] c"wpa_set_encryption\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TKIP\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IEEE 802.11bn\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IEEE 802.11b\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IEEE 802.11bgn\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IEEE 802.11bg\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IEEE 802.11gn\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IEEE 802.11g\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unassociated\00", [19 x i8] zeroinitializer }, align 32
@ieee80211_wlan_frequencies = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 2412, i32 2417, i32 2422, i32 2427, i32 2432, i32 2437, i32 2442, i32 2447, i32 2452, i32 2457, i32 2462, i32 2467, i32 2472, i32 2484], [40 x i8] zeroinitializer }, align 32
@rtl8180_rates = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1000000, i32 2000000, i32 5500000, i32 11000000, i32 6000000, i32 9000000, i32 12000000, i32 18000000, i32 24000000, i32 36000000, i32 48000000, i32 54000000], [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RSSI\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s rssi %d\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LINKSPEED\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LINKSPEED %d\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MACADDR\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MACADDR = %pM\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SCAN-ACTIVE\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SCAN-PASSIVE\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCE-E\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCE-D\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"r8712u: %s: unknown Command %s.\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.r871x_wx_set_priv = private unnamed_addr constant [18 x i8] c"r871x_wx_set_priv\00", align 1
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"In %s: driver_stopped=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.r8711_wx_set_scan = private unnamed_addr constant [18 x i8] c"r8711_wx_set_scan\00", align 1
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"r8712u: %s: EncryptionDisabled\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.r8711_wx_set_enc = private unnamed_addr constant [17 x i8] c"r8711_wx_set_enc\00", align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"r8712u: %s: IW_ENCODE_OPEN\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"r8712u: %s: IW_ENCODE_RESTRICTED\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CCMP\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"r8712u: %s: BSSID exists in the PMKList.\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.r871x_wx_set_pmkid = private unnamed_addr constant [19 x i8] c"r871x_wx_set_pmkid\00", align 1
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"r8712u: %s: Use the new entry index = %d for this PMKID.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"r8712u: %s: unknown Command\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/staging/rtl8712/rtl871x_ioctl_linux.c\00", [50 x i8] zeroinitializer }, align 32
@mp_ioctl_hdl = internal constant { [35 x %struct.mp_ioctl_handler], [124 x i8] } { [35 x %struct.mp_ioctl_handler] [%struct.mp_ioctl_handler { i32 4, ptr @oid_rt_pro_start_test_hdl, i32 -8290302 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_pro_stop_test_hdl, i32 -8290301 }, %struct.mp_ioctl_handler { i32 12, ptr @oid_rt_pro_read_register_hdl, i32 -7925503 }, %struct.mp_ioctl_handler { i32 12, ptr @oid_rt_pro_write_register_hdl, i32 -7925502 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_pro_set_channel_direct_call_hdl, i32 -8290296 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_pro_set_tx_power_control_hdl, i32 -8290287 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_pro_set_data_rate_hdl, i32 -8290303 }, %struct.mp_ioctl_handler { i32 8, ptr @oid_rt_pro_read_bb_reg_hdl, i32 -8288382 }, %struct.mp_ioctl_handler { i32 8, ptr @oid_rt_pro_write_bb_reg_hdl, i32 -8288383 }, %struct.mp_ioctl_handler { i32 12, ptr @oid_rt_pro_read_rf_reg_hdl, i32 -16707127 }, %struct.mp_ioctl_handler { i32 12, ptr @oid_rt_pro_write_rf_reg_hdl, i32 -16707128 }, %struct.mp_ioctl_handler { i32 4, ptr null, i32 0 }, %struct.mp_ioctl_handler { i32 0, ptr @mp_ioctl_xmit_packet_hdl, i32 0 }, %struct.mp_ioctl_handler { i32 8, ptr null, i32 0 }, %struct.mp_ioctl_handler { i32 8, ptr null, i32 0 }, %struct.mp_ioctl_handler { i32 8, ptr null, i32 0 }, %struct.mp_ioctl_handler { i32 1, ptr null, i32 0 }, %struct.mp_ioctl_handler { i32 4, ptr null, i32 0 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_pro_set_continuous_tx_hdl, i32 -8290293 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_set_bandwidth_hdl, i32 -7925239 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_set_rx_packet_type_hdl, i32 -7925237 }, %struct.mp_ioctl_handler { i32 0, ptr @oid_rt_reset_phy_rx_packet_count_hdl, i32 -7925231 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_get_phy_rx_packet_received_hdl, i32 -7925230 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_get_phy_rx_packet_crc32_error_hdl, i32 -7925229 }, %struct.mp_ioctl_handler { i32 1, ptr @oid_rt_set_power_down_hdl, i32 -7925228 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_get_thermal_meter_hdl, i32 -7925232 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_get_power_mode_hdl, i32 -7925227 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_pro_efuse_hdl, i32 -7925226 }, %struct.mp_ioctl_handler { i32 128, ptr @oid_rt_pro_efuse_map_hdl, i32 -7925225 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_get_efuse_max_size_hdl, i32 -7925236 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_get_efuse_current_size_hdl, i32 -7925240 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_pro_set_single_carrier_tx_hdl, i32 -8290292 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_pro_set_carrier_suppression_tx_hdl, i32 -8290261 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_pro_set_single_tone_tx_hdl, i32 -8290237 }, %struct.mp_ioctl_handler { i32 4, ptr @oid_rt_pro_set_antenna_bb_hdl, i32 -8290290 }], [124 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"r8712u: %s: err!, subcode=%d, oid=%d, handler=%p\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.r871x_mp_ioctl_hdl = private unnamed_addr constant [19 x i8] c"r871x_mp_ioctl_hdl\00", align 1
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"r8712u: Invalid BSSID '%s'.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"r8712u: BSSID:%pM\0A\00", [45 x i8] zeroinitializer }, align 32
@switch.table.r871x_wx_set_enc_ext = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.35, ptr @.str.2, ptr @.str.4, ptr @.str.36], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.48 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [13 x i64] [i64 11, i64 16, i64 10, i64 20, i64 55, i64 60, i64 90, i64 110, i64 120, i64 180, i64 240, i64 360, i64 480]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 13]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"r8711_handlers\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 2191, i32 19 }
@___asan_gen_.63 = private unnamed_addr constant [22 x i8] c"r8711_private_handler\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 2285, i32 19 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"r8711_private_args\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 2252, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"r871x_handlers_def\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 2321, i32 23 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 570, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 581, i32 37 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 388, i32 33 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 389, i32 20 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 83, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 230, i32 6 }
@___asan_gen_.91 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 214, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 174, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 618, i32 7 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 621, i32 7 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 625, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 628, i32 7 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 632, i32 7 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 635, i32 7 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 638, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant [27 x i8] c"ieee80211_wlan_frequencies\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 49, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"rtl8180_rates\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 45, i32 18 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 929, i32 23 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 937, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 944, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 946, i32 30 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 958, i32 16 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 959, i32 30 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 962, i32 16 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 963, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 970, i32 30 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 977, i32 27 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 987, i32 27 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 998, i32 20 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1134, i32 20 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 144, i32 7 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1503, i32 20 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1524, i32 20 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1534, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1764, i32 14 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1773, i32 14 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 793, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 804, i32 21 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 836, i32 20 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1822, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [13 x i8] c"mp_ioctl_hdl\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [46 x i8] c"../drivers/staging/rtl8712/rtl871x_mp_ioctl.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 249, i32 32 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1916, i32 20 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1975, i32 21 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private constant [49 x i8] c"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1981, i32 20 }
@___asan_gen_.204 = private unnamed_addr constant [34 x i8] c"switch.table.r871x_wx_set_enc_ext\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @r8711_handlers, ptr @r8711_private_handler, ptr @r8711_private_args, ptr @r871x_handlers_def, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ieee80211_wlan_frequencies, ptr @rtl8180_rates, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @mp_ioctl_hdl, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @switch.table.r871x_wx_set_enc_ext], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8711_handlers to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8711_private_handler to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8711_private_args to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r871x_handlers_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_wlan_frequencies to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_rates to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp_ioctl_hdl to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r871x_wx_set_enc_ext to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_indicate_wx_assoc_event(ptr nocapture noundef readonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #19
  %0 = getelementptr inbounds i8, ptr %wrqu, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %wrqu, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %MacAddress = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %3 = call ptr @memcpy(ptr %sa_data, ptr %MacAddress, i32 6)
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 24
  %4 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetdev, align 8
  call void @wireless_send_event(ptr noundef %5, i32 noundef 35605, ptr noundef nonnull %wrqu, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_send_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_indicate_wx_disassoc_event(ptr nocapture noundef readonly %padapter) local_unnamed_addr #0 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #19
  %0 = getelementptr inbounds i8, ptr %wrqu, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %wrqu, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %3 = call ptr @memset(ptr %sa_data, i32 0, i32 6)
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 24
  %4 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetdev, align 8
  call void @wireless_send_event(ptr noundef %5, i32 noundef 35605, ptr noundef nonnull %wrqu, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r871x_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %rq, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 35838, i32 %cmd)
  %cond = icmp eq i32 %cmd, 35838
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %u = getelementptr inbounds %struct.iwreq, ptr %rq, i32 0, i32 1
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %length.i = getelementptr inbounds %struct.iwreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length.i, align 4
  %conv.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %1)
  %cmp.i = icmp ult i16 %1, 48
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call5.i = tail call ptr @memdup_user(ptr noundef nonnull %3, i32 noundef %conv.i) #19
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %call5.i to i32
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %call5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call5.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end9.i.if.end33.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb12.i
    i32 3, label %sw.bb17.i
    i32 4, label %sw.bb21.i
  ]

if.end9.i.if.end33.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33.i

sw.bb.i:                                          ; preds = %if.end9.i
  %u.i = getelementptr inbounds %struct.ieee_param, ptr %call5.i, i32 0, i32 2
  %8 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %u.i, align 4
  %value.i = getelementptr inbounds %struct.ieee_param, ptr %call5.i, i32 0, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value.i, align 4
  %12 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %9, label %sw.bb.i.if.end33.i_crit_edge [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb.i.land.lhs.true.i_crit_edge
    i8 3, label %sw.bb.i.land.lhs.true.i_crit_edge1
    i8 4, label %sw.bb.i.land.lhs.true.i_crit_edge2
    i8 5, label %sw.bb9.i.i
    i8 6, label %sw.bb.i.land.lhs.true.i_crit_edge3
    i8 7, label %sw.bb.i.land.lhs.true.i_crit_edge4
  ]

sw.bb.i.land.lhs.true.i_crit_edge4:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

sw.bb.i.land.lhs.true.i_crit_edge3:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

sw.bb.i.land.lhs.true.i_crit_edge2:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

sw.bb.i.land.lhs.true.i_crit_edge1:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

sw.bb.i.land.lhs.true.i_crit_edge:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

sw.bb.i.if.end33.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33.i

sw.bb.i.i:                                        ; preds = %sw.bb.i
  %securitypriv.i.i = getelementptr i8, ptr %dev, i32 7104
  %13 = ptrtoint ptr %securitypriv.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %securitypriv.i.i, align 8
  %trunc.i.i = trunc i32 %11 to i8
  %14 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %trunc.i.i, label %sw.bb.i.i.land.lhs.true.i_crit_edge [
    i8 1, label %sw.bb.i.i.sw.epilog11.sink.split.i.i_crit_edge
    i8 2, label %sw.bb4.i.i
  ]

sw.bb.i.i.sw.epilog11.sink.split.i.i_crit_edge:   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog11.sink.split.i.i

sw.bb.i.i.land.lhs.true.i_crit_edge:              ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

sw.bb4.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog11.sink.split.i.i

sw.bb9.i.i:                                       ; preds = %sw.bb.i
  %and1.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  %15 = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %.not.i.i.i = icmp eq i32 %15, 3
  br i1 %.not.i.i.i, label %if.then.i.i57.i, label %if.else.i.i58.i

if.then.i.i57.i:                                  ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %securitypriv.i.i.i = getelementptr i8, ptr %dev, i32 7104
  %ndisencryptstatus.i.i.i = getelementptr i8, ptr %dev, i32 7912
  %16 = ptrtoint ptr %ndisencryptstatus.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ndisencryptstatus.i.i.i, align 8
  %ndisauthtype.i.i.i = getelementptr i8, ptr %dev, i32 7908
  %17 = ptrtoint ptr %ndisauthtype.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %ndisauthtype.i.i.i, align 4
  %18 = ptrtoint ptr %securitypriv.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %securitypriv.i.i.i, align 8
  br label %land.lhs.true.i

if.else.i.i58.i:                                  ; preds = %sw.bb9.i.i
  %and.i.i.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else14.i.i.i, label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %if.else.i.i58.i
  call void @__sanitizer_cov_trace_pc() #21
  %securitypriv8.i.i.i = getelementptr i8, ptr %dev, i32 7104
  %ndisencryptstatus9.i.i.i = getelementptr i8, ptr %dev, i32 7912
  %19 = ptrtoint ptr %ndisencryptstatus9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ndisencryptstatus9.i.i.i, align 8
  %ndisauthtype11.i.i.i = getelementptr i8, ptr %dev, i32 7908
  %20 = ptrtoint ptr %ndisauthtype11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %ndisauthtype11.i.i.i, align 4
  %21 = ptrtoint ptr %securitypriv8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %securitypriv8.i.i.i, align 8
  br label %land.lhs.true.i

if.else14.i.i.i:                                  ; preds = %if.else.i.i58.i
  br i1 %tobool2.not.i.i.i, label %if.else14.i.i.i.if.end33.i_crit_edge, label %if.then17.i.i.i

if.else14.i.i.i.if.end33.i_crit_edge:             ; preds = %if.else14.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33.i

if.then17.i.i.i:                                  ; preds = %if.else14.i.i.i
  %ndisauthtype19.i.i.i = getelementptr i8, ptr %dev, i32 7908
  %22 = ptrtoint ptr %ndisauthtype19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ndisauthtype19.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp.i.i59.i = icmp ult i32 %23, 4
  br i1 %cmp.i.i59.i, label %if.then20.i.i.i, label %if.then17.i.i.i.land.lhs.true.i_crit_edge

if.then17.i.i.i.land.lhs.true.i_crit_edge:        ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

if.then20.i.i.i:                                  ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %securitypriv18.i.i.i = getelementptr i8, ptr %dev, i32 7104
  %24 = ptrtoint ptr %ndisauthtype19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ndisauthtype19.i.i.i, align 4
  %25 = ptrtoint ptr %securitypriv18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %securitypriv18.i.i.i, align 8
  br label %land.lhs.true.i

sw.epilog11.sink.split.i.i:                       ; preds = %sw.bb4.i.i, %sw.bb.i.i.sw.epilog11.sink.split.i.i_crit_edge
  %.sink18.i.i = phi i32 [ 7, %sw.bb4.i.i ], [ 4, %sw.bb.i.i.sw.epilog11.sink.split.i.i_crit_edge ]
  %.sink.i.i = phi i32 [ 6, %sw.bb4.i.i ], [ 4, %sw.bb.i.i.sw.epilog11.sink.split.i.i_crit_edge ]
  %ndisauthtype.i.i = getelementptr i8, ptr %dev, i32 7908
  %26 = ptrtoint ptr %ndisauthtype.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink18.i.i, ptr %ndisauthtype.i.i, align 4
  %ndisencryptstatus.i.i = getelementptr i8, ptr %dev, i32 7912
  %27 = ptrtoint ptr %ndisencryptstatus.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink.i.i, ptr %ndisencryptstatus.i.i, align 8
  br label %land.lhs.true.i

sw.bb12.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  %u13.i = getelementptr inbounds %struct.ieee_param, ptr %call5.i, i32 0, i32 2
  %data.i = getelementptr inbounds %struct.ieee_param, ptr %call5.i, i32 1
  %28 = ptrtoint ptr %u13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %u13.i, align 4
  %conv15.i = trunc i32 %29 to i16
  %call16.i = tail call fastcc i32 @r871x_set_wpa_ie(ptr noundef %add.ptr.i.i, ptr noundef %data.i, i16 noundef zeroext %conv15.i) #19
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %length.i, align 4
  %conv19.i = zext i16 %31 to i32
  %call20.i = tail call fastcc i32 @wpa_set_encryption(ptr noundef %dev, ptr noundef %call5.i, i32 noundef %conv19.i) #19
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %if.end9.i
  %u22.i = getelementptr inbounds %struct.ieee_param, ptr %call5.i, i32 0, i32 2
  %32 = ptrtoint ptr %u22.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %u22.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %33, label %sw.bb21.i.if.end33.i_crit_edge [
    i32 1, label %sw.bb.i60.i
    i32 2, label %sw.bb2.i.i
  ]

sw.bb21.i.if.end33.i_crit_edge:                   ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33.i

sw.bb.i60.i:                                      ; preds = %sw.bb21.i
  %call1.i.i = tail call zeroext i8 @r8712_set_802_11_disassociate(ptr noundef %add.ptr.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.i.i)
  %tobool.not.i.i = icmp eq i8 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.i60.i.if.end33.i_crit_edge, label %sw.bb.i60.i.land.lhs.true.i_crit_edge

sw.bb.i60.i.land.lhs.true.i_crit_edge:            ; preds = %sw.bb.i60.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

sw.bb.i60.i.if.end33.i_crit_edge:                 ; preds = %sw.bb.i60.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33.i

sw.bb2.i.i:                                       ; preds = %sw.bb21.i
  %call3.i.i = tail call zeroext i8 @r8712_set_802_11_disassociate(ptr noundef %add.ptr.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call3.i.i)
  %tobool4.not.i.i = icmp eq i8 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %sw.bb2.i.i.if.end33.i_crit_edge, label %sw.bb2.i.i.land.lhs.true.i_crit_edge

sw.bb2.i.i.land.lhs.true.i_crit_edge:             ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

sw.bb2.i.i.if.end33.i_crit_edge:                  ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33.i

sw.epilog.i:                                      ; preds = %sw.bb17.i, %sw.bb12.i
  %ret.0.i = phi i32 [ %call20.i, %sw.bb17.i ], [ %call16.i, %sw.bb12.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp25.i = icmp eq i32 %ret.0.i, 0
  br i1 %cmp25.i, label %sw.epilog.i.land.lhs.true.i_crit_edge, label %sw.epilog.i.if.end33.i_crit_edge

sw.epilog.i.if.end33.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end33.i

sw.epilog.i.land.lhs.true.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i.land.lhs.true.i_crit_edge, %sw.bb2.i.i.land.lhs.true.i_crit_edge, %sw.bb.i60.i.land.lhs.true.i_crit_edge, %sw.epilog11.sink.split.i.i, %if.then20.i.i.i, %if.then17.i.i.i.land.lhs.true.i_crit_edge, %if.then7.i.i.i, %if.then.i.i57.i, %sw.bb.i.i.land.lhs.true.i_crit_edge, %sw.bb.i.land.lhs.true.i_crit_edge, %sw.bb.i.land.lhs.true.i_crit_edge1, %sw.bb.i.land.lhs.true.i_crit_edge2, %sw.bb.i.land.lhs.true.i_crit_edge3, %sw.bb.i.land.lhs.true.i_crit_edge4
  %35 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %u, align 4
  %37 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %length.i, align 4
  %conv29.i = zext i16 %38 to i32
  tail call void @__check_object_size(ptr noundef %call5.i, i32 noundef %conv29.i, i1 noundef zeroext true) #19
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #19
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i.i, label %land.lhs.true.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

land.lhs.true.i.copy_to_user.exit.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %36, i32 %conv29.i, i32 -1226833920) #22, !srcloc !127
  %asmresult.i.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %call5.i, i32 noundef %conv29.i) #19
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %36, ptr noundef %call5.i, i32 noundef %conv29.i) #19
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %land.lhs.true.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %conv29.i, %land.lhs.true.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %conv29.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool31.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i = select i1 %tobool31.not.i, i32 0, i32 -14
  br label %if.end33.i

if.end33.i:                                       ; preds = %copy_to_user.exit.i, %sw.epilog.i.if.end33.i_crit_edge, %sw.bb2.i.i.if.end33.i_crit_edge, %sw.bb.i60.i.if.end33.i_crit_edge, %sw.bb21.i.if.end33.i_crit_edge, %if.else14.i.i.i.if.end33.i_crit_edge, %sw.bb.i.if.end33.i_crit_edge, %if.end9.i.if.end33.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %sw.epilog.i.if.end33.i_crit_edge ], [ -95, %sw.bb21.i.if.end33.i_crit_edge ], [ -1, %sw.bb2.i.i.if.end33.i_crit_edge ], [ -1, %sw.bb.i60.i.if.end33.i_crit_edge ], [ -22, %if.else14.i.i.i.if.end33.i_crit_edge ], [ -95, %sw.bb.i.if.end33.i_crit_edge ], [ -95, %if.end9.i.if.end33.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  tail call void @kfree(ptr noundef %call5.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end33.i, %if.then7.i, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %4, %if.then7.i ], [ %ret.1.i, %if.end33.i ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @r871x_get_wireless_stats(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %fw_rssi = getelementptr i8, ptr %dev, i32 5779
  %2 = ptrtoint ptr %fw_rssi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_rssi, align 1
  %signal = getelementptr i8, ptr %dev, i32 5777
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %signal, align 1
  %noise10 = getelementptr i8, ptr %dev, i32 5778
  %6 = ptrtoint ptr %noise10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %noise10, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink35 = phi i8 [ %5, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %.sink34 = phi i8 [ %3, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %.sink = phi i8 [ %7, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %8 = getelementptr i8, ptr %dev, i32 16070
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink35, ptr %8, align 2
  %10 = getelementptr i8, ptr %dev, i32 16071
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink34, ptr %10, align 1
  %12 = getelementptr i8, ptr %dev, i32 16072
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %12, align 2
  %iwstats = getelementptr i8, ptr %dev, i32 16068
  %updated = getelementptr i8, ptr %dev, i32 16073
  %14 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %updated, align 1
  ret ptr %iwstats
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r871x_set_wpa_ie(ptr noundef %padapter, ptr noundef %pie, i16 noundef zeroext %ielen) unnamed_addr #0 align 64 {
entry:
  %group_cipher = alloca i32, align 4
  %pairwise_cipher = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_cipher) #19
  %0 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %group_cipher, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pairwise_cipher) #19
  %1 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pairwise_cipher, align 4
  %conv = zext i16 %ielen to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %ielen)
  %cmp = icmp ugt i16 %ielen, 128
  %tobool.not = icmp eq ptr %pie, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ielen)
  %tobool2.not = icmp eq i16 %ielen, 0
  br i1 %tobool2.not, label %if.end.exit_crit_edge, label %if.then3

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %exit

if.then3:                                         ; preds = %if.end
  %call = tail call ptr @kmemdup(ptr noundef nonnull %pie, i32 noundef %conv, i32 noundef 2592) #19
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %ielen)
  %cmp9 = icmp ult i16 %ielen, 4
  br i1 %cmp9, label %if.end7.exit_crit_edge, label %if.end12

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %exit

if.end12:                                         ; preds = %if.end7
  %call14 = call i32 @r8712_parse_wpa_ie(ptr noundef nonnull %call, i32 noundef %conv, ptr noundef nonnull %group_cipher, ptr noundef nonnull %pairwise_cipher) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  %securitypriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8
  %2 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %securitypriv, align 8
  %ndisauthtype = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 24
  %3 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %ndisauthtype, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end12.if.end19_crit_edge
  %call21 = call i32 @r8712_parse_wpa2_ie(ptr noundef nonnull %call, i32 noundef %conv, ptr noundef nonnull %group_cipher, ptr noundef nonnull %pairwise_cipher) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end19.if.end29_crit_edge

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  %securitypriv25 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8
  %4 = ptrtoint ptr %securitypriv25 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %securitypriv25, align 8
  %ndisauthtype28 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 24
  %5 = ptrtoint ptr %ndisauthtype28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %ndisauthtype28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end19.if.end29_crit_edge
  %6 = ptrtoint ptr %group_cipher to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %group_cipher, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %7, label %if.end29.sw.epilog_crit_edge [
    i32 1, label %if.end29.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb32
    i32 8, label %sw.bb37
    i32 16, label %sw.bb42
    i32 4, label %sw.bb47
  ]

if.end29.sw.epilog.sink.split_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split

sw.bb37:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split

sw.bb42:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split

sw.bb47:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb47, %sw.bb42, %sw.bb37, %sw.bb32, %if.end29.sw.epilog.sink.split_crit_edge
  %.sink197 = phi i32 [ 5, %sw.bb47 ], [ 4, %sw.bb42 ], [ 2, %sw.bb37 ], [ 1, %sw.bb32 ], [ 0, %if.end29.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 0, %sw.bb47 ], [ 6, %sw.bb42 ], [ 4, %sw.bb37 ], [ 0, %sw.bb32 ], [ %7, %if.end29.sw.epilog.sink.split_crit_edge ]
  %XGrpPrivacy49 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 5
  %9 = ptrtoint ptr %XGrpPrivacy49 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink197, ptr %XGrpPrivacy49, align 4
  %ndisencryptstatus51 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 25
  %10 = ptrtoint ptr %ndisencryptstatus51 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %ndisencryptstatus51, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end29.sw.epilog_crit_edge
  %11 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pairwise_cipher, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %12, label %sw.epilog.while.body.preheader_crit_edge [
    i32 1, label %sw.epilog.while.body.preheader.sink.split_crit_edge
    i32 2, label %sw.bb56
    i32 8, label %sw.bb61
    i32 16, label %sw.bb66
    i32 4, label %sw.bb71
  ]

sw.epilog.while.body.preheader.sink.split_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.preheader.sink.split

sw.epilog.while.body.preheader_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.preheader

sw.bb56:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.preheader.sink.split

sw.bb61:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.preheader.sink.split

sw.bb66:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.preheader.sink.split

sw.bb71:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.preheader.sink.split

while.body.preheader.sink.split:                  ; preds = %sw.bb71, %sw.bb66, %sw.bb61, %sw.bb56, %sw.epilog.while.body.preheader.sink.split_crit_edge
  %.sink199 = phi i32 [ 1, %sw.bb56 ], [ 2, %sw.bb61 ], [ 4, %sw.bb66 ], [ 5, %sw.bb71 ], [ 0, %sw.epilog.while.body.preheader.sink.split_crit_edge ]
  %.sink198 = phi i32 [ 0, %sw.bb56 ], [ 4, %sw.bb61 ], [ 6, %sw.bb66 ], [ 0, %sw.bb71 ], [ %12, %sw.epilog.while.body.preheader.sink.split_crit_edge ]
  %PrivacyAlgrthm = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink199, ptr %PrivacyAlgrthm, align 4
  %ndisencryptstatus55 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 25
  %15 = ptrtoint ptr %ndisencryptstatus55 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink198, ptr %ndisencryptstatus55, align 8
  br label %while.body.preheader

while.body.preheader:                             ; preds = %while.body.preheader.sink.split, %sw.epilog.while.body.preheader_crit_edge
  %wps_phase = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 13
  %16 = ptrtoint ptr %wps_phase to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %wps_phase, align 1
  br label %while.body

while.body:                                       ; preds = %if.end120.while.body_crit_edge, %while.body.preheader
  %conv78191 = phi i32 [ %conv78, %if.end120.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %arrayidx = getelementptr i8, ptr %call, i32 %conv78191
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %18)
  %cmp83 = icmp eq i8 %18, -35
  %add = add nuw nsw i32 %conv78191, 2
  br i1 %cmp83, label %land.lhs.true, label %while.body.if.end120_crit_edge

while.body.if.end120_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end120

land.lhs.true:                                    ; preds = %while.body
  %arrayidx86 = getelementptr i8, ptr %call, i32 %add
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx86, ptr noundef nonnull dereferenceable(4) @__const.r871x_set_wpa_ie.wps_oui, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool88.not = icmp eq i32 %bcmp, 0
  br i1 %tobool88.not, label %if.then89, label %land.lhs.true.if.end120_crit_edge

land.lhs.true.if.end120_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end120

if.then89:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx.le = getelementptr i8, ptr %call, i32 %conv78191
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 24
  %19 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pnetdev, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %20, ptr noundef nonnull @.str) #24
  %add91 = add nuw nsw i32 %conv78191, 1
  %arrayidx92 = getelementptr i8, ptr %call, i32 %add91
  %21 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %22 to i32
  %add94 = add nuw nsw i32 %conv93, 2
  %wps_ie_len = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 15
  %23 = ptrtoint ptr %wps_ie_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add94, ptr %wps_ie_len, align 4
  %wps_ie = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 14
  %24 = call ptr @memcpy(ptr %wps_ie, ptr %arrayidx.le, i32 %add94)
  %25 = ptrtoint ptr %wps_phase to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %wps_phase, align 1
  %26 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pnetdev, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.1) #24
  br label %exit

if.end120:                                        ; preds = %land.lhs.true.if.end120_crit_edge, %while.body.if.end120_crit_edge
  %add122 = add nuw nsw i32 %conv78191, 1
  %arrayidx123 = getelementptr i8, ptr %call, i32 %add122
  %28 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %29 to i32
  %add127 = add nuw nsw i32 %add, %conv124
  %conv78 = and i32 %add127, 65535
  %cmp80 = icmp ult i32 %conv78, %conv
  br i1 %cmp80, label %if.end120.while.body_crit_edge, label %if.end120.exit_crit_edge

if.end120.exit_crit_edge:                         ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #21
  br label %exit

if.end120.while.body_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

exit:                                             ; preds = %if.end120.exit_crit_edge, %if.then89, %if.end7.exit_crit_edge, %if.end.exit_crit_edge
  %buf.0 = phi ptr [ null, %if.end.exit_crit_edge ], [ %call, %if.end7.exit_crit_edge ], [ %call, %if.then89 ], [ %call, %if.end120.exit_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.end.exit_crit_edge ], [ -22, %if.end7.exit_crit_edge ], [ 0, %if.then89 ], [ 0, %if.end120.exit_crit_edge ]
  call void @kfree(ptr noundef %buf.0) #19
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pairwise_cipher) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_cipher) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wpa_set_encryption(ptr noundef %dev, ptr nocapture noundef %param, i32 noundef %param_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %securitypriv = getelementptr i8, ptr %dev, i32 7104
  %u = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 2
  %err = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 2, i32 0, i32 1, i32 16
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %arrayidx = getelementptr %struct.ieee_param, ptr %param, i32 0, i32 2, i32 0, i32 1, i32 11
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx, align 1
  %key = getelementptr inbounds %struct.ieee_param, ptr %param, i32 1
  %key_len = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 2, i32 0, i32 1, i32 30
  %2 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %key_len, align 2
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %param_len)
  %cmp.not = icmp eq i32 %add, %param_len
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %sta_addr = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 1
  %4 = ptrtoint ptr %sta_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sta_addr, align 2
  %add.ptr1.i = getelementptr %struct.ieee_param, ptr %param, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %7, %5
  %add.ptr3.i = getelementptr %struct.ieee_param, ptr %param, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %idx = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 2, i32 0, i32 1, i32 20
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp11 = icmp ugt i8 %11, 3
  br i1 %cmp11, label %if.then13, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %idx, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end8.if.end16_crit_edge
  %call20 = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(4) @.str.2) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end81

if.then23:                                        ; preds = %if.end16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.wpa_set_encryption) #24
  %ndisencryptstatus = getelementptr i8, ptr %dev, i32 7912
  %13 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ndisencryptstatus, align 8
  %PrivacyAlgrthm = getelementptr i8, ptr %dev, i32 7108
  %14 = ptrtoint ptr %PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %PrivacyAlgrthm, align 4
  %XGrpPrivacy = getelementptr i8, ptr %dev, i32 7196
  %15 = ptrtoint ptr %XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %XGrpPrivacy, align 4
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %idx, align 4
  %18 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %key_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp33 = icmp ugt i8 %17, 3
  %narrow = select i1 %cmp33, i8 0, i8 %17
  %spec.store.select = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp37 = icmp eq i16 %19, 0
  br i1 %cmp37, label %if.then23.cleanup_crit_edge, label %if.end40

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end40:                                         ; preds = %if.then23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 2848, i32 noundef 28) #25
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end40.cleanup_crit_edge, label %if.end45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %19)
  %cmp41 = icmp ult i16 %19, 6
  %cond = select i1 %cmp41, i32 5, i32 13
  %KeyLength = getelementptr inbounds %struct.NDIS_802_11_WEP, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %KeyLength to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond, ptr %KeyLength, align 8
  %add46 = add nuw nsw i32 %cond, 12
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add46, ptr %call7.i.i, align 8
  br i1 %cmp41, label %if.end45.if.end54_crit_edge, label %if.then49

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end54

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21
  %23 = ptrtoint ptr %PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %PrivacyAlgrthm, align 4
  %24 = ptrtoint ptr %XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %XGrpPrivacy, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.end45.if.end54_crit_edge
  %KeyIndex = getelementptr inbounds %struct.NDIS_802_11_WEP, ptr %call7.i.i, i32 0, i32 1
  %or = or i32 %spec.store.select, -2147483648
  %25 = ptrtoint ptr %KeyIndex to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or, ptr %KeyIndex, align 4
  %KeyMaterial = getelementptr inbounds %struct.NDIS_802_11_WEP, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %KeyLength to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %KeyLength, align 8
  %28 = call ptr @memcpy(ptr %KeyMaterial, ptr %key, i32 %27)
  %set_tx = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 2, i32 0, i32 1, i32 12
  %29 = ptrtoint ptr %set_tx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %set_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool62.not = icmp eq i8 %30, 0
  br i1 %tobool62.not, label %if.end71, label %if.then63

if.then63:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #21
  %call64 = tail call i32 @r8712_set_802_11_add_wep(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  %spec.select = select i1 %tobool65.not, i32 0, i32 -95
  br label %exit

if.end71:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx72 = getelementptr %struct._adapter, ptr %add.ptr.i, i32 0, i32 8, i32 3, i32 %spec.store.select
  %31 = call ptr @memmove(ptr %arrayidx72, ptr %key, i32 %27)
  %arrayidx78 = getelementptr %struct._adapter, ptr %add.ptr.i, i32 0, i32 8, i32 4, i32 %spec.store.select
  %32 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %27, ptr %arrayidx78, align 4
  %call79 = tail call i32 @r8712_set_key(ptr noundef %add.ptr.i, ptr noundef %securitypriv, i32 noundef %spec.store.select) #19
  br label %exit

if.end81:                                         ; preds = %if.end16
  %33 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %securitypriv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp83 = icmp eq i32 %34, 2
  br i1 %cmp83, label %if.then85, label %if.end81.exit_crit_edge

if.end81.exit_crit_edge:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #21
  br label %exit

if.then85:                                        ; preds = %if.end81
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  %35 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %36, 65544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.then85.exit_crit_edge, label %if.then89

if.then85.exit_crit_edge:                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #21
  br label %exit

if.then89:                                        ; preds = %if.then85
  %stapriv = getelementptr i8, ptr %dev, i32 6604
  %MacAddress.i = getelementptr i8, ptr %dev, i32 2624
  %call91 = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress.i) #19
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.then89.if.end111_crit_edge, label %if.then93

if.then89.if.end111_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end111

if.then93:                                        ; preds = %if.then89
  %ieee8021x_blocked = getelementptr inbounds %struct.sta_info, ptr %call91, i32 0, i32 10
  %37 = ptrtoint ptr %ieee8021x_blocked to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %ieee8021x_blocked, align 8
  %ndisencryptstatus94 = getelementptr i8, ptr %dev, i32 7912
  %38 = ptrtoint ptr %ndisencryptstatus94 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ndisencryptstatus94, align 8
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %39, label %if.then93.if.end102_crit_edge [
    i32 4, label %if.then93.if.then100_crit_edge
    i32 6, label %if.then93.if.then100_crit_edge207
  ]

if.then93.if.then100_crit_edge207:                ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then100

if.then93.if.then100_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then100

if.then93.if.end102_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end102

if.then100:                                       ; preds = %if.then93.if.then100_crit_edge, %if.then93.if.then100_crit_edge207
  %PrivacyAlgrthm101 = getelementptr i8, ptr %dev, i32 7108
  %41 = ptrtoint ptr %PrivacyAlgrthm101 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %PrivacyAlgrthm101, align 4
  %XPrivacy = getelementptr inbounds %struct.sta_info, ptr %call91, i32 0, i32 11
  %43 = ptrtoint ptr %XPrivacy to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %XPrivacy, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.then93.if.end102_crit_edge
  %set_tx104 = getelementptr inbounds %struct.ieee_param, ptr %param, i32 0, i32 2, i32 0, i32 1, i32 12
  %44 = ptrtoint ptr %set_tx104 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %set_tx104, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp106 = icmp eq i8 %45, 1
  br i1 %cmp106, label %if.then108, label %if.else109

if.then108:                                       ; preds = %if.end102
  %x_UncstKey.i = getelementptr inbounds %struct.sta_info, ptr %call91, i32 0, i32 14
  %46 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %key_len, align 2
  %48 = tail call i16 @llvm.umin.i16(i16 %47, i16 16) #19
  %spec.select.i = zext i16 %48 to i32
  %49 = call ptr @memcpy(ptr %x_UncstKey.i, ptr %key, i32 %spec.select.i)
  %call.i = tail call i32 @strcmp(ptr noundef %u, ptr noundef nonnull dereferenceable(5) @.str.4) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp eq i32 %call.i, 0
  br i1 %cmp9.i, label %if.then.i, label %if.then108.handle_pairwise_key.exit_crit_edge

if.then108.handle_pairwise_key.exit_crit_edge:    ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #21
  br label %handle_pairwise_key.exit

if.then.i:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #21
  %tkiptxmickey.i = getelementptr inbounds %struct.sta_info, ptr %call91, i32 0, i32 12
  %arrayidx.i = getelementptr %struct.ieee_param, ptr %param, i32 1, i32 2, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %arrayidx.i, align 4
  %52 = ptrtoint ptr %tkiptxmickey.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %tkiptxmickey.i, align 8
  %tkiprxmickey.i = getelementptr inbounds %struct.sta_info, ptr %call91, i32 0, i32 13
  %arrayidx17.i = getelementptr %struct.ieee_param, ptr %param, i32 1, i32 2, i32 0, i32 1, i32 8
  %53 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %arrayidx17.i, align 4
  %55 = ptrtoint ptr %tkiprxmickey.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %tkiprxmickey.i, align 8
  %busetkipkey.i = getelementptr i8, ptr %dev, i32 7841
  %56 = ptrtoint ptr %busetkipkey.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %busetkipkey.i, align 1
  %tkip_timer.i = getelementptr i8, ptr %dev, i32 7844
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %57, 5
  %call20.i = tail call i32 @mod_timer(ptr noundef %tkip_timer.i, i32 noundef %add.i) #19
  br label %handle_pairwise_key.exit

handle_pairwise_key.exit:                         ; preds = %if.then.i, %if.then108.handle_pairwise_key.exit_crit_edge
  tail call void @r8712_setstakey_cmd(ptr noundef %add.ptr.i, ptr noundef nonnull %call91, i8 noundef zeroext 1) #19
  br label %if.end111

if.else109:                                       ; preds = %if.end102
  %58 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %idx, align 4
  %60 = add i8 %59, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %60)
  %61 = icmp ult i8 %60, 2
  br i1 %61, label %if.then.i205, label %if.else109.if.end111_crit_edge

if.else109.if.end111_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end111

if.then.i205:                                     ; preds = %if.else109
  %conv.i = zext i8 %59 to i32
  %XGrprxmickey.i = getelementptr i8, ptr %dev, i32 7268
  %XGrptxmickey.i = getelementptr i8, ptr %dev, i32 7236
  %XGrpKey.i = getelementptr i8, ptr %dev, i32 7204
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i200 = getelementptr %union.Keytype, ptr %XGrpKey.i, i32 %sub.i
  %62 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %key_len, align 2
  %64 = tail call i16 @llvm.umin.i16(i16 %63, i16 16) #19
  %spec.select.i203 = zext i16 %64 to i32
  %65 = call ptr @memcpy(ptr %arrayidx.i200, ptr %key, i32 %spec.select.i203)
  %66 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %idx, align 4
  %conv26.i = zext i8 %67 to i32
  %sub27.i = add nsw i32 %conv26.i, -1
  %arrayidx28.i = getelementptr %union.Keytype, ptr %XGrptxmickey.i, i32 %sub27.i
  %arrayidx32.i = getelementptr %struct.ieee_param, ptr %param, i32 1, i32 2, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %arrayidx32.i, align 4
  %70 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 %69, ptr %arrayidx28.i, align 4
  %71 = load i8, ptr %idx, align 4
  %conv35.i = zext i8 %71 to i32
  %sub36.i = add nsw i32 %conv35.i, -1
  %arrayidx37.i = getelementptr %union.Keytype, ptr %XGrprxmickey.i, i32 %sub36.i
  %arrayidx41.i = getelementptr %struct.ieee_param, ptr %param, i32 1, i32 2, i32 0, i32 1, i32 8
  %72 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %73 = load i64, ptr %arrayidx41.i, align 4
  %74 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 %73, ptr %arrayidx37.i, align 4
  %binstallGrpkey.i = getelementptr i8, ptr %dev, i32 7840
  %75 = ptrtoint ptr %binstallGrpkey.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %binstallGrpkey.i, align 8
  %76 = load i8, ptr %idx, align 4
  %conv46.i = zext i8 %76 to i32
  %call.i204 = tail call i32 @r8712_set_key(ptr noundef %add.ptr.i, ptr noundef %securitypriv, i32 noundef %conv46.i) #19
  %power_mgnt.i = getelementptr i8, ptr %dev, i32 11809
  %77 = ptrtoint ptr %power_mgnt.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %power_mgnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp48.not.i = icmp eq i8 %78, 0
  br i1 %cmp48.not.i, label %if.then.i205.if.end111_crit_edge, label %if.then50.i

if.then.i205.if.end111_crit_edge:                 ; preds = %if.then.i205
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end111

if.then50.i:                                      ; preds = %if.then.i205
  %conv47.i = zext i8 %78 to i32
  %pwr_mode.i = getelementptr i8, ptr %dev, i32 13844
  %79 = ptrtoint ptr %pwr_mode.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pwr_mode.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %conv47.i)
  %cmp54.not.i = icmp eq i32 %80, %conv47.i
  br i1 %cmp54.not.i, label %if.then50.i.if.end111_crit_edge, label %if.then56.i

if.then50.i.if.end111_crit_edge:                  ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end111

if.then56.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #21
  %dhcp_timer.i = getelementptr i8, ptr %dev, i32 3672
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %add.i206 = add i32 %81, 6000
  %call58.i = tail call i32 @mod_timer(ptr noundef %dhcp_timer.i, i32 noundef %add.i206) #19
  br label %if.end111

if.end111:                                        ; preds = %if.then56.i, %if.then50.i.if.end111_crit_edge, %if.then.i205.if.end111_crit_edge, %if.else109.if.end111_crit_edge, %handle_pairwise_key.exit, %if.then89.if.end111_crit_edge
  %call112 = tail call ptr @r8712_get_bcmc_stainfo(ptr noundef %add.ptr.i) #19
  %tobool113.not = icmp eq ptr %call112, null
  br i1 %tobool113.not, label %if.end111.exit_crit_edge, label %if.then114

if.end111.exit_crit_edge:                         ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #21
  br label %exit

if.then114:                                       ; preds = %if.end111
  %ieee8021x_blocked115 = getelementptr inbounds %struct.sta_info, ptr %call112, i32 0, i32 10
  %82 = ptrtoint ptr %ieee8021x_blocked115 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %ieee8021x_blocked115, align 8
  %ndisencryptstatus116 = getelementptr i8, ptr %dev, i32 7912
  %83 = ptrtoint ptr %ndisencryptstatus116 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ndisencryptstatus116, align 8
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %84, label %if.then114.exit_crit_edge [
    i32 4, label %if.then114.if.then123_crit_edge
    i32 6, label %if.then114.if.then123_crit_edge208
  ]

if.then114.if.then123_crit_edge208:               ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then123

if.then114.if.then123_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then123

if.then114.exit_crit_edge:                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #21
  br label %exit

if.then123:                                       ; preds = %if.then114.if.then123_crit_edge, %if.then114.if.then123_crit_edge208
  %PrivacyAlgrthm124 = getelementptr i8, ptr %dev, i32 7108
  %86 = ptrtoint ptr %PrivacyAlgrthm124 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %PrivacyAlgrthm124, align 4
  %XPrivacy125 = getelementptr inbounds %struct.sta_info, ptr %call112, i32 0, i32 11
  %88 = ptrtoint ptr %XPrivacy125 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %XPrivacy125, align 4
  br label %exit

exit:                                             ; preds = %if.then123, %if.then114.exit_crit_edge, %if.end111.exit_crit_edge, %if.then85.exit_crit_edge, %if.end81.exit_crit_edge, %if.end71, %if.then63
  %ret.0 = phi i32 [ 0, %if.end71 ], [ 0, %if.end81.exit_crit_edge ], [ %spec.select, %if.then63 ], [ 0, %if.then114.exit_crit_edge ], [ 0, %if.end111.exit_crit_edge ], [ 0, %if.then123 ], [ 0, %if.then85.exit_crit_edge ]
  %pwep.0 = phi ptr [ %call7.i.i, %if.end71 ], [ null, %if.end81.exit_crit_edge ], [ %call7.i.i, %if.then63 ], [ null, %if.then114.exit_crit_edge ], [ null, %if.end111.exit_crit_edge ], [ null, %if.then123 ], [ null, %if.then85.exit_crit_edge ]
  tail call void @kfree(ptr noundef %pwep.0) #19
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end40.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then23.cleanup_crit_edge ], [ -12, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_parse_wpa_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_parse_wpa2_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_set_802_11_add_wep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_set_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_setstakey_cmd(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_set_802_11_disassociate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8711_wx_get_name(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %ht_ielen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ht_ielen) #19
  %0 = ptrtoint ptr %ht_ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ht_ielen, align 4
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  %1 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %2, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.else40, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr i8, ptr %dev, i32 2748
  %IELength = getelementptr i8, ptr %dev, i32 2732
  %3 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %IELength, align 4
  %sub = add i32 %4, -12
  %call3 = call ptr @r8712_get_ie(ptr noundef %arrayidx, i32 noundef 45, ptr noundef nonnull %ht_ielen, i32 noundef %sub) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %ht_ielen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ht_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.not = icmp eq i32 %6, 0
  %rates = getelementptr i8, ptr %dev, i32 2716
  %call7 = call i32 @r8712_is_cckratesonly_included(ptr noundef %rates) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else17, label %if.then9

if.end.thread:                                    ; preds = %if.then
  %rates57 = getelementptr i8, ptr %dev, i32 2716
  %call758 = call i32 @r8712_is_cckratesonly_included(ptr noundef %rates57) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call758)
  %tobool8.not59 = icmp eq i32 %call758, 0
  br i1 %tobool8.not59, label %if.else17.thread, label %if.end.thread.if.else_crit_edge

if.end.thread.if.else_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

if.then9:                                         ; preds = %if.end
  br i1 %cmp4.not, label %if.then9.if.else_crit_edge, label %if.then11

if.then9.if.else_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #21
  %7 = call ptr @memcpy(ptr %wrqu, ptr @.str.8, i32 14)
  br label %if.end43

if.else:                                          ; preds = %if.then9.if.else_crit_edge, %if.end.thread.if.else_crit_edge
  %8 = call ptr @memcpy(ptr %wrqu, ptr @.str.9, i32 13)
  br label %if.end43

if.else17:                                        ; preds = %if.end
  %call18 = call i32 @r8712_is_cckrates_included(ptr noundef %rates) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.else29, label %if.then20

if.else17.thread:                                 ; preds = %if.end.thread
  %call1866 = call i32 @r8712_is_cckrates_included(ptr noundef %rates57) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1866)
  %tobool19.not67 = icmp eq i32 %call1866, 0
  br i1 %tobool19.not67, label %if.else17.thread.if.else34_crit_edge, label %if.else17.thread.if.else25_crit_edge

if.else17.thread.if.else25_crit_edge:             ; preds = %if.else17.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else25

if.else17.thread.if.else34_crit_edge:             ; preds = %if.else17.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else34

if.then20:                                        ; preds = %if.else17
  br i1 %cmp4.not, label %if.then20.if.else25_crit_edge, label %if.then22

if.then20.if.else25_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else25

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #21
  %9 = call ptr @memcpy(ptr %wrqu, ptr @.str.10, i32 15)
  br label %if.end43

if.else25:                                        ; preds = %if.then20.if.else25_crit_edge, %if.else17.thread.if.else25_crit_edge
  %10 = call ptr @memcpy(ptr %wrqu, ptr @.str.11, i32 14)
  br label %if.end43

if.else29:                                        ; preds = %if.else17
  br i1 %cmp4.not, label %if.else29.if.else34_crit_edge, label %if.then31

if.else29.if.else34_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else34

if.then31:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #21
  %11 = call ptr @memcpy(ptr %wrqu, ptr @.str.12, i32 14)
  br label %if.end43

if.else34:                                        ; preds = %if.else29.if.else34_crit_edge, %if.else17.thread.if.else34_crit_edge
  %12 = call ptr @memcpy(ptr %wrqu, ptr @.str.13, i32 13)
  br label %if.end43

if.else40:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %13 = call ptr @memcpy(ptr %wrqu, ptr @.str.14, i32 13)
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.else34, %if.then31, %if.else25, %if.then22, %if.else, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ht_ielen) #19
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %a, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readnone %b) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8711_wx_set_freq(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef readnone %extra) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %e = getelementptr inbounds %struct.iw_freq, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp eq i16 %1, 1
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wrqu, align 4
  %4 = add i32 %3, -241200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 7500001, i32 %4)
  %5 = icmp ult i32 %4, 7500001
  %or.cond = select i1 %cmp, i1 %5, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  %.off = add nsw i32 %3, -241200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off)
  %6 = icmp ult i32 %.off, 100000
  br i1 %6, label %if.then.while.end_crit_edge, label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %if.then
  %.off51 = add nsw i32 %3, -241700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off51)
  %7 = icmp ult i32 %.off51, 100000
  br i1 %7, label %while.body.while.end_crit_edge, label %while.body.1

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %.off52 = add nsw i32 %3, -242200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off52)
  %8 = icmp ult i32 %.off52, 100000
  br i1 %8, label %while.body.1.while.end_crit_edge, label %while.body.2

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %.off53 = add nsw i32 %3, -242700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off53)
  %9 = icmp ult i32 %.off53, 100000
  br i1 %9, label %while.body.2.while.end_crit_edge, label %while.body.3

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  %.off54 = add nsw i32 %3, -243200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off54)
  %10 = icmp ult i32 %.off54, 100000
  br i1 %10, label %while.body.3.while.end_crit_edge, label %while.body.4

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  %.off55 = add nsw i32 %3, -243700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off55)
  %11 = icmp ult i32 %.off55, 100000
  br i1 %11, label %while.body.4.while.end_crit_edge, label %while.body.5

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  %.off56 = add nsw i32 %3, -244200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off56)
  %12 = icmp ult i32 %.off56, 100000
  br i1 %12, label %while.body.5.while.end_crit_edge, label %while.body.6

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  %.off57 = add nsw i32 %3, -244700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off57)
  %13 = icmp ult i32 %.off57, 100000
  br i1 %13, label %while.body.6.while.end_crit_edge, label %while.body.7

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  %.off58 = add nsw i32 %3, -245200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off58)
  %14 = icmp ult i32 %.off58, 100000
  br i1 %14, label %while.body.7.while.end_crit_edge, label %while.body.8

while.body.7.while.end_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.8:                                     ; preds = %while.body.7
  %.off59 = add nsw i32 %3, -245700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off59)
  %15 = icmp ult i32 %.off59, 100000
  br i1 %15, label %while.body.8.while.end_crit_edge, label %while.body.9

while.body.8.while.end_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.9:                                     ; preds = %while.body.8
  %.off60 = add nsw i32 %3, -246200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off60)
  %16 = icmp ult i32 %.off60, 100000
  br i1 %16, label %while.body.9.while.end_crit_edge, label %while.body.10

while.body.9.while.end_crit_edge:                 ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.10:                                    ; preds = %while.body.9
  %.off61 = add nsw i32 %3, -246700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off61)
  %17 = icmp ult i32 %.off61, 100000
  br i1 %17, label %while.body.10.while.end_crit_edge, label %while.body.11

while.body.10.while.end_crit_edge:                ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.11:                                    ; preds = %while.body.10
  %.off62 = add nsw i32 %3, -247200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off62)
  %18 = icmp ult i32 %.off62, 100000
  br i1 %18, label %while.body.11.while.end_crit_edge, label %while.body.12

while.body.11.while.end_crit_edge:                ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.12:                                    ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #21
  %.off63 = add nsw i32 %3, -248400000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off63)
  %19 = icmp ult i32 %.off63, 100000
  %spec.select = select i1 %19, i32 14, i32 15
  br label %while.end

while.end:                                        ; preds = %while.body.12, %while.body.11.while.end_crit_edge, %while.body.10.while.end_crit_edge, %while.body.9.while.end_crit_edge, %while.body.8.while.end_crit_edge, %while.body.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %if.then.while.end_crit_edge
  %c.0.lcssa = phi i32 [ 1, %if.then.while.end_crit_edge ], [ 2, %while.body.while.end_crit_edge ], [ 3, %while.body.1.while.end_crit_edge ], [ 4, %while.body.2.while.end_crit_edge ], [ 5, %while.body.3.while.end_crit_edge ], [ 6, %while.body.4.while.end_crit_edge ], [ 7, %while.body.5.while.end_crit_edge ], [ 8, %while.body.6.while.end_crit_edge ], [ 9, %while.body.7.while.end_crit_edge ], [ 10, %while.body.8.while.end_crit_edge ], [ 11, %while.body.9.while.end_crit_edge ], [ 12, %while.body.10.while.end_crit_edge ], [ 13, %while.body.11.while.end_crit_edge ], [ %spec.select, %while.body.12 ]
  %20 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %e, align 4
  %21 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %c.0.lcssa, ptr %wrqu, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %entry.if.end_crit_edge
  %22 = phi i32 [ %c.0.lcssa, %while.end ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %22)
  %cmp16 = icmp sgt i32 %22, 14
  br i1 %cmp16, label %if.end.if.end34_crit_edge, label %lor.lhs.false

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end34

lor.lhs.false:                                    ; preds = %if.end
  %23 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp20 = icmp sgt i16 %24, 0
  br i1 %cmp20, label %lor.lhs.false.if.end34_crit_edge, label %if.else

lor.lhs.false.if.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end34

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp24 = icmp slt i32 %22, 1
  br i1 %cmp24, label %if.else.if.end34_crit_edge, label %if.else30

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end34

if.else30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %conv31 = trunc i32 %22 to i8
  %channel32 = getelementptr i8, ptr %dev, i32 11796
  %25 = ptrtoint ptr %channel32 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv31, ptr %channel32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else30, %if.else.if.end34_crit_edge, %lor.lhs.false.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %rc.1 = phi i32 [ -95, %lor.lhs.false.if.end34_crit_edge ], [ -95, %if.end.if.end34_crit_edge ], [ 0, %if.else30 ], [ -22, %if.else.if.end34_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8711_wx_get_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %DSConfig = getelementptr i8, ptr %dev, i32 2692
  %3 = ptrtoint ptr %DSConfig to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %DSConfig, align 4
  %sub = add i32 %4, -1
  %arrayidx = getelementptr [14 x i32], ptr @ieee80211_wlan_frequencies, i32 0, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %6, 100000
  %7 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %wrqu, align 4
  %e = getelementptr inbounds %struct.iw_freq, ptr %wrqu, i32 0, i32 1
  %8 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %e, align 4
  %9 = load i32, ptr %DSConfig, align 4
  %conv = trunc i32 %9 to i8
  %i = getelementptr inbounds %struct.iw_freq, ptr %wrqu, i32 0, i32 2
  %10 = ptrtoint ptr %i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -67, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8711_wx_set_mode(ptr noundef %dev, ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wrqu, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.else_crit_edge
    i32 1, label %sw.bb1
    i32 3, label %entry.if.end_crit_edge
    i32 2, label %sw.bb3
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

if.else:                                          ; preds = %sw.bb3, %sw.bb1, %entry.if.else_crit_edge
  %networkType.0.ph = phi i32 [ 2, %entry.if.else_crit_edge ], [ 0, %sw.bb1 ], [ 1, %sw.bb3 ]
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i32 [ 2, %if.else ], [ 4, %entry.if.end_crit_edge ]
  %networkType.011 = phi i32 [ %networkType.0.ph, %if.else ], [ 4, %entry.if.end_crit_edge ]
  tail call void @r8712_setopmode_cmd(ptr noundef %add.ptr.i, i32 noundef %.sink) #19
  tail call void @r8712_set_802_11_infrastructure_mode(ptr noundef %add.ptr.i, i32 noundef %networkType.011) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8711_wx_get_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.else:                                          ; preds = %entry
  %and.i18 = and i32 %1, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool.not.i19.not = icmp eq i32 %and.i18, 0
  br i1 %tobool.not.i19.not, label %if.else5, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %3 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  %. = select i1 %tobool7.not, i32 0, i32 3
  br label %if.end11

if.end11:                                         ; preds = %if.else5, %if.else.if.end11_crit_edge, %entry.if.end11_crit_edge
  %.sink = phi i32 [ 2, %entry.if.end11_crit_edge ], [ 1, %if.else.if.end11_crit_edge ], [ %., %if.else5 ]
  %4 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %wrqu, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @r8711_wx_get_sens(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wrqu, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %1 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %fixed, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %disabled, align 1
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @r8711_wx_get_range(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr noundef writeonly %extra) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 568, ptr %length, align 4
  %1 = getelementptr inbounds i8, ptr %extra, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 564)
  %3 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5000000, ptr %extra, align 4
  %max_qual = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8
  %4 = ptrtoint ptr %max_qual to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 100, ptr %max_qual, align 4
  %level = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 100, ptr %level, align 1
  %noise = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 100, ptr %noise, align 2
  %updated = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 3
  %7 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 7, ptr %updated, align 1
  %avg_qual = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9
  %8 = ptrtoint ptr %avg_qual to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 92, ptr %avg_qual, align 4
  %level6 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %level6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -78, ptr %level6, align 1
  %updated10 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9, i32 3
  %10 = ptrtoint ptr %updated10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 7, ptr %updated10, align 1
  %num_bitrates = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 10
  %11 = ptrtoint ptr %num_bitrates to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %num_bitrates, align 4
  %uglygep = getelementptr i8, ptr %extra, i32 56
  %12 = call ptr @memcpy(ptr %uglygep, ptr @rtl8180_rates, i32 16)
  %min_frag = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 14
  %13 = ptrtoint ptr %min_frag to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 256, ptr %min_frag, align 4
  %max_frag = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 15
  %14 = ptrtoint ptr %max_frag to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2346, ptr %max_frag, align 4
  %we_version_compiled = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 30
  %15 = ptrtoint ptr %we_version_compiled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 22, ptr %we_version_compiled, align 4
  %we_version_source = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 31
  %16 = ptrtoint ptr %we_version_source to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %we_version_source, align 1
  %num_channels = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 39
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 14, ptr %num_channels, align 4
  %arrayidx16 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 0
  %i17 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 0, i32 2
  %18 = ptrtoint ptr %i17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %i17, align 2
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 241200000, ptr %arrayidx16, align 4
  %e = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 0, i32 1
  %20 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %e, align 4
  %arrayidx16.1 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 1
  %i17.1 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 1, i32 2
  %21 = ptrtoint ptr %i17.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %i17.1, align 2
  %22 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 241700000, ptr %arrayidx16.1, align 4
  %e.1 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 1, i32 1
  %23 = ptrtoint ptr %e.1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %e.1, align 4
  %arrayidx16.2 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 2
  %i17.2 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 2, i32 2
  %24 = ptrtoint ptr %i17.2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %i17.2, align 2
  %25 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 242200000, ptr %arrayidx16.2, align 4
  %e.2 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 2, i32 1
  %26 = ptrtoint ptr %e.2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %e.2, align 4
  %arrayidx16.3 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 3
  %i17.3 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 3, i32 2
  %27 = ptrtoint ptr %i17.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %i17.3, align 2
  %28 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 242700000, ptr %arrayidx16.3, align 4
  %e.3 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 3, i32 1
  %29 = ptrtoint ptr %e.3 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %e.3, align 4
  %arrayidx16.4 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 4
  %i17.4 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 4, i32 2
  %30 = ptrtoint ptr %i17.4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %i17.4, align 2
  %31 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 243200000, ptr %arrayidx16.4, align 4
  %e.4 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 4, i32 1
  %32 = ptrtoint ptr %e.4 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %e.4, align 4
  %arrayidx16.5 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 5
  %i17.5 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 5, i32 2
  %33 = ptrtoint ptr %i17.5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 6, ptr %i17.5, align 2
  %34 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 243700000, ptr %arrayidx16.5, align 4
  %e.5 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 5, i32 1
  %35 = ptrtoint ptr %e.5 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %e.5, align 4
  %arrayidx16.6 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 6
  %i17.6 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 6, i32 2
  %36 = ptrtoint ptr %i17.6 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 7, ptr %i17.6, align 2
  %37 = ptrtoint ptr %arrayidx16.6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 244200000, ptr %arrayidx16.6, align 4
  %e.6 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 6, i32 1
  %38 = ptrtoint ptr %e.6 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %e.6, align 4
  %arrayidx16.7 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 7
  %i17.7 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 7, i32 2
  %39 = ptrtoint ptr %i17.7 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 8, ptr %i17.7, align 2
  %40 = ptrtoint ptr %arrayidx16.7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 244700000, ptr %arrayidx16.7, align 4
  %e.7 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 7, i32 1
  %41 = ptrtoint ptr %e.7 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %e.7, align 4
  %arrayidx16.8 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 8
  %i17.8 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 8, i32 2
  %42 = ptrtoint ptr %i17.8 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 9, ptr %i17.8, align 2
  %43 = ptrtoint ptr %arrayidx16.8 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 245200000, ptr %arrayidx16.8, align 4
  %e.8 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 8, i32 1
  %44 = ptrtoint ptr %e.8 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %e.8, align 4
  %arrayidx16.9 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 9
  %i17.9 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 9, i32 2
  %45 = ptrtoint ptr %i17.9 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 10, ptr %i17.9, align 2
  %46 = ptrtoint ptr %arrayidx16.9 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 245700000, ptr %arrayidx16.9, align 4
  %e.9 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 9, i32 1
  %47 = ptrtoint ptr %e.9 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %e.9, align 4
  %arrayidx16.10 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 10
  %i17.10 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 10, i32 2
  %48 = ptrtoint ptr %i17.10 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 11, ptr %i17.10, align 2
  %49 = ptrtoint ptr %arrayidx16.10 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 246200000, ptr %arrayidx16.10, align 4
  %e.10 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 10, i32 1
  %50 = ptrtoint ptr %e.10 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %e.10, align 4
  %arrayidx16.11 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 11
  %i17.11 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 11, i32 2
  %51 = ptrtoint ptr %i17.11 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 12, ptr %i17.11, align 2
  %52 = ptrtoint ptr %arrayidx16.11 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 246700000, ptr %arrayidx16.11, align 4
  %e.11 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 11, i32 1
  %53 = ptrtoint ptr %e.11 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %e.11, align 4
  %arrayidx16.12 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 12
  %i17.12 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 12, i32 2
  %54 = ptrtoint ptr %i17.12 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 13, ptr %i17.12, align 2
  %55 = ptrtoint ptr %arrayidx16.12 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 247200000, ptr %arrayidx16.12, align 4
  %e.12 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 12, i32 1
  %56 = ptrtoint ptr %e.12 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %e.12, align 4
  %arrayidx16.13 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 13
  %i17.13 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 13, i32 2
  %57 = ptrtoint ptr %i17.13 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 14, ptr %i17.13, align 2
  %58 = ptrtoint ptr %arrayidx16.13 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 248400000, ptr %arrayidx16.13, align 4
  %e.13 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 13, i32 1
  %59 = ptrtoint ptr %e.13 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %e.13, align 4
  %num_frequency = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 40
  %60 = ptrtoint ptr %num_frequency to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 14, ptr %num_frequency, align 2
  %enc_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 42
  %61 = ptrtoint ptr %enc_capa to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 15, ptr %enc_capa, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871x_wx_set_priv(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %awrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %wrqd = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %length = getelementptr inbounds %struct.iw_point, ptr %awrq, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 4
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %awrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %awrq, align 4
  %call1 = tail call ptr @strndup_user(ptr noundef %3, i32 noundef %conv) #19
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @strcasecmp(ptr noundef %call1, ptr noundef nonnull @.str.15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.else14

if.then5:                                         ; preds = %if.end
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 8
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  %Ssid9 = getelementptr i8, ptr %dev, i32 2636
  %fw_rssi = getelementptr i8, ptr %dev, i32 5779
  %8 = ptrtoint ptr %fw_rssi to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fw_rssi, align 1
  %10 = lshr i8 %9, 1
  %11 = zext i8 %10 to i32
  %sub = add nsw i32 %11, -95
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %call1, ptr noundef nonnull @.str.16, ptr noundef %Ssid9, i32 noundef %sub)
  br label %if.end61

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  %12 = call ptr @memcpy(ptr %call1, ptr @.str.17, i32 3)
  br label %if.end61

if.else14:                                        ; preds = %if.end
  %call15 = tail call i32 @strcasecmp(ptr noundef %call1, ptr noundef nonnull @.str.18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.else24

if.then17:                                        ; preds = %if.else14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqd) #19
  %13 = call ptr @memset(ptr %wrqd, i32 255, i32 16)
  %call18 = call i32 @r8711_wx_get_rate(ptr noundef %dev, ptr noundef %info, ptr noundef nonnull %wrqd, ptr noundef %extra)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp.not = icmp eq i32 %call18, 0
  br i1 %cmp.not, label %if.else21, label %if.then17.if.end22_crit_edge

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22

if.else21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  %14 = ptrtoint ptr %wrqd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wrqd, align 4
  %div = sdiv i32 %15, 1000000
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then17.if.end22_crit_edge
  %mbps.0 = phi i32 [ %div, %if.else21 ], [ 0, %if.then17.if.end22_crit_edge ]
  %call23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %call1, ptr noundef nonnull @.str.19, i32 noundef %mbps.0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqd) #19
  br label %if.end61

if.else24:                                        ; preds = %if.else14
  %call25 = tail call i32 @strcasecmp(ptr noundef %call1, ptr noundef nonnull @.str.20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #21
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %call1, ptr noundef nonnull @.str.21, ptr noundef %17)
  br label %if.end61

if.else29:                                        ; preds = %if.else24
  %call30 = tail call i32 @strcasecmp(ptr noundef %call1, ptr noundef nonnull @.str.22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.else36

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #21
  %passive_mode = getelementptr i8, ptr %dev, i32 2544
  %18 = ptrtoint ptr %passive_mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %passive_mode, align 8
  %19 = call ptr @memcpy(ptr %call1, ptr @.str.17, i32 3)
  br label %if.end61

if.else36:                                        ; preds = %if.else29
  %call37 = tail call i32 @strcasecmp(ptr noundef %call1, ptr noundef nonnull @.str.23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.else44

if.then39:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #21
  %passive_mode42 = getelementptr i8, ptr %dev, i32 2544
  %20 = ptrtoint ptr %passive_mode42 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %passive_mode42, align 8
  %21 = call ptr @memcpy(ptr %call1, ptr @.str.17, i32 3)
  br label %if.end61

if.else44:                                        ; preds = %if.else36
  %call45 = tail call i32 @strncmp(ptr noundef %call1, ptr noundef nonnull dereferenceable(6) @.str.24, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @r8712_disconnectCtrlEx_cmd(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 5, i32 noundef 100, i32 noundef 5000) #19
  %22 = call ptr @memcpy(ptr %call1, ptr @.str.17, i32 3)
  br label %if.end61

if.else49:                                        ; preds = %if.else44
  %call50 = tail call i32 @strncmp(ptr noundef %call1, ptr noundef nonnull dereferenceable(6) @.str.25, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @r8712_disconnectCtrlEx_cmd(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 5, i32 noundef 100, i32 noundef 5000) #19
  %23 = call ptr @memcpy(ptr %call1, ptr @.str.17, i32 3)
  br label %if.end61

if.else54:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.r871x_wx_set_priv, ptr noundef %call1) #24
  br label %FREE_EXT

if.end61:                                         ; preds = %if.then52, %if.then47, %if.then39, %if.then32, %if.then27, %if.end22, %if.else, %if.then8
  %24 = ptrtoint ptr %awrq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %awrq, align 4
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %length, align 4
  %call64 = tail call i32 @strlen(ptr noundef %call1) #23
  %conv65 = add i32 %call64, 1
  %conv66 = zext i16 %27 to i32
  %conv67 = and i32 %conv65, 65535
  %28 = tail call i32 @llvm.umin.i32(i32 %conv67, i32 %conv66)
  tail call void @__check_object_size(ptr noundef %call1, i32 noundef %28, i1 noundef zeroext true) #19
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #19
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i, label %if.end61.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end61.copy_to_user.exit_crit_edge:             ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #21
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end61
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 %28, i32 -1226833920) #22, !srcloc !127
  %asmresult.i.i = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %call1, i32 noundef %28) #19
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef %call1, i32 noundef %28) #19
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end61.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %28, %if.end61.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %28, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool73.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool73.not, i32 0, i32 -14
  br label %FREE_EXT

FREE_EXT:                                         ; preds = %copy_to_user.exit, %if.else54
  %ret.0 = phi i32 [ 0, %if.else54 ], [ %spec.select, %copy_to_user.exit ]
  tail call void @kfree(ptr noundef %call1) #19
  br label %cleanup

cleanup:                                          ; preds = %FREE_EXT, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %ret.0, %FREE_EXT ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8711_wx_set_wap(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %awrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %scanned_queue = getelementptr i8, ptr %dev, i32 2484
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %2 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %awrq to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %awrq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp.not = icmp eq i16 %5, 1
  br i1 %cmp.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %lock = getelementptr i8, ptr %dev, i32 2492
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #19
  %6 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scanned_queue, align 4
  %pscanned = getelementptr i8, ptr %dev, i32 2428
  %8 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %pscanned, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %awrq, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end21.while.cond_crit_edge, %if.end8
  %9 = ptrtoint ptr %pscanned to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pscanned, align 4
  %cmp.i.not = icmp eq ptr %scanned_queue, %10
  br i1 %cmp.i.not, label %while.cond.while.end_crit_edge, label %if.end21

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

if.end21:                                         ; preds = %while.cond
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %pscanned, align 4
  %MacAddress = getelementptr inbounds %struct.wlan_network, ptr %10, i32 0, i32 6, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %MacAddress, ptr noundef dereferenceable(6) %sa_data, i32 6) #23
  %tobool29.not = icmp eq i32 %bcmp, 0
  br i1 %tobool29.not, label %if.then30, label %if.end21.while.cond_crit_edge

if.end21.while.cond_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond

if.then30:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  %InfrastructureMode = getelementptr inbounds %struct.wlan_network, ptr %10, i32 0, i32 6, i32 8
  %14 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %InfrastructureMode, align 4
  tail call void @r8712_set_802_11_infrastructure_mode(ptr noundef %add.ptr.i, i32 noundef %15) #19
  br label %while.end

while.end:                                        ; preds = %if.then30, %while.cond.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #19
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %while.end ], [ -16, %entry.cleanup_crit_edge ], [ -115, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8711_wx_get_wap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %wrqu, align 4
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  %1 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %2, 81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  %sa_data3 = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  br i1 %tobool.not.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %MacAddress = getelementptr i8, ptr %dev, i32 2624
  %3 = ptrtoint ptr %MacAddress to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %MacAddress, align 4
  %5 = ptrtoint ptr %sa_data3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sa_data3, align 4
  %add.ptr.i8 = getelementptr i8, ptr %dev, i32 2628
  %6 = ptrtoint ptr %add.ptr.i8 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i8, align 2
  %add.ptr1.i = getelementptr %struct.sockaddr, ptr %wrqu, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %add.ptr1.i, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %9 = call ptr @memset(ptr %sa_data3, i32 0, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871x_wx_set_mlme(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr noundef readonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %extra, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %extra, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %switch = icmp ult i16 %1, 2
  br i1 %switch, label %cleanup.sink.split, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call6 = tail call zeroext i8 @r8712_set_802_11_disassociate(ptr noundef %add.ptr.i) #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call6)
  %tobool7.not = icmp eq i8 %call6, 0
  %spec.select14 = sext i1 %tobool7.not to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %spec.select14, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8711_wx_set_scan(ptr noundef %dev, ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readonly %extra) #0 align 64 {
entry:
  %ssid = alloca %struct.ndis_802_11_ssid, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mlmepriv = getelementptr i8, ptr %dev, i32 2328
  %driver_stopped = getelementptr i8, ptr %dev, i32 15948
  %0 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver_stopped, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.r8711_wx_set_scan, i32 noundef 1) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %bup = getelementptr i8, ptr %dev, i32 15972
  %2 = ptrtoint ptr %bup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %hw_init_completed = getelementptr i8, ptr %dev, i32 15952
  %4 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_init_completed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  %6 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %7, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %lor.lhs.false, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %traffic_busy = getelementptr i8, ptr %dev, i32 3516
  %8 = ptrtoint ptr %traffic_busy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %traffic_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 316, i16 %11)
  %cmp = icmp eq i16 %11, 316
  br i1 %cmp, label %if.then17, label %if.else52

if.then17:                                        ; preds = %if.end14
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool19.not = icmp eq i16 %14, 0
  br i1 %tobool19.not, label %if.then17.cleanup_crit_edge, label %if.then20

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then20:                                        ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ssid) #19
  %essid_len = getelementptr inbounds %struct.iw_scan_req, ptr %extra, i32 0, i32 1
  %15 = ptrtoint ptr %essid_len to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %essid_len, align 1
  %17 = tail call i8 @llvm.umin.i8(i8 %16, i8 32)
  %cond = zext i8 %17 to i32
  %18 = getelementptr inbounds i8, ptr %ssid, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 32)
  %Ssid = getelementptr inbounds %struct.ndis_802_11_ssid, ptr %ssid, i32 0, i32 1
  %essid = getelementptr inbounds %struct.iw_scan_req, ptr %extra, i32 0, i32 5
  %20 = call ptr @memcpy(ptr %Ssid, ptr %essid, i32 %cond)
  %21 = ptrtoint ptr %ssid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond, ptr %ssid, align 4
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mlmepriv) #19
  %22 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_state.i, align 8
  %and.i79 = and i32 %23, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool.not.i80.not = icmp eq i32 %and.i79, 0
  br i1 %tobool.not.i80.not, label %lor.lhs.false39, label %if.then20.if.then43_crit_edge

if.then20.if.then43_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then43

lor.lhs.false39:                                  ; preds = %if.then20
  %24 = ptrtoint ptr %traffic_busy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %traffic_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool42.not = icmp eq i32 %25, 0
  br i1 %tobool42.not, label %if.else, label %lor.lhs.false39.if.then43_crit_edge

lor.lhs.false39.if.then43_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false39.if.then43_crit_edge, %if.then20.if.then43_crit_edge
  %26 = trunc i32 %23 to i8
  %27 = xor i8 %26, -1
  %28 = lshr i8 %27, 7
  br label %if.end49

if.else:                                          ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #21
  %call48 = call zeroext i8 @r8712_sitesurvey_cmd(ptr noundef %add.ptr.i, ptr noundef nonnull %ssid) #19
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then43
  %status.0 = phi i8 [ %call48, %if.else ], [ %28, %if.then43 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %mlmepriv, i32 noundef %call33) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ssid) #19
  br label %if.end54

if.else52:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  %call53 = tail call zeroext i8 @r8712_set_802_11_bssid_list_scan(ptr noundef %add.ptr.i) #19
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %if.end49
  %status.2 = phi i8 [ %call53, %if.else52 ], [ %status.0, %if.end49 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status.2)
  %tobool55.not = icmp eq i8 %status.2, 0
  %spec.select88 = sext i1 %tobool55.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -100, %if.end.cleanup_crit_edge ], [ -1, %if.end5.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.then17.cleanup_crit_edge ], [ %spec.select88, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8711_wx_get_scan(ptr noundef %dev, ptr noundef %a, ptr nocapture noundef %wrqu, ptr noundef %extra) #0 align 64 {
entry:
  %iwe.i = alloca %struct.iw_event, align 4
  %ht_ielen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %scanned_queue = getelementptr i8, ptr %dev, i32 2484
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 4
  %conv = zext i16 %1 to i32
  %add.ptr = getelementptr i8, ptr %extra, i32 %conv
  %driver_stopped = getelementptr i8, ptr %dev, i32 15948
  %2 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %driver_stopped, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %cnt.0 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %4 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %5, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %while.cond.do.body6_crit_edge, label %while.body

while.cond.do.body6_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body6

while.body:                                       ; preds = %while.cond
  tail call void @msleep(i32 noundef 30) #19
  %inc = add nuw nsw i32 %cnt.0, 1
  %exitcond = icmp eq i32 %inc, 101
  br i1 %exitcond, label %while.body.do.body6_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond

while.body.do.body6_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body6

do.body6:                                         ; preds = %while.body.do.body6_crit_edge, %while.cond.do.body6_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 2492
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #19
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %6 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %plist.067 = load ptr, ptr %scanned_queue, align 4
  %cmp.i.not68 = icmp eq ptr %scanned_queue, %plist.067
  br i1 %cmp.i.not68, label %do.body6.while.end28_crit_edge, label %if.end19.lr.ph

do.body6.while.end28_crit_edge:                   ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end28

if.end19.lr.ph:                                   ; preds = %do.body6
  %7 = getelementptr inbounds %struct.iw_event, ptr %iwe.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.iw_event, ptr %iwe.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.iw_event, ptr %iwe.i, i32 0, i32 2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.iw_event, ptr %iwe.i, i32 0, i32 2, i32 0, i32 2
  %sa_data.i = getelementptr inbounds %struct.sockaddr, ptr %8, i32 0, i32 1
  %disabled.i = getelementptr inbounds %struct.iw_param, ptr %8, i32 0, i32 2
  %updated.i = getelementptr inbounds %struct.iw_quality, ptr %8, i32 0, i32 3
  %level.i = getelementptr inbounds %struct.iw_quality, ptr %8, i32 0, i32 1
  br label %if.end19

if.end19:                                         ; preds = %translate_scan.exit.if.end19_crit_edge, %if.end19.lr.ph
  %plist.070 = phi ptr [ %plist.067, %if.end19.lr.ph ], [ %plist.0, %translate_scan.exit.if.end19_crit_edge ]
  %ev.069 = phi ptr [ %extra, %if.end19.lr.ph ], [ %call184.i, %translate_scan.exit.if.end19_crit_edge ]
  %sub.ptr.rhs.cast = ptrtoint ptr %ev.069 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %sub.ptr.sub)
  %cmp20 = icmp slt i32 %sub.ptr.sub, 768
  br i1 %cmp20, label %if.end19.while.end28_crit_edge, label %if.end23

if.end19.while.end28_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end28

if.end23:                                         ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iwe.i) #19
  %11 = call ptr @memset(ptr %iwe.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ht_ielen.i) #19
  %12 = ptrtoint ptr %ht_ielen.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ht_ielen.i, align 4
  %DSConfig.i = getelementptr inbounds %struct.wlan_network, ptr %plist.070, i32 0, i32 6, i32 7, i32 3
  %13 = ptrtoint ptr %DSConfig.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DSConfig.i, align 4
  %15 = add i32 %14, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %15)
  %16 = icmp ult i32 %15, -14
  br i1 %16, label %if.then.i, label %if.end23.if.end16.i_crit_edge

if.end23.if.end16.i_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16.i

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i61 = icmp eq i32 %14, 0
  %..i62 = select i1 %cmp.i61, i32 1, i32 14
  %17 = ptrtoint ptr %DSConfig.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %..i62, ptr %DSConfig.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then.i, %if.end23.if.end16.i_crit_edge
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -29931, ptr %7, align 2
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %8, align 4
  %MacAddress.i = getelementptr inbounds %struct.wlan_network, ptr %plist.070, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %MacAddress.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %MacAddress.i, align 4
  %22 = ptrtoint ptr %sa_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sa_data.i, align 4
  %add.ptr.i.i = getelementptr %struct.wlan_network, ptr %plist.070, i32 0, i32 6, i32 1, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i, align 2
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %10, align 2
  %call.i = call ptr @iwe_stream_add_event(ptr noundef %a, ptr noundef %ev.069, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 20) #19
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -29925, ptr %7, align 2
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %10, align 2
  %Ssid.i = getelementptr inbounds %struct.wlan_network, ptr %plist.070, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %Ssid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %Ssid.i, align 4
  %30 = call i32 @llvm.umin.i32(i32 %29, i32 32) #19
  %conv.i63 = trunc i32 %30 to i16
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i63, ptr %9, align 4
  %Ssid27.i = getelementptr inbounds %struct.wlan_network, ptr %plist.070, i32 0, i32 6, i32 3, i32 1
  %call29.i = call ptr @iwe_stream_add_point(ptr noundef %a, ptr noundef %call.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, ptr noundef %Ssid27.i) #19
  %IEs.i = getelementptr inbounds %struct.wlan_network, ptr %plist.070, i32 0, i32 6, i32 11
  %arrayidx.i = getelementptr %struct.wlan_network, ptr %plist.070, i32 0, i32 6, i32 11, i32 12
  %IELength.i = getelementptr inbounds %struct.wlan_network, ptr %plist.070, i32 0, i32 6, i32 10
  %32 = ptrtoint ptr %IELength.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %IELength.i, align 4
  %sub.i = add i32 %33, -12
  %call32.i = call ptr @r8712_get_ie(ptr noundef %arrayidx.i, i32 noundef 45, ptr noundef nonnull %ht_ielen.i, i32 noundef %sub.i) #19
  %tobool.not.i64 = icmp eq ptr %call32.i, null
  br i1 %tobool.not.i64, label %if.end16.i.if.end36.i_crit_edge, label %land.lhs.true.i

if.end16.i.if.end36.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #21
  %34 = ptrtoint ptr %ht_ielen.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ht_ielen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp33.not.i = icmp eq i32 %35, 0
  br label %if.end36.i

if.end36.i:                                       ; preds = %land.lhs.true.i, %if.end16.i.if.end36.i_crit_edge
  %tobool71.not.i = phi i1 [ true, %if.end16.i.if.end36.i_crit_edge ], [ %cmp33.not.i, %land.lhs.true.i ]
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -29951, ptr %7, align 2
  %rates.i = getelementptr %struct.wlan_network, ptr %plist.070, i32 0, i32 6, i32 9
  %call40.i = call i32 @r8712_is_cckratesonly_included(ptr noundef %rates.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.else53.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.end36.i
  br i1 %tobool71.not.i, label %if.else48.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #21
  %37 = call ptr @memcpy(ptr %8, ptr @.str.8, i32 14)
  br label %if.end82.i

if.else48.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #21
  %38 = call ptr @memcpy(ptr %8, ptr @.str.9, i32 13)
  br label %if.end82.i

if.else53.i:                                      ; preds = %if.end36.i
  %call57.i = call i32 @r8712_is_cckrates_included(ptr noundef %rates.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.else70.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.else53.i
  br i1 %tobool71.not.i, label %if.else65.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #21
  %39 = call ptr @memcpy(ptr %8, ptr @.str.10, i32 15)
  br label %if.end82.i

if.else65.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #21
  %40 = call ptr @memcpy(ptr %8, ptr @.str.11, i32 14)
  br label %if.end82.i

if.else70.i:                                      ; preds = %if.else53.i
  br i1 %tobool71.not.i, label %if.else76.i, label %if.then72.i

if.then72.i:                                      ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #21
  %41 = call ptr @memcpy(ptr %8, ptr @.str.12, i32 14)
  br label %if.end82.i

if.else76.i:                                      ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #21
  %42 = call ptr @memcpy(ptr %8, ptr @.str.13, i32 13)
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.else76.i, %if.then72.i, %if.else65.i, %if.then61.i, %if.else48.i, %if.then44.i
  %call83.i = call ptr @iwe_stream_add_event(ptr noundef %a, ptr noundef %call29.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 20) #19
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -29945, ptr %7, align 2
  %call88.i = call ptr @r8712_get_capability_from_ie(ptr noundef %IEs.i) #19
  %44 = ptrtoint ptr %call88.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %call88.i, align 1
  %46 = call i16 @llvm.bswap.i16(i16 %45) #19
  %conv89.i = zext i16 %46 to i32
  %and.i65 = and i32 %conv89.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool90.not.i = icmp eq i32 %and.i65, 0
  br i1 %tobool90.not.i, label %if.end82.i.if.end101.i_crit_edge, label %if.then91.i

if.end82.i.if.end101.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end101.i

if.then91.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #21
  %and93.i = and i32 %conv89.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  %.3.i = select i1 %tobool94.not.i, i32 1, i32 3
  %47 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.3.i, ptr %8, align 4
  %call100.i = call ptr @iwe_stream_add_event(ptr noundef %a, ptr noundef %call83.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 8) #19
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then91.i, %if.end82.i.if.end101.i_crit_edge
  %start.addr.0.i = phi ptr [ %call100.i, %if.then91.i ], [ %call83.i, %if.end82.i.if.end101.i_crit_edge ]
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -29947, ptr %7, align 2
  %49 = ptrtoint ptr %DSConfig.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %DSConfig.i, align 4
  %conv107.i = and i32 %50, 255
  %51 = add nsw i32 %conv107.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %51)
  %52 = icmp ult i32 %51, 14
  br i1 %52, label %if.then114.i, label %if.end101.i.if.end122.i_crit_edge

if.end101.i.if.end122.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end122.i

if.then114.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx117.i = getelementptr [14 x i32], ptr @ieee80211_wlan_frequencies, i32 0, i32 %51
  %53 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx117.i, align 4
  %mul.i = mul i32 %54, 100000
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then114.i, %if.end101.i.if.end122.i_crit_edge
  %storemerge.i = phi i32 [ %mul.i, %if.then114.i ], [ 0, %if.end101.i.if.end122.i_crit_edge ]
  %55 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %storemerge.i, ptr %8, align 4
  %56 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %9, align 4
  %conv127.i = trunc i32 %50 to i8
  %57 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv127.i, ptr %10, align 2
  %call130.i = call ptr @iwe_stream_add_event(ptr noundef %a, ptr noundef %start.addr.0.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 12) #19
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -29909, ptr %7, align 2
  %59 = and i16 %46, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool134.not.i = icmp eq i16 %59, 0
  %.5.i = select i1 %tobool134.not.i, i16 -32768, i16 2048
  %60 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %.5.i, ptr %10, align 2
  %61 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %9, align 4
  %call148.i = call ptr @iwe_stream_add_point(ptr noundef %a, ptr noundef %call130.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, ptr noundef %Ssid27.i) #19
  %add.ptr.i66 = getelementptr i8, ptr %call148.i, i32 4
  %62 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -29919, ptr %7, align 2
  %63 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %9, align 4
  %64 = ptrtoint ptr %disabled.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %disabled.i, align 1
  %65 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %8, align 4
  %66 = ptrtoint ptr %rates.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rates.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp158.not10.i = icmp eq i8 %67, 0
  br i1 %cmp158.not10.i, label %if.end122.i.translate_scan.exit_crit_edge, label %if.end122.i.while.body.i_crit_edge

if.end122.i.while.body.i_crit_edge:               ; preds = %if.end122.i
  br label %while.body.i

if.end122.i.translate_scan.exit_crit_edge:        ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %translate_scan.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end122.i.while.body.i_crit_edge
  %68 = phi i8 [ %72, %while.body.i.while.body.i_crit_edge ], [ %67, %if.end122.i.while.body.i_crit_edge ]
  %i.012.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end122.i.while.body.i_crit_edge ]
  %current_val.011.i = phi ptr [ %call168.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i66, %if.end122.i.while.body.i_crit_edge ]
  %inc.i = add i32 %i.012.i, 1
  %69 = and i8 %68, 127
  %and164.i = zext i8 %69 to i32
  %mul165.i = mul nuw nsw i32 %and164.i, 500000
  %70 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mul165.i, ptr %8, align 4
  %call168.i = call ptr @iwe_stream_add_value(ptr noundef %a, ptr noundef %call148.i, ptr noundef %current_val.011.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 12) #19
  %arrayidx156.i = getelementptr %struct.wlan_network, ptr %plist.070, i32 0, i32 6, i32 9, i32 %inc.i
  %71 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx156.i, align 1
  %cmp158.not.i = icmp eq i8 %72, 0
  br i1 %cmp158.not.i, label %while.body.i.translate_scan.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i

while.body.i.translate_scan.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %translate_scan.exit

translate_scan.exit:                              ; preds = %while.body.i.translate_scan.exit_crit_edge, %if.end122.i.translate_scan.exit_crit_edge
  %current_val.0.lcssa.i = phi ptr [ %add.ptr.i66, %if.end122.i.translate_scan.exit_crit_edge ], [ %call168.i, %while.body.i.translate_scan.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %current_val.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call148.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp170.i = icmp sgt i32 %sub.ptr.sub.i, 4
  %spec.select6.i = select i1 %cmp170.i, ptr %current_val.0.lcssa.i, ptr %call148.i
  %call174.i = call fastcc ptr @translate_scan_wpa(ptr noundef %a, ptr noundef %plist.070, ptr noundef nonnull %iwe.i, ptr noundef %spec.select6.i, ptr noundef %add.ptr) #19
  %call175.i = call fastcc ptr @translate_scan_wps(ptr noundef %a, ptr noundef %plist.070, ptr noundef nonnull %iwe.i, ptr noundef %call174.i, ptr noundef %add.ptr) #19
  %73 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -29695, ptr %7, align 2
  %Rssi.i = getelementptr inbounds %struct.wlan_network, ptr %plist.070, i32 0, i32 6, i32 5
  %74 = ptrtoint ptr %Rssi.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %Rssi.i, align 4
  %call178.i = call i32 @r8712_signal_scale_mapping(i32 noundef %75) #19
  %conv179.i = trunc i32 %call178.i to i8
  %76 = ptrtoint ptr %updated.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 82, ptr %updated.i, align 1
  %77 = ptrtoint ptr %level.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv179.i, ptr %level.i, align 1
  %78 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %8, align 4
  %79 = ptrtoint ptr %sa_data.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %sa_data.i, align 2
  %call184.i = call ptr @iwe_stream_add_event(ptr noundef %a, ptr noundef %call175.i, ptr noundef %add.ptr, ptr noundef nonnull %iwe.i, i32 noundef 8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ht_ielen.i) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iwe.i) #19
  %80 = ptrtoint ptr %plist.070 to i32
  call void @__asan_load4_noabort(i32 %80)
  %plist.0 = load ptr, ptr %plist.070, align 4
  %cmp.i.not = icmp eq ptr %scanned_queue, %plist.0
  br i1 %cmp.i.not, label %translate_scan.exit.while.end28_crit_edge, label %translate_scan.exit.if.end19_crit_edge

translate_scan.exit.if.end19_crit_edge:           ; preds = %translate_scan.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19

translate_scan.exit.while.end28_crit_edge:        ; preds = %translate_scan.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end28

while.end28:                                      ; preds = %translate_scan.exit.while.end28_crit_edge, %if.end19.while.end28_crit_edge, %do.body6.while.end28_crit_edge
  %ev.0.lcssa = phi ptr [ %extra, %do.body6.while.end28_crit_edge ], [ %ev.069, %if.end19.while.end28_crit_edge ], [ %call184.i, %translate_scan.exit.while.end28_crit_edge ]
  %ret.0 = phi i32 [ 0, %do.body6.while.end28_crit_edge ], [ -7, %if.end19.while.end28_crit_edge ], [ 0, %translate_scan.exit.while.end28_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #19
  %sub.ptr.lhs.cast30 = ptrtoint ptr %ev.0.lcssa to i32
  %sub.ptr.rhs.cast31 = ptrtoint ptr %extra to i32
  %sub.ptr.sub32 = sub i32 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %conv33 = trunc i32 %sub.ptr.sub32 to i16
  %81 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv33, ptr %length, align 4
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %while.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %while.end28 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8711_wx_set_essid(ptr noundef %dev, ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readonly %extra) #0 align 64 {
entry:
  %ndis_ssid = alloca %struct.ndis_802_11_ssid, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %scanned_queue = getelementptr i8, ptr %dev, i32 2484
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ndis_ssid) #19
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %2 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %5)
  %cmp = icmp ugt i16 %5, 32
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %ndisauthtype = getelementptr i8, ptr %dev, i32 7908
  %6 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ndisauthtype, align 4
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool10.not = icmp eq i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool13.not = icmp eq i16 %5, 0
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.then14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then14:                                        ; preds = %if.end8
  %spec.select = zext i16 %5 to i32
  %10 = getelementptr inbounds i8, ptr %ndis_ssid, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 32)
  %12 = ptrtoint ptr %ndis_ssid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %ndis_ssid, align 4
  %Ssid = getelementptr inbounds %struct.ndis_802_11_ssid, ptr %ndis_ssid, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %Ssid, ptr %extra, i32 %spec.select)
  %14 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scanned_queue, align 4
  %pscanned = getelementptr i8, ptr %dev, i32 2428
  %16 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %pscanned, align 4
  %cmp.i.not104 = icmp eq ptr %scanned_queue, %15
  br i1 %cmp.i.not104, label %if.then14.while.end_crit_edge, label %if.end28.lr.ph

if.then14.while.end_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

if.end28.lr.ph:                                   ; preds = %if.then14
  %17 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool48.not = icmp eq i32 %17, 0
  %InfrastructureMode53 = getelementptr i8, ptr %dev, i32 2712
  br label %if.end28

if.end28:                                         ; preds = %while.cond.backedge.if.end28_crit_edge, %if.end28.lr.ph
  %18 = phi ptr [ %15, %if.end28.lr.ph ], [ %31, %while.cond.backedge.if.end28_crit_edge ]
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %pscanned to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %pscanned, align 4
  %Ssid34 = getelementptr inbounds %struct.wlan_network, ptr %18, i32 0, i32 6, i32 3, i32 1
  %bcmp = call i32 @bcmp(ptr %Ssid34, ptr %Ssid, i32 %spec.select) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool38.not = icmp eq i32 %bcmp, 0
  br i1 %tobool38.not, label %land.lhs.true39, label %if.end28.while.cond.backedge_crit_edge

if.end28.while.cond.backedge_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.backedge

land.lhs.true39:                                  ; preds = %if.end28
  %Ssid33 = getelementptr inbounds %struct.wlan_network, ptr %18, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %Ssid33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %Ssid33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %spec.select)
  %cmp44 = icmp eq i32 %23, %spec.select
  br i1 %cmp44, label %if.then46, label %land.lhs.true39.while.cond.backedge_crit_edge

land.lhs.true39.while.cond.backedge_crit_edge:    ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.backedge

if.then46:                                        ; preds = %land.lhs.true39
  br i1 %tobool48.not, label %if.then46.if.end58_crit_edge, label %if.then49

if.then46.if.end58_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end58

if.then49:                                        ; preds = %if.then46
  %InfrastructureMode = getelementptr inbounds %struct.wlan_network, ptr %18, i32 0, i32 6, i32 8
  %24 = ptrtoint ptr %InfrastructureMode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %InfrastructureMode, align 4
  %26 = ptrtoint ptr %InfrastructureMode53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %InfrastructureMode53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp54.not = icmp eq i32 %25, %27
  br i1 %cmp54.not, label %if.then49.if.end58_crit_edge, label %if.then49.while.cond.backedge_crit_edge

if.then49.while.cond.backedge_crit_edge:          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.backedge

if.then49.if.end58_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end58

if.end58:                                         ; preds = %if.then49.if.end58_crit_edge, %if.then46.if.end58_crit_edge
  %InfrastructureMode60 = getelementptr inbounds %struct.wlan_network, ptr %18, i32 0, i32 6, i32 8
  %28 = ptrtoint ptr %InfrastructureMode60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %InfrastructureMode60, align 4
  tail call void @r8712_set_802_11_infrastructure_mode(ptr noundef %add.ptr.i, i32 noundef %29) #19
  br label %while.end

while.cond.backedge:                              ; preds = %if.then49.while.cond.backedge_crit_edge, %land.lhs.true39.while.cond.backedge_crit_edge, %if.end28.while.cond.backedge_crit_edge
  %30 = ptrtoint ptr %pscanned to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pscanned, align 4
  %cmp.i.not = icmp eq ptr %scanned_queue, %31
  br i1 %cmp.i.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.if.end28_crit_edge

while.cond.backedge.if.end28_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.end58, %if.then14.while.end_crit_edge
  %call62 = tail call zeroext i8 @r8712_set_802_11_authentication_mode(ptr noundef %add.ptr.i, i32 noundef %7) #19
  call void @r8712_set_802_11_ssid(ptr noundef %add.ptr.i, ptr noundef nonnull %ndis_ssid) #19
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -7, %if.end5.cleanup_crit_edge ], [ -115, %while.end ], [ -115, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ndis_ssid) #19
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8711_wx_get_essid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef writeonly %extra) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %1, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %Ssid = getelementptr i8, ptr %dev, i32 2632
  %2 = ptrtoint ptr %Ssid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %Ssid, align 4
  %conv = trunc i32 %3 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %length, align 4
  %Ssid3 = getelementptr i8, ptr %dev, i32 2636
  %5 = call ptr @memcpy(ptr %extra, ptr %Ssid3, i32 %3)
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %flags, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -67, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @r871x_wx_get_nick(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr noundef writeonly %extra) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %extra, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 8, ptr %length, align 4
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %flags, align 2
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 8247335974903309929, ptr %extra, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8711_wx_set_rate(ptr noundef %dev, ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %datarates = alloca [13 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wrqu, align 4
  %fixed1 = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %2 = ptrtoint ptr %fixed1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fixed1, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %datarates) #19
  %4 = getelementptr inbounds [13 x i8], ptr %datarates, i32 0, i32 1
  %5 = getelementptr inbounds [13 x i8], ptr %datarates, i32 0, i32 2
  %6 = getelementptr inbounds [13 x i8], ptr %datarates, i32 0, i32 3
  %7 = getelementptr inbounds [13 x i8], ptr %datarates, i32 0, i32 4
  %8 = getelementptr inbounds [13 x i8], ptr %datarates, i32 0, i32 5
  %9 = getelementptr inbounds [13 x i8], ptr %datarates, i32 0, i32 6
  %10 = getelementptr inbounds [13 x i8], ptr %datarates, i32 0, i32 7
  %11 = getelementptr inbounds [13 x i8], ptr %datarates, i32 0, i32 8
  %12 = getelementptr inbounds [13 x i8], ptr %datarates, i32 0, i32 9
  %13 = getelementptr inbounds [13 x i8], ptr %datarates, i32 0, i32 10
  %14 = getelementptr inbounds [13 x i8], ptr %datarates, i32 0, i32 11
  %15 = getelementptr inbounds [13 x i8], ptr %datarates, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  %16 = call ptr @memset(ptr %datarates, i32 255, i32 13)
  br i1 %cmp, label %entry.if.then19_crit_edge, label %if.end

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then19

if.end:                                           ; preds = %entry
  %div = udiv i32 %1, 100000
  %trunc = trunc i32 %div to i16
  %17 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %trunc, label %if.end.if.then19_crit_edge [
    i16 10, label %if.end.for.inc.5_crit_edge
    i16 20, label %sw.bb3
    i16 55, label %sw.bb4
    i16 60, label %sw.bb5
    i16 90, label %sw.bb6
    i16 110, label %sw.bb7
    i16 120, label %if.then19.5
    i16 180, label %if.then19.4
    i16 240, label %if.then19.3
    i16 360, label %if.then19.2
    i16 480, label %if.then19.1
  ]

if.end.for.inc.5_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.5

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then19

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.5

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.5

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.5

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.5

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.5

if.then19:                                        ; preds = %if.end.if.then19_crit_edge, %entry.if.then19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp22 = icmp eq i8 %3, 0
  %18 = ptrtoint ptr %datarates to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 11, ptr %datarates, align 4
  br i1 %cmp22, label %if.then19.for.end_crit_edge, label %if.then19.for.inc.2.thread214_crit_edge

if.then19.for.inc.2.thread214_crit_edge:          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.2.thread214

if.then19.for.end_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.then19.1:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2251 = icmp eq i8 %3, 0
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %4, align 1
  br i1 %cmp2251, label %if.then19.1.for.end_crit_edge, label %if.then19.1.for.inc.2.thread214_crit_edge

if.then19.1.for.inc.2.thread214_crit_edge:        ; preds = %if.then19.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.2.thread214

if.then19.1.for.end_crit_edge:                    ; preds = %if.then19.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

if.then19.2:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2251132 = icmp eq i8 %3, 0
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 9, ptr %5, align 2
  br i1 %cmp2251132, label %if.then19.2.for.end_crit_edge, label %if.then19.2.for.inc.3.thread261_crit_edge

if.then19.2.for.inc.3.thread261_crit_edge:        ; preds = %if.then19.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.3.thread261

if.then19.2.for.end_crit_edge:                    ; preds = %if.then19.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.2.thread214:                              ; preds = %if.then19.1.for.inc.2.thread214_crit_edge, %if.then19.for.inc.2.thread214_crit_edge
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %5, align 2
  br label %for.inc.3.thread261

if.then19.3:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2251132186 = icmp eq i8 %3, 0
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %6, align 1
  br i1 %cmp2251132186, label %if.then19.3.for.end_crit_edge, label %if.then19.3.for.inc.4.thread303_crit_edge

if.then19.3.for.inc.4.thread303_crit_edge:        ; preds = %if.then19.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.4.thread303

if.then19.3.for.end_crit_edge:                    ; preds = %if.then19.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.3.thread261:                              ; preds = %for.inc.2.thread214, %if.then19.2.for.inc.3.thread261_crit_edge
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %6, align 1
  br label %for.inc.4.thread303

if.then19.4:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2251132186236 = icmp eq i8 %3, 0
  %24 = ptrtoint ptr %datarates to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %datarates, align 4
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 7, ptr %7, align 4
  br i1 %cmp2251132186236, label %if.then19.4.for.end_crit_edge, label %if.then19.4.for.inc.5.thread340_crit_edge

if.then19.4.for.inc.5.thread340_crit_edge:        ; preds = %if.then19.4
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.5.thread340

if.then19.4.for.end_crit_edge:                    ; preds = %if.then19.4
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.4.thread303:                              ; preds = %for.inc.3.thread261, %if.then19.3.for.inc.4.thread303_crit_edge
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %7, align 4
  br label %for.inc.5.thread340

if.then19.5:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2251132186236281 = icmp eq i8 %3, 0
  %27 = call ptr @memset(ptr %datarates, i32 255, i32 5)
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 6, ptr %8, align 1
  br i1 %cmp2251132186236281, label %if.then19.5.for.end_crit_edge, label %if.then19.5.if.else.10.thread_crit_edge

if.then19.5.if.else.10.thread_crit_edge:          ; preds = %if.then19.5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.10.thread

if.then19.5.for.end_crit_edge:                    ; preds = %if.then19.5
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.5.thread340:                              ; preds = %for.inc.4.thread303, %if.then19.4.for.inc.5.thread340_crit_edge
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %8, align 1
  br label %if.else.10.thread

for.inc.5:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %if.end.for.inc.5_crit_edge
  %cmp17.6.ph.ph.ph.ph.ph.ph = phi i1 [ false, %if.end.for.inc.5_crit_edge ], [ false, %sw.bb3 ], [ false, %sw.bb4 ], [ false, %sw.bb5 ], [ false, %sw.bb6 ], [ true, %sw.bb7 ]
  %cmp17.7.ph.ph.ph.ph.ph.ph = phi i1 [ false, %if.end.for.inc.5_crit_edge ], [ false, %sw.bb3 ], [ false, %sw.bb4 ], [ false, %sw.bb5 ], [ true, %sw.bb6 ], [ false, %sw.bb7 ]
  %cmp17.8.ph.ph.ph.ph.ph.ph = phi i1 [ false, %if.end.for.inc.5_crit_edge ], [ false, %sw.bb3 ], [ false, %sw.bb4 ], [ true, %sw.bb5 ], [ false, %sw.bb6 ], [ false, %sw.bb7 ]
  %cmp17.9.ph.ph.ph.ph.ph.ph = phi i1 [ false, %if.end.for.inc.5_crit_edge ], [ false, %sw.bb3 ], [ true, %sw.bb4 ], [ false, %sw.bb5 ], [ false, %sw.bb6 ], [ false, %sw.bb7 ]
  %cmp17.10.ph.ph.ph.ph.ph.ph = phi i1 [ false, %if.end.for.inc.5_crit_edge ], [ true, %sw.bb3 ], [ false, %sw.bb4 ], [ false, %sw.bb5 ], [ false, %sw.bb6 ], [ false, %sw.bb7 ]
  %cmp17.11.ph.ph.ph.ph.ph.ph = phi i1 [ true, %if.end.for.inc.5_crit_edge ], [ false, %sw.bb3 ], [ false, %sw.bb4 ], [ false, %sw.bb5 ], [ false, %sw.bb6 ], [ false, %sw.bb7 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2251132186236281321 = icmp eq i8 %3, 0
  %30 = call ptr @memset(ptr %datarates, i32 255, i32 6)
  br i1 %cmp17.6.ph.ph.ph.ph.ph.ph, label %if.then19.6, label %if.else.6

if.else.10.thread:                                ; preds = %for.inc.5.thread340, %if.then19.5.if.else.10.thread_crit_edge
  %31 = call ptr @memset(ptr %9, i32 255, i32 5)
  br label %for.inc.12.sink.split

if.else.6:                                        ; preds = %for.inc.5
  br i1 %cmp17.7.ph.ph.ph.ph.ph.ph, label %if.then19.7, label %if.else.6.if.else.7_crit_edge

if.else.6.if.else.7_crit_edge:                    ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.7

if.then19.6:                                      ; preds = %for.inc.5
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 5, ptr %9, align 2
  br i1 %cmp2251132186236281321, label %if.then19.6.for.end_crit_edge, label %for.inc.6

if.then19.6.for.end_crit_edge:                    ; preds = %if.then19.6
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.6:                                        ; preds = %if.then19.6
  br i1 %cmp17.7.ph.ph.ph.ph.ph.ph, label %if.then19.7.thread, label %for.inc.6.if.else.7_crit_edge

for.inc.6.if.else.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.7

if.then19.7.thread:                               ; preds = %for.inc.6
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %10, align 1
  br i1 %cmp17.8.ph.ph.ph.ph.ph.ph, label %if.then19.7.thread.if.then19.8.thread_crit_edge, label %if.then19.7.thread.if.else.8_crit_edge

if.then19.7.thread.if.else.8_crit_edge:           ; preds = %if.then19.7.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.8

if.then19.7.thread.if.then19.8.thread_crit_edge:  ; preds = %if.then19.7.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then19.8.thread

if.else.7:                                        ; preds = %for.inc.6.if.else.7_crit_edge, %if.else.6.if.else.7_crit_edge
  %cmp2281361 = phi i1 [ %cmp2251132186236281321, %if.else.6.if.else.7_crit_edge ], [ false, %for.inc.6.if.else.7_crit_edge ]
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %10, align 1
  br i1 %cmp17.8.ph.ph.ph.ph.ph.ph, label %if.then19.8, label %if.else.7.if.else.8_crit_edge

if.else.7.if.else.8_crit_edge:                    ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.8

if.then19.7:                                      ; preds = %if.else.6
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 4, ptr %10, align 1
  br i1 %cmp2251132186236281321, label %if.then19.7.for.end_crit_edge, label %for.inc.7

if.then19.7.for.end_crit_edge:                    ; preds = %if.then19.7
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.7:                                        ; preds = %if.then19.7
  br i1 %cmp17.8.ph.ph.ph.ph.ph.ph, label %for.inc.7.if.then19.8.thread_crit_edge, label %for.inc.7.if.else.8_crit_edge

for.inc.7.if.else.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.8

for.inc.7.if.then19.8.thread_crit_edge:           ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then19.8.thread

if.else.8:                                        ; preds = %for.inc.7.if.else.8_crit_edge, %if.else.7.if.else.8_crit_edge, %if.then19.7.thread.if.else.8_crit_edge
  %cmp2282377 = phi i1 [ %cmp2281361, %if.else.7.if.else.8_crit_edge ], [ false, %for.inc.7.if.else.8_crit_edge ], [ false, %if.then19.7.thread.if.else.8_crit_edge ]
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %11, align 4
  br i1 %cmp17.9.ph.ph.ph.ph.ph.ph, label %if.then19.9, label %if.else.8.if.else.9_crit_edge

if.else.8.if.else.9_crit_edge:                    ; preds = %if.else.8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.9

if.then19.8.thread:                               ; preds = %for.inc.7.if.then19.8.thread_crit_edge, %if.then19.7.thread.if.then19.8.thread_crit_edge
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %11, align 4
  br i1 %cmp17.9.ph.ph.ph.ph.ph.ph, label %if.then19.8.thread.if.then19.9.thread_crit_edge, label %if.then19.8.thread.if.else.9_crit_edge

if.then19.8.thread.if.else.9_crit_edge:           ; preds = %if.then19.8.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.9

if.then19.8.thread.if.then19.9.thread_crit_edge:  ; preds = %if.then19.8.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then19.9.thread

if.then19.8:                                      ; preds = %if.else.7
  %38 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %11, align 4
  br i1 %cmp2281361, label %if.then19.8.for.end_crit_edge, label %for.inc.8

if.then19.8.for.end_crit_edge:                    ; preds = %if.then19.8
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.8:                                        ; preds = %if.then19.8
  br i1 %cmp17.9.ph.ph.ph.ph.ph.ph, label %for.inc.8.if.then19.9.thread_crit_edge, label %for.inc.8.if.else.9_crit_edge

for.inc.8.if.else.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.9

for.inc.8.if.then19.9.thread_crit_edge:           ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then19.9.thread

if.else.9:                                        ; preds = %for.inc.8.if.else.9_crit_edge, %if.then19.8.thread.if.else.9_crit_edge, %if.else.8.if.else.9_crit_edge
  %cmp2283389 = phi i1 [ %cmp2282377, %if.else.8.if.else.9_crit_edge ], [ false, %for.inc.8.if.else.9_crit_edge ], [ false, %if.then19.8.thread.if.else.9_crit_edge ]
  %39 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %12, align 1
  br i1 %cmp17.10.ph.ph.ph.ph.ph.ph, label %if.then19.10, label %if.else.9.if.else.10_crit_edge

if.else.9.if.else.10_crit_edge:                   ; preds = %if.else.9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.10

if.then19.9.thread:                               ; preds = %for.inc.8.if.then19.9.thread_crit_edge, %if.then19.8.thread.if.then19.9.thread_crit_edge
  %40 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %12, align 1
  br i1 %cmp17.10.ph.ph.ph.ph.ph.ph, label %if.then19.9.thread.if.then19.10.thread_crit_edge, label %if.then19.9.thread.if.else.10_crit_edge

if.then19.9.thread.if.else.10_crit_edge:          ; preds = %if.then19.9.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.10

if.then19.9.thread.if.then19.10.thread_crit_edge: ; preds = %if.then19.9.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then19.10.thread

if.then19.9:                                      ; preds = %if.else.8
  %41 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %12, align 1
  br i1 %cmp2282377, label %if.then19.9.for.end_crit_edge, label %for.inc.9

if.then19.9.for.end_crit_edge:                    ; preds = %if.then19.9
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.9:                                        ; preds = %if.then19.9
  br i1 %cmp17.10.ph.ph.ph.ph.ph.ph, label %for.inc.9.if.then19.10.thread_crit_edge, label %for.inc.9.if.else.10_crit_edge

for.inc.9.if.else.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.10

for.inc.9.if.then19.10.thread_crit_edge:          ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then19.10.thread

if.else.10:                                       ; preds = %for.inc.9.if.else.10_crit_edge, %if.then19.9.thread.if.else.10_crit_edge, %if.else.9.if.else.10_crit_edge
  %cmp2284397 = phi i1 [ %cmp2283389, %if.else.9.if.else.10_crit_edge ], [ false, %for.inc.9.if.else.10_crit_edge ], [ false, %if.then19.9.thread.if.else.10_crit_edge ]
  %42 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %13, align 2
  br i1 %cmp17.11.ph.ph.ph.ph.ph.ph, label %if.then19.11, label %if.else.10.for.inc.12.sink.split_crit_edge

if.else.10.for.inc.12.sink.split_crit_edge:       ; preds = %if.else.10
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.12.sink.split

if.then19.10.thread:                              ; preds = %for.inc.9.if.then19.10.thread_crit_edge, %if.then19.9.thread.if.then19.10.thread_crit_edge
  %43 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %13, align 2
  br i1 %cmp17.11.ph.ph.ph.ph.ph.ph, label %if.then19.10.thread.if.then19.11.thread_crit_edge, label %if.then19.10.thread.for.inc.12.sink.split_crit_edge

if.then19.10.thread.for.inc.12.sink.split_crit_edge: ; preds = %if.then19.10.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.12.sink.split

if.then19.10.thread.if.then19.11.thread_crit_edge: ; preds = %if.then19.10.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then19.11.thread

if.then19.10:                                     ; preds = %if.else.9
  %44 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %13, align 2
  br i1 %cmp2283389, label %if.then19.10.for.end_crit_edge, label %for.inc.10

if.then19.10.for.end_crit_edge:                   ; preds = %if.then19.10
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.10:                                       ; preds = %if.then19.10
  br i1 %cmp17.11.ph.ph.ph.ph.ph.ph, label %for.inc.10.if.then19.11.thread_crit_edge, label %for.inc.10.for.inc.12.sink.split_crit_edge

for.inc.10.for.inc.12.sink.split_crit_edge:       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.12.sink.split

for.inc.10.if.then19.11.thread_crit_edge:         ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then19.11.thread

if.then19.11.thread:                              ; preds = %for.inc.10.if.then19.11.thread_crit_edge, %if.then19.10.thread.if.then19.11.thread_crit_edge
  br label %for.inc.12.sink.split

if.then19.11:                                     ; preds = %if.else.10
  %45 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %14, align 1
  br i1 %cmp2284397, label %if.then19.11.for.end_crit_edge, label %if.then19.11.for.inc.12_crit_edge

if.then19.11.for.inc.12_crit_edge:                ; preds = %if.then19.11
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.12

if.then19.11.for.end_crit_edge:                   ; preds = %if.then19.11
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.inc.12.sink.split:                            ; preds = %if.then19.11.thread, %for.inc.10.for.inc.12.sink.split_crit_edge, %if.then19.10.thread.for.inc.12.sink.split_crit_edge, %if.else.10.for.inc.12.sink.split_crit_edge, %if.else.10.thread
  %.sink = phi i8 [ 0, %if.then19.11.thread ], [ -1, %if.else.10.thread ], [ -1, %if.then19.10.thread.for.inc.12.sink.split_crit_edge ], [ -1, %if.else.10.for.inc.12.sink.split_crit_edge ], [ -1, %for.inc.10.for.inc.12.sink.split_crit_edge ]
  %46 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.sink, ptr %14, align 1
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.inc.12.sink.split, %if.then19.11.for.inc.12_crit_edge
  %47 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %15, align 4
  br label %for.end

for.end:                                          ; preds = %for.inc.12, %if.then19.11.for.end_crit_edge, %if.then19.10.for.end_crit_edge, %if.then19.9.for.end_crit_edge, %if.then19.8.for.end_crit_edge, %if.then19.7.for.end_crit_edge, %if.then19.6.for.end_crit_edge, %if.then19.5.for.end_crit_edge, %if.then19.4.for.end_crit_edge, %if.then19.3.for.end_crit_edge, %if.then19.2.for.end_crit_edge, %if.then19.1.for.end_crit_edge, %if.then19.for.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call28 = call i32 @r8712_setdatarate_cmd(ptr noundef %add.ptr.i, ptr noundef nonnull %datarates) #19
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %datarates) #19
  ret i32 %call28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8711_wx_get_rate(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %ht_ielen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rf_config = getelementptr i8, ptr %dev, i32 12715
  %0 = ptrtoint ptr %rf_config to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rf_config, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ht_ielen) #19
  %2 = ptrtoint ptr %ht_ielen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ht_ielen, align 4
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  %3 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %4, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %dev, i32 2748
  %IELength = getelementptr i8, ptr %dev, i32 2732
  %5 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %IELength, align 4
  %sub = add i32 %6, -12
  %call2 = call ptr @r8712_get_ie(ptr noundef %arrayidx, i32 noundef 45, ptr noundef nonnull %ht_ielen, i32 noundef %sub) #19
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %ht_ielen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ht_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %land.lhs.true.if.end13_crit_edge, label %if.then4

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr = getelementptr i8, ptr %call2, i32 2
  %mcs = getelementptr i8, ptr %call2, i32 5
  %9 = ptrtoint ptr %mcs to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %mcs_rate.0.copyload = load i16, ptr %mcs, align 1
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %add.ptr, align 1
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  %and = lshr i32 %conv, 1
  %and.lobit = and i32 %and, 1
  %and9 = and i32 %conv, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp ne i32 %and9, 0
  %cond11 = zext i1 %tobool10.not to i32
  %13 = and i16 %mcs_rate.0.copyload, -32768
  %phi.bo = zext i16 %13 to i32
  br label %if.end13

if.end13:                                         ; preds = %if.then4, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %tobool35.not = phi i1 [ false, %if.then4 ], [ true, %land.lhs.true.if.end13_crit_edge ], [ true, %if.end.if.end13_crit_edge ]
  %bw_40MHz.0 = phi i32 [ %and.lobit, %if.then4 ], [ 0, %land.lhs.true.if.end13_crit_edge ], [ 0, %if.end.if.end13_crit_edge ]
  %short_GI.0 = phi i32 [ %cond11, %if.then4 ], [ 0, %land.lhs.true.if.end13_crit_edge ], [ 0, %if.end.if.end13_crit_edge ]
  %mcs_rate.0 = phi i32 [ %phi.bo, %if.then4 ], [ 0, %land.lhs.true.if.end13_crit_edge ], [ 0, %if.end.if.end13_crit_edge ]
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end13
  %i.0 = phi i32 [ 0, %if.end13 ], [ %inc, %while.body ]
  %max_rate.0 = phi i16 [ 0, %if.end13 ], [ %19, %while.body ]
  %arrayidx14 = getelementptr %struct._adapter, ptr %add.ptr.i, i32 0, i32 1, i32 13, i32 6, i32 9, i32 %i.0
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %15, label %while.body [
    i8 0, label %while.cond.while.end_crit_edge
    i8 -1, label %while.cond.while.end_crit_edge111
  ]

while.cond.while.end_crit_edge111:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  %17 = and i8 %15, 127
  %conv28 = zext i8 %17 to i32
  %18 = zext i8 %17 to i16
  %19 = call i16 @llvm.umax.i16(i16 %max_rate.0, i16 %18)
  %20 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %fixed, align 4
  %mul = mul nuw nsw i32 %conv28, 500000
  %21 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul, ptr %wrqu, align 4
  %inc = add i32 %i.0, 1
  br label %while.cond

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.while.end_crit_edge111
  br i1 %tobool35.not, label %while.end.if.end72_crit_edge, label %if.then36

while.end.if.end72_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end72

if.then36:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mcs_rate.0)
  %tobool39.not = icmp ne i32 %mcs_rate.0, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp42 = icmp eq i8 %1, 2
  %or.cond = select i1 %tobool39.not, i1 %cmp42, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bw_40MHz.0)
  %tobool46.not = icmp eq i32 %bw_40MHz.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %short_GI.0)
  %tobool48.not = icmp eq i32 %short_GI.0, 0
  br i1 %or.cond, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #21
  %cond49 = select i1 %tobool48.not, i16 540, i16 600
  %cond52 = select i1 %tobool48.not, i16 260, i16 288
  %cond53 = select i1 %tobool46.not, i16 %cond52, i16 %cond49
  br label %if.end68

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #21
  %cond60 = select i1 %tobool48.not, i16 270, i16 300
  %cond64 = select i1 %tobool48.not, i16 130, i16 144
  %cond66 = select i1 %tobool46.not, i16 %cond64, i16 %cond60
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then44
  %max_rate.2 = phi i16 [ %cond53, %if.then44 ], [ %cond66, %if.else ]
  %conv69 = and i16 %max_rate.2, -2
  br label %if.end72

if.end72:                                         ; preds = %if.end68, %while.end.if.end72_crit_edge
  %max_rate.3 = phi i16 [ %conv69, %if.end68 ], [ %max_rate.0, %while.end.if.end72_crit_edge ]
  %conv73 = zext i16 %max_rate.3 to i32
  %mul74 = mul i32 %conv73, 500000
  %22 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul74, ptr %wrqu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end72 ], [ -67, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ht_ielen) #19
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8711_wx_get_rts(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rts_thresh = getelementptr i8, ptr %dev, i32 11800
  %0 = ptrtoint ptr %rts_thresh to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rts_thresh, align 8
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %wrqu, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %3 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fixed, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8711_wx_set_frag(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wrqu, align 4
  %4 = add i32 %3, -2347
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2091, i32 %4)
  %5 = icmp ult i32 %4, -2091
  br i1 %5, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %and = and i32 %3, -2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %and, %if.end ], [ 2346, %entry.cleanup.sink.split_crit_edge ]
  %frag_len = getelementptr i8, ptr %dev, i32 4916
  %6 = ptrtoint ptr %frag_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %frag_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8711_wx_get_frag(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %frag_len = getelementptr i8, ptr %dev, i32 4916
  %0 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frag_len, align 4
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %wrqu, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %3 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fixed, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @r8711_wx_get_retry(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 7, ptr %wrqu, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %1 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %fixed, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %disabled, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8711_wx_set_enc(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readonly %keybuf) #0 align 64 {
entry:
  %wep = alloca %struct.NDIS_802_11_WEP, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %wep) #19
  %0 = getelementptr inbounds %struct.NDIS_802_11_WEP, ptr %wep, i32 0, i32 1
  %1 = getelementptr inbounds %struct.NDIS_802_11_WEP, ptr %wep, i32 0, i32 2
  %2 = getelementptr inbounds %struct.NDIS_802_11_WEP, ptr %wep, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 2
  %5 = and i16 %4, 255
  %and = zext i16 %5 to i32
  %6 = call ptr @memset(ptr %wep, i32 0, i32 28)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool.not = icmp sgt i16 %4, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.r8711_wx_set_enc) #24
  %securitypriv = getelementptr i8, ptr %dev, i32 7104
  %ndisencryptstatus = getelementptr i8, ptr %dev, i32 7912
  %7 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ndisencryptstatus, align 8
  %PrivacyAlgrthm = getelementptr i8, ptr %dev, i32 7108
  %8 = ptrtoint ptr %PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %PrivacyAlgrthm, align 4
  %XGrpPrivacy = getelementptr i8, ptr %dev, i32 7196
  %9 = ptrtoint ptr %XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %XGrpPrivacy, align 4
  %10 = ptrtoint ptr %securitypriv to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %securitypriv, align 8
  %ndisauthtype = getelementptr i8, ptr %dev, i32 7908
  %11 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ndisauthtype, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool8.not = icmp eq i16 %5, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp = icmp ugt i16 %5, 4
  br i1 %cmp, label %if.then9.cleanup_crit_edge, label %if.end12

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end12:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #21
  %dec = add nsw i32 %and, -1
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %PrivacyKeyIndex = getelementptr i8, ptr %dev, i32 7112
  %12 = ptrtoint ptr %PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %PrivacyKeyIndex, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end12
  %key.0 = phi i32 [ %dec, %if.end12 ], [ %13, %if.else ]
  %conv16 = zext i16 %4 to i32
  %and17 = and i32 %conv16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else30, label %if.end14.if.end58.sink.split_crit_edge

if.end14.if.end58.sink.split_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end58.sink.split

if.else30:                                        ; preds = %if.end14
  %and33 = and i32 %conv16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else30.if.end58_crit_edge, label %if.else30.if.end58.sink.split_crit_edge

if.else30.if.end58.sink.split_crit_edge:          ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end58.sink.split

if.else30.if.end58_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end58

if.end58.sink.split:                              ; preds = %if.else30.if.end58.sink.split_crit_edge, %if.end14.if.end58.sink.split_crit_edge
  %.str.34.sink = phi ptr [ @.str.33, %if.end14.if.end58.sink.split_crit_edge ], [ @.str.34, %if.else30.if.end58.sink.split_crit_edge ]
  %.sink140.ph = phi i32 [ 0, %if.end14.if.end58.sink.split_crit_edge ], [ 1, %if.else30.if.end58.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull %.str.34.sink, ptr noundef nonnull @__func__.r8711_wx_set_enc) #24
  br label %if.end58

if.end58:                                         ; preds = %if.end58.sink.split, %if.else30.if.end58_crit_edge
  %.sink140 = phi i32 [ 0, %if.else30.if.end58_crit_edge ], [ %.sink140.ph, %if.end58.sink.split ]
  %securitypriv36 = getelementptr i8, ptr %dev, i32 7104
  %ndisencryptstatus37 = getelementptr i8, ptr %dev, i32 7912
  %14 = ptrtoint ptr %ndisencryptstatus37 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ndisencryptstatus37, align 8
  %15 = ptrtoint ptr %securitypriv36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink140, ptr %securitypriv36, align 8
  %PrivacyAlgrthm41 = getelementptr i8, ptr %dev, i32 7108
  %16 = ptrtoint ptr %PrivacyAlgrthm41 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink140, ptr %PrivacyAlgrthm41, align 4
  %XGrpPrivacy43 = getelementptr i8, ptr %dev, i32 7196
  %17 = ptrtoint ptr %XGrpPrivacy43 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink140, ptr %XGrpPrivacy43, align 4
  %ndisauthtype45 = getelementptr i8, ptr %dev, i32 7908
  %18 = ptrtoint ptr %ndisauthtype45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink140, ptr %ndisauthtype45, align 4
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp60.not = icmp eq i16 %20, 0
  br i1 %cmp60.not, label %if.else68, label %if.then62

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %20)
  %cmp65 = icmp ult i16 %20, 6
  %cond = select i1 %cmp65, i32 5, i32 13
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond, ptr %1, align 4
  %add = add nuw nsw i32 %cond, 12
  %22 = ptrtoint ptr %wep to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %wep, align 4
  br label %if.end84

if.else68:                                        ; preds = %if.end58
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %1, align 4
  br i1 %tobool8.not, label %if.else68.if.end84_crit_edge, label %if.then72

if.else68.if.end84_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end84

if.then72:                                        ; preds = %if.else68
  %PrivacyKeyIndex74 = getelementptr i8, ptr %dev, i32 7112
  %24 = ptrtoint ptr %PrivacyKeyIndex74 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %key.0, ptr %PrivacyKeyIndex74, align 8
  %arrayidx = getelementptr %struct._adapter, ptr %add.ptr.i, i32 0, i32 8, i32 4, i32 %key.0
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %26, label %sw.default [
    i32 5, label %sw.bb
    i32 13, label %sw.bb78
  ]

sw.bb:                                            ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #21
  %PrivacyAlgrthm77 = getelementptr i8, ptr %dev, i32 7108
  %28 = ptrtoint ptr %PrivacyAlgrthm77 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %PrivacyAlgrthm77, align 4
  br label %cleanup

sw.bb78:                                          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #21
  %PrivacyAlgrthm80 = getelementptr i8, ptr %dev, i32 7108
  %29 = ptrtoint ptr %PrivacyAlgrthm80 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %PrivacyAlgrthm80, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #21
  %PrivacyAlgrthm82 = getelementptr i8, ptr %dev, i32 7108
  %30 = ptrtoint ptr %PrivacyAlgrthm82 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %PrivacyAlgrthm82, align 4
  br label %cleanup

if.end84:                                         ; preds = %if.else68.if.end84_crit_edge, %if.then62
  %or = or i32 %key.0, -2147483648
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or, ptr %0, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  %34 = call ptr @memcpy(ptr %2, ptr %keybuf, i32 %33)
  %call87 = call i32 @r8712_set_802_11_add_wep(ptr noundef %add.ptr.i, ptr noundef nonnull %wep) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  %. = select i1 %tobool88.not, i32 0, i32 -95
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %sw.default, %sw.bb78, %sw.bb, %if.then9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.then9.cleanup_crit_edge ], [ 0, %sw.default ], [ 0, %sw.bb78 ], [ 0, %sw.bb ], [ %., %if.end84 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %wep) #19
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8711_wx_get_enc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef writeonly %keybuf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %DefKey = getelementptr i8, ptr %dev, i32 7116
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_state.i, align 8
  %2 = and i32 %1, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %length, align 4
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = or i16 %6, -32768
  store i16 %7, ptr %flags, align 2
  br label %cleanup

if.end6:                                          ; preds = %entry
  %flags7 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %8 = ptrtoint ptr %flags7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags7, align 2
  %10 = and i16 %9, 255
  %and = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool9.not = icmp eq i16 %10, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %10)
  %cmp = icmp ugt i16 %10, 4
  br i1 %cmp, label %if.then10.cleanup_crit_edge, label %if.end13

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end13:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #21
  %dec = add nsw i32 %and, -1
  br label %if.end15

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  %PrivacyKeyIndex = getelementptr i8, ptr %dev, i32 7112
  %11 = ptrtoint ptr %PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %PrivacyKeyIndex, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end13
  %key.0 = phi i32 [ %dec, %if.end13 ], [ %12, %if.else ]
  %13 = trunc i32 %key.0 to i16
  %conv16 = add i16 %13, 1
  %14 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv16, ptr %flags7, align 2
  %ndisencryptstatus = getelementptr i8, ptr %dev, i32 7912
  %15 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndisencryptstatus, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %16, label %sw.default [
    i32 3, label %if.end15.sw.bb_crit_edge
    i32 1, label %if.end15.sw.bb_crit_edge116
    i32 0, label %sw.bb24
    i32 4, label %if.end15.sw.bb67_crit_edge
    i32 6, label %if.end15.sw.bb67_crit_edge117
  ]

if.end15.sw.bb67_crit_edge117:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb67

if.end15.sw.bb67_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb67

if.end15.sw.bb_crit_edge116:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb

if.end15.sw.bb_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb

sw.bb:                                            ; preds = %if.end15.sw.bb_crit_edge, %if.end15.sw.bb_crit_edge116
  %length19 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %18 = ptrtoint ptr %length19 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %length19, align 4
  %19 = or i16 %conv16, -32768
  %20 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %flags7, align 2
  br label %cleanup

sw.bb24:                                          ; preds = %if.end15
  %arrayidx = getelementptr %struct._adapter, ptr %add.ptr.i, i32 0, i32 8, i32 4, i32 %key.0
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %conv26 = trunc i32 %22 to i16
  %length27 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %23 = ptrtoint ptr %length27 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv26, ptr %length27, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv26)
  %tobool29.not = icmp eq i16 %conv26, 0
  br i1 %tobool29.not, label %if.else60, label %if.then30

if.then30:                                        ; preds = %sw.bb24
  %arrayidx31 = getelementptr %union.Keytype, ptr %DefKey, i32 %key.0
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %26 = call ptr @memcpy(ptr %keybuf, ptr %arrayidx31, i32 %25)
  %27 = ptrtoint ptr %flags7 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags7, align 2
  %ndisauthtype = getelementptr i8, ptr %dev, i32 7908
  %29 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ndisauthtype, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %30, label %if.then30.cleanup_crit_edge [
    i32 0, label %if.then43
    i32 1, label %if.then53
  ]

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then43:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #21
  %32 = or i16 %28, 8192
  %33 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %flags7, align 2
  br label %cleanup

if.then53:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #21
  %or56 = or i16 %28, 16384
  %34 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %or56, ptr %flags7, align 2
  br label %cleanup

if.else60:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #21
  %35 = ptrtoint ptr %length27 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %length27, align 4
  %36 = or i16 %conv16, -32768
  %37 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %flags7, align 2
  br label %cleanup

sw.bb67:                                          ; preds = %if.end15.sw.bb67_crit_edge, %if.end15.sw.bb67_crit_edge117
  %length68 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %38 = ptrtoint ptr %length68 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 16, ptr %length68, align 4
  %39 = or i16 %conv16, 10240
  %40 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %flags7, align 2
  br label %cleanup

sw.default:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  %length73 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %41 = ptrtoint ptr %length73 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %length73, align 4
  %42 = or i16 %conv16, -32768
  %43 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %flags7, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb67, %if.else60, %if.then53, %if.then43, %if.then30.cleanup_crit_edge, %sw.bb, %if.then10.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ -22, %if.then10.cleanup_crit_edge ], [ 0, %if.then30.cleanup_crit_edge ], [ 0, %if.else60 ], [ 0, %if.then53 ], [ 0, %if.then43 ], [ 0, %sw.default ], [ 0, %sw.bb67 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @r8711_wx_get_power(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wrqu, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %1 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %fixed, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %disabled, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871x_wx_set_gen_ie(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr noundef %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 4
  %call1 = tail call fastcc i32 @r871x_set_wpa_ie(ptr noundef %add.ptr.i, ptr noundef %extra, i16 noundef zeroext %1)
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r871x_wx_set_auth(ptr nocapture noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 4095
  %and = zext i16 %2 to i32
  %3 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wrqu, align 4
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge34
    i32 2, label %entry.sw.epilog_crit_edge35
    i32 3, label %entry.sw.epilog_crit_edge36
    i32 4, label %sw.bb
    i32 5, label %sw.bb3
    i32 6, label %sw.bb17
    i32 7, label %entry.sw.epilog_crit_edge37
    i32 8, label %entry.sw.epilog_crit_edge38
    i32 10, label %entry.sw.epilog_crit_edge39
  ]

entry.sw.epilog_crit_edge39:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

entry.sw.epilog_crit_edge38:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

entry.sw.epilog_crit_edge37:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

entry.sw.epilog_crit_edge36:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

entry.sw.epilog_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

entry.sw.epilog_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %btkip_countermeasure2 = getelementptr i8, ptr %dev, i32 10712
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %6 = ptrtoint ptr %btkip_countermeasure2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %btkip_countermeasure2, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %7 = ptrtoint ptr %btkip_countermeasure2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %btkip_countermeasure2, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %ndisencryptstatus = getelementptr i8, ptr %dev, i32 7912
  %8 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ndisencryptstatus, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %sw.bb3.sw.epilog_crit_edge, label %if.then9

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #21
  %securitypriv4 = getelementptr i8, ptr %dev, i32 7104
  %10 = ptrtoint ptr %ndisencryptstatus to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %ndisencryptstatus, align 8
  %PrivacyAlgrthm = getelementptr i8, ptr %dev, i32 7108
  %11 = ptrtoint ptr %PrivacyAlgrthm to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %PrivacyAlgrthm, align 4
  %XGrpPrivacy = getelementptr i8, ptr %dev, i32 7196
  %12 = ptrtoint ptr %XGrpPrivacy to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %XGrpPrivacy, align 4
  %13 = ptrtoint ptr %securitypriv4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %securitypriv4, align 8
  %ndisauthtype = getelementptr i8, ptr %dev, i32 7908
  %14 = ptrtoint ptr %ndisauthtype to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ndisauthtype, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %15 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %.not.i = icmp eq i32 %15, 3
  br i1 %.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #21
  %securitypriv.i = getelementptr i8, ptr %dev, i32 7104
  %ndisencryptstatus.i = getelementptr i8, ptr %dev, i32 7912
  %16 = ptrtoint ptr %ndisencryptstatus.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ndisencryptstatus.i, align 8
  %ndisauthtype.i = getelementptr i8, ptr %dev, i32 7908
  %17 = ptrtoint ptr %ndisauthtype.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %ndisauthtype.i, align 4
  %18 = ptrtoint ptr %securitypriv.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %securitypriv.i, align 8
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb17
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else14.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %securitypriv8.i = getelementptr i8, ptr %dev, i32 7104
  %ndisencryptstatus9.i = getelementptr i8, ptr %dev, i32 7912
  %19 = ptrtoint ptr %ndisencryptstatus9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ndisencryptstatus9.i, align 8
  %ndisauthtype11.i = getelementptr i8, ptr %dev, i32 7908
  %20 = ptrtoint ptr %ndisauthtype11.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %ndisauthtype11.i, align 4
  %21 = ptrtoint ptr %securitypriv8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %securitypriv8.i, align 8
  br label %sw.epilog

if.else14.i:                                      ; preds = %if.else.i
  br i1 %tobool2.not.i, label %if.else14.i.sw.epilog_crit_edge, label %if.then17.i

if.else14.i.sw.epilog_crit_edge:                  ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then17.i:                                      ; preds = %if.else14.i
  %ndisauthtype19.i = getelementptr i8, ptr %dev, i32 7908
  %22 = ptrtoint ptr %ndisauthtype19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ndisauthtype19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp.i = icmp ult i32 %23, 4
  br i1 %cmp.i, label %if.then20.i, label %if.then17.i.sw.epilog_crit_edge

if.then17.i.sw.epilog_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #21
  %securitypriv18.i = getelementptr i8, ptr %dev, i32 7104
  %24 = ptrtoint ptr %ndisauthtype19.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ndisauthtype19.i, align 4
  %25 = ptrtoint ptr %securitypriv18.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %securitypriv18.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then20.i, %if.then17.i.sw.epilog_crit_edge, %if.else14.i.sw.epilog_crit_edge, %if.then7.i, %if.then.i, %if.then9, %sw.bb3.sw.epilog_crit_edge, %if.else, %if.then, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge34, %entry.sw.epilog_crit_edge35, %entry.sw.epilog_crit_edge36, %entry.sw.epilog_crit_edge37, %entry.sw.epilog_crit_edge38, %entry.sw.epilog_crit_edge39
  %ret.0 = phi i32 [ 0, %sw.bb3.sw.epilog_crit_edge ], [ 0, %if.then9 ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge34 ], [ 0, %entry.sw.epilog_crit_edge35 ], [ 0, %entry.sw.epilog_crit_edge36 ], [ 0, %entry.sw.epilog_crit_edge37 ], [ 0, %entry.sw.epilog_crit_edge38 ], [ 0, %entry.sw.epilog_crit_edge39 ], [ 0, %if.then.i ], [ 0, %if.then7.i ], [ 0, %if.then20.i ], [ 0, %if.then17.i.sw.epilog_crit_edge ], [ -22, %if.else14.i.sw.epilog_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871x_wx_set_enc_ext(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %alg = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %0 = ptrtoint ptr %alg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %alg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %2 = icmp ult i16 %1, 4
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %3 = sext i16 %1 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.r871x_wx_set_enc_ext, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %key_len = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %5 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %key_len, align 2
  %conv4 = zext i16 %6 to i32
  %add = add nuw nsw i32 %conv4, 48
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2848) #27
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %switch.lookup.cleanup_crit_edge, label %if.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %7 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %call9.i.i, align 128
  %sta_addr = getelementptr inbounds %struct.ieee_param, ptr %call9.i.i, i32 0, i32 1
  %8 = call ptr @memset(ptr %sta_addr, i32 255, i32 6)
  %u = getelementptr inbounds %struct.ieee_param, ptr %call9.i.i, i32 0, i32 2
  %call7 = tail call i32 @strscpy(ptr noundef %u, ptr noundef nonnull %switch.load, i32 noundef 16) #19
  %9 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %extra, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %set_tx = getelementptr inbounds %struct.ieee_param, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 1, i32 12
  %11 = ptrtoint ptr %set_tx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %set_tx, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %and13 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.if.end18_crit_edge, label %if.then15

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %set_tx17 = getelementptr inbounds %struct.ieee_param, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %set_tx17 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %set_tx17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end11.if.end18_crit_edge
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 2
  %and20 = trunc i16 %14 to i8
  %sub = add i8 %and20, -1
  %idx = getelementptr inbounds %struct.ieee_param, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 1, i32 20
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %sub, ptr %idx, align 4
  %and24 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end18.if.end30_crit_edge, label %if.then26

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  %seq = getelementptr inbounds %struct.ieee_param, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 1, i32 21
  %rx_seq = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 2
  %16 = ptrtoint ptr %rx_seq to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %rx_seq, align 4
  %18 = ptrtoint ptr %seq to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %seq, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end18.if.end30_crit_edge
  %19 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %key_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool32.not = icmp eq i16 %20, 0
  br i1 %tobool32.not, label %if.end30.if.end40_crit_edge, label %if.then33

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end40

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  %key_len36 = getelementptr inbounds %struct.ieee_param, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 1, i32 30
  %21 = ptrtoint ptr %key_len36 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %key_len36, align 2
  %add.ptr = getelementptr %struct.ieee_param, ptr %call9.i.i, i32 1
  %add.ptr37 = getelementptr %struct.iw_encode_ext, ptr %extra, i32 1
  %conv39 = zext i16 %20 to i32
  %22 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr37, i32 %conv39)
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.end30.if.end40_crit_edge
  %call41 = tail call fastcc i32 @wpa_set_encryption(ptr noundef %dev, ptr noundef nonnull %call9.i.i, i32 noundef %add)
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end40 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871x_wx_set_pmkid(ptr noundef %dev, ptr nocapture noundef readnone %a, ptr nocapture noundef readnone %wrqu, ptr noundef readonly %extra) #0 align 64 {
entry:
  %strZeroMacAddress = alloca [6 x i8], align 1
  %strIssueBssid = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %PMKIDList = getelementptr i8, ptr %dev, i32 10720
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %strZeroMacAddress) #19
  %0 = call ptr @memset(ptr %strZeroMacAddress, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %strIssueBssid) #19
  %tobool.not = icmp eq ptr %extra, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.iw_pmksa, ptr %extra, i32 0, i32 1, i32 1
  %1 = call ptr @memcpy(ptr %strIssueBssid, ptr %sa_data, i32 6)
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %for.body60.preheader
    i32 3, label %sw.bb80
  ]

for.body60.preheader:                             ; preds = %if.end
  %Bssid63 = getelementptr i8, ptr %dev, i32 10721
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool67.not = icmp eq i32 %bcmp, 0
  br i1 %tobool67.not, label %for.body60.preheader.if.then68_crit_edge, label %for.cond56

for.body60.preheader.if.then68_crit_edge:         ; preds = %for.body60.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

sw.bb:                                            ; preds = %if.end
  %bcmp128 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %strIssueBssid, ptr noundef nonnull dereferenceable(6) %strZeroMacAddress, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp128)
  %tobool6.not = icmp eq i32 %bcmp128, 0
  br i1 %tobool6.not, label %sw.bb.cleanup_crit_edge, label %for.body.preheader

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.preheader:                               ; preds = %sw.bb
  %Bssid = getelementptr i8, ptr %dev, i32 10721
  %bcmp129 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129)
  %tobool13.not = icmp eq i32 %bcmp129, 0
  br i1 %tobool13.not, label %for.body.preheader.if.then14_crit_edge, label %for.inc

for.body.preheader.if.then14_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

if.then14:                                        ; preds = %for.inc.14.if.then14_crit_edge, %for.inc.13.if.then14_crit_edge, %for.inc.12.if.then14_crit_edge, %for.inc.11.if.then14_crit_edge, %for.inc.10.if.then14_crit_edge, %for.inc.9.if.then14_crit_edge, %for.inc.8.if.then14_crit_edge, %for.inc.7.if.then14_crit_edge, %for.inc.6.if.then14_crit_edge, %for.inc.5.if.then14_crit_edge, %for.inc.4.if.then14_crit_edge, %for.inc.3.if.then14_crit_edge, %for.inc.2.if.then14_crit_edge, %for.inc.1.if.then14_crit_edge, %for.inc.if.then14_crit_edge, %for.body.preheader.if.then14_crit_edge
  %conv134.lcssa = phi i32 [ 0, %for.body.preheader.if.then14_crit_edge ], [ 1, %for.inc.if.then14_crit_edge ], [ 2, %for.inc.1.if.then14_crit_edge ], [ 3, %for.inc.2.if.then14_crit_edge ], [ 4, %for.inc.3.if.then14_crit_edge ], [ 5, %for.inc.4.if.then14_crit_edge ], [ 6, %for.inc.5.if.then14_crit_edge ], [ 7, %for.inc.6.if.then14_crit_edge ], [ 8, %for.inc.7.if.then14_crit_edge ], [ 9, %for.inc.8.if.then14_crit_edge ], [ 10, %for.inc.9.if.then14_crit_edge ], [ 11, %for.inc.10.if.then14_crit_edge ], [ 12, %for.inc.11.if.then14_crit_edge ], [ 13, %for.inc.12.if.then14_crit_edge ], [ 14, %for.inc.13.if.then14_crit_edge ], [ 15, %for.inc.14.if.then14_crit_edge ]
  %5 = trunc i32 %conv134.lcssa to i8
  %arrayidx = getelementptr %struct.RT_PMKID_LIST, ptr %PMKIDList, i32 %conv134.lcssa
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.r871x_wx_set_pmkid) #24
  %PMKID = getelementptr %struct.RT_PMKID_LIST, ptr %PMKIDList, i32 %conv134.lcssa, i32 2
  %pmkid = getelementptr inbounds %struct.iw_pmksa, ptr %extra, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %PMKID, ptr %pmkid, i32 16)
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx, align 4
  %add = add nuw nsw i8 %5, 1
  %PMKIDIndex = getelementptr i8, ptr %dev, i32 11744
  %8 = ptrtoint ptr %PMKIDIndex to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %add, ptr %PMKIDIndex, align 8
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %Bssid.1 = getelementptr i8, ptr %dev, i32 10785
  %bcmp129.1 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.1, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.1)
  %tobool13.not.1 = icmp eq i32 %bcmp129.1, 0
  br i1 %tobool13.not.1, label %for.inc.if.then14_crit_edge, label %for.inc.1

for.inc.if.then14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.1:                                        ; preds = %for.inc
  %Bssid.2 = getelementptr i8, ptr %dev, i32 10849
  %bcmp129.2 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.2, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.2)
  %tobool13.not.2 = icmp eq i32 %bcmp129.2, 0
  br i1 %tobool13.not.2, label %for.inc.1.if.then14_crit_edge, label %for.inc.2

for.inc.1.if.then14_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.2:                                        ; preds = %for.inc.1
  %Bssid.3 = getelementptr i8, ptr %dev, i32 10913
  %bcmp129.3 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.3, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.3)
  %tobool13.not.3 = icmp eq i32 %bcmp129.3, 0
  br i1 %tobool13.not.3, label %for.inc.2.if.then14_crit_edge, label %for.inc.3

for.inc.2.if.then14_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.3:                                        ; preds = %for.inc.2
  %Bssid.4 = getelementptr i8, ptr %dev, i32 10977
  %bcmp129.4 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.4, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.4)
  %tobool13.not.4 = icmp eq i32 %bcmp129.4, 0
  br i1 %tobool13.not.4, label %for.inc.3.if.then14_crit_edge, label %for.inc.4

for.inc.3.if.then14_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.4:                                        ; preds = %for.inc.3
  %Bssid.5 = getelementptr i8, ptr %dev, i32 11041
  %bcmp129.5 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.5, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.5)
  %tobool13.not.5 = icmp eq i32 %bcmp129.5, 0
  br i1 %tobool13.not.5, label %for.inc.4.if.then14_crit_edge, label %for.inc.5

for.inc.4.if.then14_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.5:                                        ; preds = %for.inc.4
  %Bssid.6 = getelementptr i8, ptr %dev, i32 11105
  %bcmp129.6 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.6, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.6)
  %tobool13.not.6 = icmp eq i32 %bcmp129.6, 0
  br i1 %tobool13.not.6, label %for.inc.5.if.then14_crit_edge, label %for.inc.6

for.inc.5.if.then14_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.6:                                        ; preds = %for.inc.5
  %Bssid.7 = getelementptr i8, ptr %dev, i32 11169
  %bcmp129.7 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.7, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.7)
  %tobool13.not.7 = icmp eq i32 %bcmp129.7, 0
  br i1 %tobool13.not.7, label %for.inc.6.if.then14_crit_edge, label %for.inc.7

for.inc.6.if.then14_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.7:                                        ; preds = %for.inc.6
  %Bssid.8 = getelementptr i8, ptr %dev, i32 11233
  %bcmp129.8 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.8, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.8)
  %tobool13.not.8 = icmp eq i32 %bcmp129.8, 0
  br i1 %tobool13.not.8, label %for.inc.7.if.then14_crit_edge, label %for.inc.8

for.inc.7.if.then14_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.8:                                        ; preds = %for.inc.7
  %Bssid.9 = getelementptr i8, ptr %dev, i32 11297
  %bcmp129.9 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.9, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.9)
  %tobool13.not.9 = icmp eq i32 %bcmp129.9, 0
  br i1 %tobool13.not.9, label %for.inc.8.if.then14_crit_edge, label %for.inc.9

for.inc.8.if.then14_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.9:                                        ; preds = %for.inc.8
  %Bssid.10 = getelementptr i8, ptr %dev, i32 11361
  %bcmp129.10 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.10, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.10)
  %tobool13.not.10 = icmp eq i32 %bcmp129.10, 0
  br i1 %tobool13.not.10, label %for.inc.9.if.then14_crit_edge, label %for.inc.10

for.inc.9.if.then14_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.10:                                       ; preds = %for.inc.9
  %Bssid.11 = getelementptr i8, ptr %dev, i32 11425
  %bcmp129.11 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.11, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.11)
  %tobool13.not.11 = icmp eq i32 %bcmp129.11, 0
  br i1 %tobool13.not.11, label %for.inc.10.if.then14_crit_edge, label %for.inc.11

for.inc.10.if.then14_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.11:                                       ; preds = %for.inc.10
  %Bssid.12 = getelementptr i8, ptr %dev, i32 11489
  %bcmp129.12 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.12, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.12)
  %tobool13.not.12 = icmp eq i32 %bcmp129.12, 0
  br i1 %tobool13.not.12, label %for.inc.11.if.then14_crit_edge, label %for.inc.12

for.inc.11.if.then14_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.12:                                       ; preds = %for.inc.11
  %Bssid.13 = getelementptr i8, ptr %dev, i32 11553
  %bcmp129.13 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.13, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.13)
  %tobool13.not.13 = icmp eq i32 %bcmp129.13, 0
  br i1 %tobool13.not.13, label %for.inc.12.if.then14_crit_edge, label %for.inc.13

for.inc.12.if.then14_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.13:                                       ; preds = %for.inc.12
  %Bssid.14 = getelementptr i8, ptr %dev, i32 11617
  %bcmp129.14 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.14, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.14)
  %tobool13.not.14 = icmp eq i32 %bcmp129.14, 0
  br i1 %tobool13.not.14, label %for.inc.13.if.then14_crit_edge, label %for.inc.14

for.inc.13.if.then14_crit_edge:                   ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.14:                                       ; preds = %for.inc.13
  %Bssid.15 = getelementptr i8, ptr %dev, i32 11681
  %bcmp129.15 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid.15, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp129.15)
  %tobool13.not.15 = icmp eq i32 %bcmp129.15, 0
  br i1 %tobool13.not.15, label %for.inc.14.if.then14_crit_edge, label %for.inc.15

for.inc.14.if.then14_crit_edge:                   ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then14

for.inc.15:                                       ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #21
  %PMKIDIndex26 = getelementptr i8, ptr %dev, i32 11744
  %9 = ptrtoint ptr %PMKIDIndex26 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %PMKIDIndex26, align 8
  %conv27 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.r871x_wx_set_pmkid, i32 noundef %conv27) #24
  %11 = ptrtoint ptr %PMKIDIndex26 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %PMKIDIndex26, align 8
  %idxprom29 = zext i8 %12 to i32
  %Bssid31 = getelementptr %struct.RT_PMKID_LIST, ptr %PMKIDList, i32 %idxprom29, i32 1
  %13 = call ptr @memcpy(ptr %Bssid31, ptr %strIssueBssid, i32 6)
  %PMKID37 = getelementptr %struct.RT_PMKID_LIST, ptr %PMKIDList, i32 %idxprom29, i32 2
  %pmkid39 = getelementptr inbounds %struct.iw_pmksa, ptr %extra, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %PMKID37, ptr %pmkid39, i32 16)
  %arrayidx43 = getelementptr %struct.RT_PMKID_LIST, ptr %PMKIDList, i32 %idxprom29
  %15 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx43, align 4
  %16 = load i8, ptr %PMKIDIndex26, align 8
  %inc46 = add i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %inc46)
  %cmp49 = icmp eq i8 %inc46, 16
  %spec.store.select = select i1 %cmp49, i8 0, i8 %inc46
  %17 = ptrtoint ptr %PMKIDIndex26 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.store.select, ptr %PMKIDIndex26, align 8
  br label %cleanup

for.cond56:                                       ; preds = %for.body60.preheader
  %Bssid63.1 = getelementptr i8, ptr %dev, i32 10785
  %bcmp.1 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.1, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool67.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool67.not.1, label %for.cond56.if.then68_crit_edge, label %for.cond56.1

for.cond56.if.then68_crit_edge:                   ; preds = %for.cond56
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.1:                                     ; preds = %for.cond56
  %Bssid63.2 = getelementptr i8, ptr %dev, i32 10849
  %bcmp.2 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.2, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %tobool67.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool67.not.2, label %for.cond56.1.if.then68_crit_edge, label %for.cond56.2

for.cond56.1.if.then68_crit_edge:                 ; preds = %for.cond56.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.2:                                     ; preds = %for.cond56.1
  %Bssid63.3 = getelementptr i8, ptr %dev, i32 10913
  %bcmp.3 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.3, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3)
  %tobool67.not.3 = icmp eq i32 %bcmp.3, 0
  br i1 %tobool67.not.3, label %for.cond56.2.if.then68_crit_edge, label %for.cond56.3

for.cond56.2.if.then68_crit_edge:                 ; preds = %for.cond56.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.3:                                     ; preds = %for.cond56.2
  %Bssid63.4 = getelementptr i8, ptr %dev, i32 10977
  %bcmp.4 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.4, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.4)
  %tobool67.not.4 = icmp eq i32 %bcmp.4, 0
  br i1 %tobool67.not.4, label %for.cond56.3.if.then68_crit_edge, label %for.cond56.4

for.cond56.3.if.then68_crit_edge:                 ; preds = %for.cond56.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.4:                                     ; preds = %for.cond56.3
  %Bssid63.5 = getelementptr i8, ptr %dev, i32 11041
  %bcmp.5 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.5, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.5)
  %tobool67.not.5 = icmp eq i32 %bcmp.5, 0
  br i1 %tobool67.not.5, label %for.cond56.4.if.then68_crit_edge, label %for.cond56.5

for.cond56.4.if.then68_crit_edge:                 ; preds = %for.cond56.4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.5:                                     ; preds = %for.cond56.4
  %Bssid63.6 = getelementptr i8, ptr %dev, i32 11105
  %bcmp.6 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.6, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.6)
  %tobool67.not.6 = icmp eq i32 %bcmp.6, 0
  br i1 %tobool67.not.6, label %for.cond56.5.if.then68_crit_edge, label %for.cond56.6

for.cond56.5.if.then68_crit_edge:                 ; preds = %for.cond56.5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.6:                                     ; preds = %for.cond56.5
  %Bssid63.7 = getelementptr i8, ptr %dev, i32 11169
  %bcmp.7 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.7, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.7)
  %tobool67.not.7 = icmp eq i32 %bcmp.7, 0
  br i1 %tobool67.not.7, label %for.cond56.6.if.then68_crit_edge, label %for.cond56.7

for.cond56.6.if.then68_crit_edge:                 ; preds = %for.cond56.6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.7:                                     ; preds = %for.cond56.6
  %Bssid63.8 = getelementptr i8, ptr %dev, i32 11233
  %bcmp.8 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.8, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.8)
  %tobool67.not.8 = icmp eq i32 %bcmp.8, 0
  br i1 %tobool67.not.8, label %for.cond56.7.if.then68_crit_edge, label %for.cond56.8

for.cond56.7.if.then68_crit_edge:                 ; preds = %for.cond56.7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.8:                                     ; preds = %for.cond56.7
  %Bssid63.9 = getelementptr i8, ptr %dev, i32 11297
  %bcmp.9 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.9, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.9)
  %tobool67.not.9 = icmp eq i32 %bcmp.9, 0
  br i1 %tobool67.not.9, label %for.cond56.8.if.then68_crit_edge, label %for.cond56.9

for.cond56.8.if.then68_crit_edge:                 ; preds = %for.cond56.8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.9:                                     ; preds = %for.cond56.8
  %Bssid63.10 = getelementptr i8, ptr %dev, i32 11361
  %bcmp.10 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.10, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.10)
  %tobool67.not.10 = icmp eq i32 %bcmp.10, 0
  br i1 %tobool67.not.10, label %for.cond56.9.if.then68_crit_edge, label %for.cond56.10

for.cond56.9.if.then68_crit_edge:                 ; preds = %for.cond56.9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.10:                                    ; preds = %for.cond56.9
  %Bssid63.11 = getelementptr i8, ptr %dev, i32 11425
  %bcmp.11 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.11, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.11)
  %tobool67.not.11 = icmp eq i32 %bcmp.11, 0
  br i1 %tobool67.not.11, label %for.cond56.10.if.then68_crit_edge, label %for.cond56.11

for.cond56.10.if.then68_crit_edge:                ; preds = %for.cond56.10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.11:                                    ; preds = %for.cond56.10
  %Bssid63.12 = getelementptr i8, ptr %dev, i32 11489
  %bcmp.12 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.12, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.12)
  %tobool67.not.12 = icmp eq i32 %bcmp.12, 0
  br i1 %tobool67.not.12, label %for.cond56.11.if.then68_crit_edge, label %for.cond56.12

for.cond56.11.if.then68_crit_edge:                ; preds = %for.cond56.11
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.12:                                    ; preds = %for.cond56.11
  %Bssid63.13 = getelementptr i8, ptr %dev, i32 11553
  %bcmp.13 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.13, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.13)
  %tobool67.not.13 = icmp eq i32 %bcmp.13, 0
  br i1 %tobool67.not.13, label %for.cond56.12.if.then68_crit_edge, label %for.cond56.13

for.cond56.12.if.then68_crit_edge:                ; preds = %for.cond56.12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.13:                                    ; preds = %for.cond56.12
  %Bssid63.14 = getelementptr i8, ptr %dev, i32 11617
  %bcmp.14 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.14, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.14)
  %tobool67.not.14 = icmp eq i32 %bcmp.14, 0
  br i1 %tobool67.not.14, label %for.cond56.13.if.then68_crit_edge, label %for.cond56.14

for.cond56.13.if.then68_crit_edge:                ; preds = %for.cond56.13
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

for.cond56.14:                                    ; preds = %for.cond56.13
  %Bssid63.15 = getelementptr i8, ptr %dev, i32 11681
  %bcmp.15 = call i32 @bcmp(ptr noundef dereferenceable(6) %Bssid63.15, ptr noundef nonnull dereferenceable(6) %strIssueBssid, i32 6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.15)
  %tobool67.not.15 = icmp eq i32 %bcmp.15, 0
  br i1 %tobool67.not.15, label %for.cond56.14.if.then68_crit_edge, label %for.cond56.14.cleanup_crit_edge

for.cond56.14.cleanup_crit_edge:                  ; preds = %for.cond56.14
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond56.14.if.then68_crit_edge:                ; preds = %for.cond56.14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then68

if.then68:                                        ; preds = %for.cond56.14.if.then68_crit_edge, %for.cond56.13.if.then68_crit_edge, %for.cond56.12.if.then68_crit_edge, %for.cond56.11.if.then68_crit_edge, %for.cond56.10.if.then68_crit_edge, %for.cond56.9.if.then68_crit_edge, %for.cond56.8.if.then68_crit_edge, %for.cond56.7.if.then68_crit_edge, %for.cond56.6.if.then68_crit_edge, %for.cond56.5.if.then68_crit_edge, %for.cond56.4.if.then68_crit_edge, %for.cond56.3.if.then68_crit_edge, %for.cond56.2.if.then68_crit_edge, %for.cond56.1.if.then68_crit_edge, %for.cond56.if.then68_crit_edge, %for.body60.preheader.if.then68_crit_edge
  %conv57.lcssa = phi i32 [ 0, %for.body60.preheader.if.then68_crit_edge ], [ 1, %for.cond56.if.then68_crit_edge ], [ 2, %for.cond56.1.if.then68_crit_edge ], [ 3, %for.cond56.2.if.then68_crit_edge ], [ 4, %for.cond56.3.if.then68_crit_edge ], [ 5, %for.cond56.4.if.then68_crit_edge ], [ 6, %for.cond56.5.if.then68_crit_edge ], [ 7, %for.cond56.6.if.then68_crit_edge ], [ 8, %for.cond56.7.if.then68_crit_edge ], [ 9, %for.cond56.8.if.then68_crit_edge ], [ 10, %for.cond56.9.if.then68_crit_edge ], [ 11, %for.cond56.10.if.then68_crit_edge ], [ 12, %for.cond56.11.if.then68_crit_edge ], [ 13, %for.cond56.12.if.then68_crit_edge ], [ 14, %for.cond56.13.if.then68_crit_edge ], [ 15, %for.cond56.14.if.then68_crit_edge ]
  %Bssid63.lcssa = phi ptr [ %Bssid63, %for.body60.preheader.if.then68_crit_edge ], [ %Bssid63.1, %for.cond56.if.then68_crit_edge ], [ %Bssid63.2, %for.cond56.1.if.then68_crit_edge ], [ %Bssid63.3, %for.cond56.2.if.then68_crit_edge ], [ %Bssid63.4, %for.cond56.3.if.then68_crit_edge ], [ %Bssid63.5, %for.cond56.4.if.then68_crit_edge ], [ %Bssid63.6, %for.cond56.5.if.then68_crit_edge ], [ %Bssid63.7, %for.cond56.6.if.then68_crit_edge ], [ %Bssid63.8, %for.cond56.7.if.then68_crit_edge ], [ %Bssid63.9, %for.cond56.8.if.then68_crit_edge ], [ %Bssid63.10, %for.cond56.9.if.then68_crit_edge ], [ %Bssid63.11, %for.cond56.10.if.then68_crit_edge ], [ %Bssid63.12, %for.cond56.11.if.then68_crit_edge ], [ %Bssid63.13, %for.cond56.12.if.then68_crit_edge ], [ %Bssid63.14, %for.cond56.13.if.then68_crit_edge ], [ %Bssid63.15, %for.cond56.14.if.then68_crit_edge ]
  %arrayidx62 = getelementptr %struct.RT_PMKID_LIST, ptr %PMKIDList, i32 %conv57.lcssa
  %18 = call ptr @memset(ptr %Bssid63.lcssa, i32 0, i32 6)
  %19 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx62, align 4
  br label %cleanup

sw.bb80:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %20 = call ptr @memset(ptr %PMKIDList, i32 0, i32 1025)
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.r871x_wx_set_pmkid) #24
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb80, %if.then68, %for.cond56.14.cleanup_crit_edge, %for.inc.15, %if.then14, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.default ], [ 1, %sw.bb80 ], [ 1, %if.then68 ], [ 1, %if.then14 ], [ 1, %for.inc.15 ], [ 1, %for.cond56.14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %strIssueBssid) #19
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %strZeroMacAddress) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_is_cckratesonly_included(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_is_cckrates_included(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_setopmode_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_set_802_11_infrastructure_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_disconnectCtrlEx_cmd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_set_802_11_authentication_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_sitesurvey_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_set_802_11_bssid_list_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_capability_from_ie(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @translate_scan_wpa(ptr noundef %info, ptr noundef %pnetwork, ptr noundef %iwe, ptr noundef %start, ptr noundef %stop) unnamed_addr #15 align 64 {
entry:
  %buf = alloca [128 x i8], align 8
  %wpa_ie = alloca [255 x i8], align 1
  %rsn_ie = alloca [255 x i8], align 1
  %wpa_len = alloca i16, align 2
  %rsn_len = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #19
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %wpa_ie) #19
  %0 = call ptr @memset(ptr %wpa_ie, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %rsn_ie) #19
  %1 = call ptr @memset(ptr %rsn_ie, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wpa_len) #19
  %2 = ptrtoint ptr %wpa_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %wpa_len, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rsn_len) #19
  %3 = ptrtoint ptr %rsn_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %rsn_len, align 2
  %IEs = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 11
  %IELength = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 10
  %4 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %IELength, align 4
  %call = call i32 @r8712_get_sec_ie(ptr noundef %IEs, i32 noundef %5, ptr noundef nonnull %rsn_ie, ptr noundef nonnull %rsn_len, ptr noundef nonnull %wpa_ie, ptr noundef nonnull %wpa_len) #19
  %6 = ptrtoint ptr %wpa_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wpa_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not = icmp eq i16 %7, 0
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %if.then

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end27

if.then:                                          ; preds = %entry
  %8 = getelementptr inbounds i8, ptr %buf, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 120)
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 8606485950323047680, ptr %buf, align 8
  %11 = ptrtoint ptr %wpa_len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %wpa_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp9107.not = icmp eq i16 %12, 0
  br i1 %cmp9107.not, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0109, 1
  %13 = ptrtoint ptr %wpa_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %wpa_len, align 2
  %conv8 = zext i16 %14 to i32
  %cmp9 = icmp ult i32 %inc, %conv8
  br i1 %cmp9, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.0109 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %n.0108 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ 7, %if.then.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %n.0108
  %sub = sub i32 128, %n.0108
  %arrayidx = getelementptr [255 x i8], ptr %wpa_ie, i32 0, i32 %i.0109
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %16 to i32
  %call13 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.29, i32 noundef %conv12) #19
  %add = add i32 %call13, %n.0108
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add)
  %cmp14 = icmp eq i32 %add, 127
  br i1 %cmp14, label %for.body.for.end_crit_edge, label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.then.for.end_crit_edge
  %17 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %cmd = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 1
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -29694, ptr %cmd, align 2
  %call18 = call i32 @strlen(ptr noundef nonnull %buf) #23
  %conv19 = trunc i32 %call18 to i16
  %length = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv19, ptr %length, align 4
  %call21 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %start, ptr noundef %stop, ptr noundef %iwe, ptr noundef nonnull %buf) #19
  %20 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -29691, ptr %cmd, align 2
  %22 = ptrtoint ptr %wpa_len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %wpa_len, align 2
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %length, align 4
  %call26 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call21, ptr noundef %stop, ptr noundef %iwe, ptr noundef nonnull %wpa_ie) #19
  br label %if.end27

if.end27:                                         ; preds = %for.end, %entry.if.end27_crit_edge
  %start.addr.0 = phi ptr [ %call26, %for.end ], [ %start, %entry.if.end27_crit_edge ]
  %25 = ptrtoint ptr %rsn_len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rsn_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp29.not = icmp eq i16 %26, 0
  br i1 %cmp29.not, label %if.end27.if.end67_crit_edge, label %if.then31

if.end27.if.end67_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end67

if.then31:                                        ; preds = %if.end27
  %27 = getelementptr inbounds i8, ptr %buf, i32 8
  %28 = call ptr @memset(ptr %27, i32 0, i32 120)
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 8247056698714701056, ptr %buf, align 8
  %30 = ptrtoint ptr %rsn_len to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rsn_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp37111.not = icmp eq i16 %31, 0
  br i1 %cmp37111.not, label %if.then31.for.end53_crit_edge, label %if.then31.for.body39_crit_edge

if.then31.for.body39_crit_edge:                   ; preds = %if.then31
  br label %for.body39

if.then31.for.end53_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end53

for.cond35:                                       ; preds = %for.body39
  %inc52 = add nuw nsw i32 %i.1113, 1
  %32 = ptrtoint ptr %rsn_len to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %rsn_len, align 2
  %conv36 = zext i16 %33 to i32
  %cmp37 = icmp ult i32 %inc52, %conv36
  br i1 %cmp37, label %for.cond35.for.body39_crit_edge, label %for.cond35.for.end53_crit_edge

for.cond35.for.end53_crit_edge:                   ; preds = %for.cond35
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end53

for.cond35.for.body39_crit_edge:                  ; preds = %for.cond35
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body39

for.body39:                                       ; preds = %for.cond35.for.body39_crit_edge, %if.then31.for.body39_crit_edge
  %i.1113 = phi i32 [ %inc52, %for.cond35.for.body39_crit_edge ], [ 0, %if.then31.for.body39_crit_edge ]
  %n.1112 = phi i32 [ %add46, %for.cond35.for.body39_crit_edge ], [ 7, %if.then31.for.body39_crit_edge ]
  %add.ptr41 = getelementptr i8, ptr %buf, i32 %n.1112
  %sub42 = sub i32 128, %n.1112
  %arrayidx43 = getelementptr [255 x i8], ptr %rsn_ie, i32 0, i32 %i.1113
  %34 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %35 to i32
  %call45 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr41, i32 noundef %sub42, ptr noundef nonnull @.str.29, i32 noundef %conv44) #19
  %add46 = add i32 %call45, %n.1112
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add46)
  %cmp47 = icmp eq i32 %add46, 127
  br i1 %cmp47, label %for.body39.for.end53_crit_edge, label %for.cond35

for.body39.for.end53_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end53

for.end53:                                        ; preds = %for.body39.for.end53_crit_edge, %for.cond35.for.end53_crit_edge, %if.then31.for.end53_crit_edge
  %36 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %cmd54 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 1
  %37 = ptrtoint ptr %cmd54 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -29694, ptr %cmd54, align 2
  %call56 = call i32 @strlen(ptr noundef nonnull %buf) #23
  %conv57 = trunc i32 %call56 to i16
  %length59 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 1
  %38 = ptrtoint ptr %length59 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv57, ptr %length59, align 4
  %call61 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %start.addr.0, ptr noundef %stop, ptr noundef %iwe, ptr noundef nonnull %buf) #19
  %39 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %40 = ptrtoint ptr %cmd54 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -29691, ptr %cmd54, align 2
  %41 = ptrtoint ptr %rsn_len to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rsn_len, align 2
  %43 = ptrtoint ptr %length59 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %length59, align 4
  %call66 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call61, ptr noundef %stop, ptr noundef %iwe, ptr noundef nonnull %rsn_ie) #19
  br label %if.end67

if.end67:                                         ; preds = %for.end53, %if.end27.if.end67_crit_edge
  %start.addr.1 = phi ptr [ %call66, %for.end53 ], [ %start.addr.0, %if.end27.if.end67_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rsn_len) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wpa_len) #19
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %rsn_ie) #19
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %wpa_ie) #19
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #19
  ret ptr %start.addr.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @translate_scan_wps(ptr noundef %info, ptr noundef %pnetwork, ptr noundef %iwe, ptr noundef %start, ptr noundef %stop) unnamed_addr #15 align 64 {
entry:
  %wps_ie = alloca [512 x i8], align 1
  %wps_ielen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %wps_ie) #19
  %0 = call ptr @memset(ptr %wps_ie, i32 255, i32 512)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wps_ielen) #19
  %1 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %wps_ielen, align 4, !annotation !129
  %IEs = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 11
  %IELength = getelementptr inbounds %struct.wlan_network, ptr %pnetwork, i32 0, i32 6, i32 10
  %2 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %IELength, align 4
  %call = call i32 @r8712_get_wps_ie(ptr noundef %IEs, i32 noundef %3, ptr noundef nonnull %wps_ie, ptr noundef nonnull %wps_ielen) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wps_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %if.then3, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %cmd = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -29691, ptr %cmd, align 2
  %conv = trunc i32 %5 to i16
  %length = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %length, align 4
  %call5 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %start, ptr noundef %stop, ptr noundef %iwe, ptr noundef nonnull %wps_ie) #19
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %start.addr.0 = phi ptr [ %call5, %if.then3 ], [ %start, %if.then.if.end6_crit_edge ], [ %start, %entry.if.end6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wps_ielen) #19
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %wps_ie) #19
  ret ptr %start.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_signal_scale_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_get_sec_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_get_wps_ie(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_set_802_11_ssid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_setdatarate_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8711_wx_read32(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef readnone %keybuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 1822) #19
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wrqu, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !117) #19
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #17, !srcloc !130
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #19, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #19, !srcloc !133
  %asmresult2 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #19, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  %call4 = tail call i32 @r8712_read32(ptr noundef %add.ptr.i, i32 noundef %asmresult2) #19
  %6 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wrqu, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 1824) #19
  %8 = tail call i32 @llvm.read_register.i32(metadata !117) #19
  %and.i.i.i36 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i36 to ptr
  %cpu_domain.i.i37 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i37) #17, !srcloc !130
  %and.i38 = and i32 %10, -13
  %or.i39 = or i32 %and.i38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i39) #19, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  %11 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 %call4, i32 -1226833921) #19, !srcloc !134
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #19, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  %shr = lshr i32 %call4, 16
  %conv = trunc i32 %shr to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %12 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %length, align 4
  %conv16 = trunc i32 %call4 to i16
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv16, ptr %flags, align 2
  tail call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 1827) #19
  %14 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wrqu, align 4
  %16 = tail call i32 @llvm.read_register.i32(metadata !117) #19
  %and.i.i.i40 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i40 to ptr
  %cpu_domain.i.i41 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i41) #17, !srcloc !130
  %and.i42 = and i32 %18, -13
  %or.i43 = or i32 %and.i42, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i43) #19, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  %19 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %15, i32 -1226833921) #19, !srcloc !135
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #19, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8711_wx_write32(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %keybuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 1839) #19
  %0 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wrqu, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !117) #19
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #17, !srcloc !130
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #19, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #19, !srcloc !136
  %asmresult2 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #19, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %length, align 4
  %conv = zext i16 %7 to i32
  %shl = shl nuw i32 %conv, 16
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %conv4 = zext i16 %9 to i32
  %or = or i32 %shl, %conv4
  tail call void @r8712_write32(ptr noundef %add.ptr.i, i32 noundef %asmresult2, i32 noundef %or) #19
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8711_drvext_hdl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871x_mp_ioctl_hdl(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %oid_par = alloca %struct.oid_par_priv, align 4
  %BytesRead = alloca i32, align 4
  %BytesWritten = alloca i32, align 4
  %BytesNeeded = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oid_par) #19
  %0 = getelementptr inbounds %struct.oid_par_priv, ptr %oid_par, i32 0, i32 1
  %1 = getelementptr inbounds %struct.oid_par_priv, ptr %oid_par, i32 0, i32 2
  %2 = getelementptr inbounds %struct.oid_par_priv, ptr %oid_par, i32 0, i32 3
  %3 = getelementptr inbounds %struct.oid_par_priv, ptr %oid_par, i32 0, i32 4
  %4 = getelementptr inbounds %struct.oid_par_priv, ptr %oid_par, i32 0, i32 5
  %5 = getelementptr inbounds %struct.oid_par_priv, ptr %oid_par, i32 0, i32 6
  %6 = getelementptr inbounds %struct.oid_par_priv, ptr %oid_par, i32 0, i32 7
  %7 = call ptr @memset(ptr %oid_par, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %BytesRead) #19
  %8 = ptrtoint ptr %BytesRead to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %BytesRead, align 4, !annotation !129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %BytesWritten) #19
  %9 = ptrtoint ptr %BytesWritten to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %BytesWritten, align 4, !annotation !129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %BytesNeeded) #19
  %10 = ptrtoint ptr %BytesNeeded to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %BytesNeeded, align 4, !annotation !129
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %13 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wrqu, align 4
  %tobool1.not = icmp eq ptr %14, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 2
  %conv2 = trunc i16 %16 to i8
  %conv5 = zext i16 %12 to i32
  %call6 = tail call ptr @memdup_user(ptr noundef nonnull %14, i32 noundef %conv5) #19
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %17 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %18 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %19)
  %cmp = icmp ugt i32 %19, 34
  br i1 %cmp, label %if.end10._r871x_mp_ioctl_hdl_exit_crit_edge, label %if.end13

if.end10._r871x_mp_ioctl_hdl_exit_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %_r871x_mp_ioctl_hdl_exit

if.end13:                                         ; preds = %if.end10
  %add.ptr = getelementptr %struct.mp_ioctl_handler, ptr @mp_ioctl_hdl, i32 %19
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp15.not = icmp eq i32 %21, 0
  br i1 %cmp15.not, label %if.end13.if.end22_crit_edge, label %land.lhs.true

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end13
  %len17 = getelementptr inbounds %struct.mp_ioctl_param, ptr %call6, i32 0, i32 1
  %22 = ptrtoint ptr %len17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp19 = icmp ult i32 %23, %21
  br i1 %cmp19, label %land.lhs.true._r871x_mp_ioctl_hdl_exit_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22

land.lhs.true._r871x_mp_ioctl_hdl_exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %_r871x_mp_ioctl_hdl_exit

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  %oid = getelementptr %struct.mp_ioctl_handler, ptr @mp_ioctl_hdl, i32 %19, i32 2
  %24 = ptrtoint ptr %oid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %oid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp23 = icmp eq i32 %25, 0
  br i1 %cmp23, label %land.lhs.true25, label %if.end22.if.else_crit_edge

if.end22.if.else_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

land.lhs.true25:                                  ; preds = %if.end22
  %handler = getelementptr %struct.mp_ioctl_handler, ptr @mp_ioctl_hdl, i32 %19, i32 1
  %26 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %handler, align 4
  %tobool26.not = icmp eq ptr %27, null
  br i1 %tobool26.not, label %land.lhs.true25.if.else_crit_edge, label %land.lhs.true25.if.end50_crit_edge

land.lhs.true25.if.end50_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

land.lhs.true25.if.else_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

if.else:                                          ; preds = %land.lhs.true25.if.else_crit_edge, %if.end22.if.else_crit_edge
  %handler30 = getelementptr %struct.mp_ioctl_handler, ptr @mp_ioctl_hdl, i32 %19, i32 1
  %28 = ptrtoint ptr %handler30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handler30, align 4
  %tobool31.not = icmp eq ptr %29, null
  br i1 %tobool31.not, label %if.else45, label %if.then32

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %30 = ptrtoint ptr %oid_par to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %oid_par, align 4
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %25, ptr %0, align 4
  %data = getelementptr inbounds %struct.mp_ioctl_param, ptr %call6, i32 0, i32 2
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %data, ptr %1, align 4
  %len35 = getelementptr inbounds %struct.mp_ioctl_param, ptr %call6, i32 0, i32 1
  %33 = ptrtoint ptr %len35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len35, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %2, align 4
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %6, align 4
  %37 = ptrtoint ptr %BytesWritten to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %BytesWritten, align 4
  %38 = ptrtoint ptr %BytesNeeded to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %BytesNeeded, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2)
  %tobool36.not = icmp eq i8 %conv2, 0
  %BytesWritten.BytesRead = select i1 %tobool36.not, ptr %BytesWritten, ptr %BytesRead
  %not.tobool36.not = xor i1 %tobool36.not, true
  %. = zext i1 %not.tobool36.not to i32
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %BytesWritten.BytesRead, ptr %3, align 4
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %BytesNeeded, ptr %4, align 4
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %., ptr %5, align 4
  br label %if.end50

if.else45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.r871x_mp_ioctl_hdl, i32 noundef %19, i32 noundef %25, ptr noundef null) #24
  br label %_r871x_mp_ioctl_hdl_exit

if.end50:                                         ; preds = %if.then32, %land.lhs.true25.if.end50_crit_edge
  %.sink = phi ptr [ %29, %if.then32 ], [ %27, %land.lhs.true25.if.end50_crit_edge ]
  %call44 = call i32 %.sink(ptr noundef nonnull %oid_par) #19
  %conv2.mask = and i16 %16, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2.mask)
  %cmp52 = icmp eq i16 %conv2.mask, 0
  br i1 %cmp52, label %if.then54, label %if.end50.if.end61_crit_edge

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end61

if.then54:                                        ; preds = %if.end50
  %42 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wrqu, align 4
  call void @__check_object_size(ptr noundef %call6, i32 noundef %conv5, i1 noundef zeroext true) #19
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #19
  %call.i.i = call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i, label %if.then54.if.end61_crit_edge, label %if.end.i.i

if.then54.if.end61_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end61

if.end.i.i:                                       ; preds = %if.then54
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %43, i32 %conv5, i32 -1226833920) #22, !srcloc !127
  %asmresult.i.i = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.if.end61_crit_edge

if.end.i.i.if.end61_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end61

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %call6, i32 noundef %conv5) #19
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %43, ptr noundef %call6, i32 noundef %conv5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -14
  br label %if.end61

if.end61:                                         ; preds = %if.then2.i.i, %if.end.i.i.if.end61_crit_edge, %if.then54.if.end61_crit_edge, %if.end50.if.end61_crit_edge
  %ret.0 = phi i32 [ 0, %if.end50.if.end61_crit_edge ], [ -14, %if.then54.if.end61_crit_edge ], [ %phi.sel, %if.then2.i.i ], [ -14, %if.end.i.i.if.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool62.not = icmp eq i32 %call44, 0
  %spec.select109 = select i1 %tobool62.not, i32 %ret.0, i32 -14
  br label %_r871x_mp_ioctl_hdl_exit

_r871x_mp_ioctl_hdl_exit:                         ; preds = %if.end61, %if.else45, %land.lhs.true._r871x_mp_ioctl_hdl_exit_crit_edge, %if.end10._r871x_mp_ioctl_hdl_exit_crit_edge
  %ret.1 = phi i32 [ -14, %if.else45 ], [ -22, %if.end10._r871x_mp_ioctl_hdl_exit_crit_edge ], [ -22, %land.lhs.true._r871x_mp_ioctl_hdl_exit_crit_edge ], [ %spec.select109, %if.end61 ]
  call void @kfree(ptr noundef %call6) #19
  br label %cleanup

cleanup:                                          ; preds = %_r871x_mp_ioctl_hdl_exit, %if.then8, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then8 ], [ %ret.1, %_r871x_mp_ioctl_hdl_exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %BytesNeeded) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %BytesWritten) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %BytesRead) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oid_par) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871x_get_ap_info(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr noundef %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %wpa_ielen = alloca i32, align 4
  %bssid = alloca [6 x i8], align 4
  %data = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %scanned_queue = getelementptr i8, ptr %dev, i32 2484
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wpa_ielen) #19
  %0 = ptrtoint ptr %wpa_ielen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wpa_ielen, align 4, !annotation !129
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bssid) #19
  %1 = getelementptr inbounds [6 x i8], ptr %bssid, i32 0, i32 4
  %2 = call ptr @memset(ptr %bssid, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %data) #19
  %3 = call ptr @memset(ptr %data, i32 255, i32 33)
  %driver_stopped = getelementptr i8, ptr %dev, i32 15948
  %4 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %driver_stopped, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp ne i8 %5, 0
  %tobool1.not = icmp eq ptr %wrqu, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %fw_state.i = getelementptr i8, ptr %dev, i32 2416
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %cnt.0 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %6 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_state.i, align 8
  %and.i = and i32 %7, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %while.cond
  tail call void @msleep(i32 noundef 30) #19
  %inc = add nuw nsw i32 %cnt.0, 1
  %exitcond = icmp eq i32 %inc, 101
  br i1 %exitcond, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %10)
  %cmp6 = icmp ult i16 %10, 32
  br i1 %cmp6, label %while.end.cleanup_crit_edge, label %if.end9

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end9:                                          ; preds = %while.end
  %11 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wrqu, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #19
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i, label %if.end9.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end9.if.then11.i.i_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end9
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 32, i32 -1226833920) #22, !srcloc !137
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !138

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data, i32 noundef 32) #19
  %14 = call i32 @llvm.read_register.i32(metadata !117) #19
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #17, !srcloc !130
  %and.i.i.i.i = and i32 %16, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #19, !srcloc !131
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data, ptr noundef %12, i32 noundef 32) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #19, !srcloc !131
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end13, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !138

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end9.if.then11.i.i_crit_edge
  %res.0.i.i136 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %if.end9.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i136
  %add.ptr.i.i = getelementptr i8, ptr %data, i32 %sub.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i136)
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.i
  %arrayidx = getelementptr inbounds [33 x i8], ptr %data, i32 0, i32 32
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx, align 1
  %lock = getelementptr i8, ptr %dev, i32 2492
  %call19 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #19
  %19 = ptrtoint ptr %scanned_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %plist.0141 = load ptr, ptr %scanned_queue, align 4
  %cmp.i.not142 = icmp eq ptr %scanned_queue, %plist.0141
  br i1 %cmp.i.not142, label %if.end13.while.end69_crit_edge, label %if.end13.if.end28_crit_edge

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  br label %if.end28

if.end13.while.end69_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end69

if.end28:                                         ; preds = %if.end67.if.end28_crit_edge, %if.end13.if.end28_crit_edge
  %plist.0143 = phi ptr [ %plist.0, %if.end67.if.end28_crit_edge ], [ %plist.0141, %if.end13.if.end28_crit_edge ]
  %call32 = call zeroext i1 @mac_pton(ptr noundef nonnull %data, ptr noundef nonnull %bssid) #19
  br i1 %call32, label %if.end37, label %if.then33

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull %data) #24
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #19
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull %bssid) #24
  %MacAddress = getelementptr inbounds %struct.wlan_network, ptr %plist.0143, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bssid, align 4
  %22 = ptrtoint ptr %MacAddress to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %MacAddress, align 4
  %xor.i = xor i32 %23, %21
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %1, align 4
  %add.ptr1.i = getelementptr %struct.wlan_network, ptr %plist.0143, i32 0, i32 6, i32 1, i32 4
  %26 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %27, %25
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i133 = icmp eq i32 %or.i, 0
  br i1 %cmp.i133, label %if.then42, label %if.end37.if.end67_crit_edge

if.end37.if.end67_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end67

if.then42:                                        ; preds = %if.end37
  %arrayidx44 = getelementptr %struct.wlan_network, ptr %plist.0143, i32 0, i32 6, i32 11, i32 12
  %IELength = getelementptr inbounds %struct.wlan_network, ptr %plist.0143, i32 0, i32 6, i32 10
  %28 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %IELength, align 4
  %sub = add i32 %29, -12
  %call46 = call ptr @r8712_get_wpa_ie(ptr noundef %arrayidx44, ptr noundef nonnull %wpa_ielen, i32 noundef %sub) #19
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.then42.if.end52_crit_edge, label %land.lhs.true

if.then42.if.end52_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end52

land.lhs.true:                                    ; preds = %if.then42
  %30 = ptrtoint ptr %wpa_ielen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wpa_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp48.not = icmp eq i32 %31, 0
  br i1 %cmp48.not, label %land.lhs.true.if.end52_crit_edge, label %land.lhs.true.while.end69.sink.split_crit_edge

land.lhs.true.while.end69.sink.split_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end69.sink.split

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true.if.end52_crit_edge, %if.then42.if.end52_crit_edge
  %32 = ptrtoint ptr %IELength to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %IELength, align 4
  %sub58 = add i32 %33, -12
  %call59 = call ptr @r8712_get_wpa2_ie(ptr noundef %arrayidx44, ptr noundef nonnull %wpa_ielen, i32 noundef %sub58) #19
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.end52.if.end67_crit_edge, label %land.lhs.true61

if.end52.if.end67_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end67

land.lhs.true61:                                  ; preds = %if.end52
  %34 = ptrtoint ptr %wpa_ielen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wpa_ielen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp62.not = icmp eq i32 %35, 0
  br i1 %cmp62.not, label %land.lhs.true61.if.end67_crit_edge, label %land.lhs.true61.while.end69.sink.split_crit_edge

land.lhs.true61.while.end69.sink.split_crit_edge: ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end69.sink.split

land.lhs.true61.if.end67_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end67

if.end67:                                         ; preds = %land.lhs.true61.if.end67_crit_edge, %if.end52.if.end67_crit_edge, %if.end37.if.end67_crit_edge
  %36 = ptrtoint ptr %plist.0143 to i32
  call void @__asan_load4_noabort(i32 %36)
  %plist.0 = load ptr, ptr %plist.0143, align 4
  %cmp.i.not = icmp eq ptr %scanned_queue, %plist.0
  br i1 %cmp.i.not, label %if.end67.while.end69_crit_edge, label %if.end67.if.end28_crit_edge

if.end67.if.end28_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28

if.end67.while.end69_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end69

while.end69.sink.split:                           ; preds = %land.lhs.true61.while.end69.sink.split_crit_edge, %land.lhs.true.while.end69.sink.split_crit_edge
  %.sink = phi i16 [ 1, %land.lhs.true.while.end69.sink.split_crit_edge ], [ 2, %land.lhs.true61.while.end69.sink.split_crit_edge ]
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %.sink, ptr %flags, align 2
  br label %while.end69

while.end69:                                      ; preds = %while.end69.sink.split, %if.end67.while.end69_crit_edge, %if.end13.while.end69_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #19
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %39)
  %cmp74 = icmp ugt i16 %39, 33
  br i1 %cmp74, label %if.then76, label %while.end69.if.end84_crit_edge

while.end69.if.end84_crit_edge:                   ; preds = %while.end69
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end84

if.then76:                                        ; preds = %while.end69
  %40 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wrqu, align 4
  %add.ptr78 = getelementptr i8, ptr %41, i32 32
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #19
  %call.i.i126 = call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i126, label %if.then76.cleanup_crit_edge, label %if.end.i.i129

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i.i129:                                    ; preds = %if.then76
  %42 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr78, i32 1, i32 -1226833920) #22, !srcloc !127
  %asmresult.i.i127 = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i127)
  %cmp.i6.i128 = icmp eq i32 %asmresult.i.i127, 0
  br i1 %cmp.i6.i128, label %copy_to_user.exit, label %if.end.i.i129.cleanup_crit_edge

if.end.i.i129.cleanup_crit_edge:                  ; preds = %if.end.i.i129
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i129
  %call.i.i.i130 = call zeroext i1 @__kasan_check_read(ptr noundef %flags, i32 noundef 1) #19
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr78, ptr noundef %flags, i32 noundef 1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool81.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool81.not, label %copy_to_user.exit.if.end84_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

copy_to_user.exit.if.end84_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end84

if.end84:                                         ; preds = %copy_to_user.exit.if.end84_crit_edge, %while.end69.if.end84_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i129.cleanup_crit_edge, %if.then76.cleanup_crit_edge, %if.then33, %if.then11.i.i, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end84 ], [ -22, %if.then33 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %while.end.cleanup_crit_edge ], [ -22, %copy_to_user.exit.cleanup_crit_edge ], [ -22, %if.then11.i.i ], [ -22, %if.then76.cleanup_crit_edge ], [ -22, %if.end.i.i129.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %data) #19
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wpa_ielen) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871x_set_pid(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_stopped = getelementptr i8, ptr %dev, i32 15948
  %0 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver_stopped, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  %tobool1.not = icmp eq ptr %wrqu, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %pid = getelementptr i8, ptr %dev, i32 16100
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wrqu, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #19
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #22, !srcloc !137
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !138

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pid, i32 noundef 4) #19
  %5 = tail call i32 @llvm.read_register.i32(metadata !117) #19
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #17, !srcloc !130
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #19, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %pid, ptr noundef %3, i32 noundef 4) #19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #19, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !138

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i11 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i11
  %add.ptr.i.i = getelementptr i8, ptr %pid, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i11)
  br label %cleanup

cleanup:                                          ; preds = %if.then11.i.i, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ -22, %if.then11.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871x_wps_start(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr noundef readonly %wrqu, ptr nocapture noundef readonly %extra) #0 align 64 {
entry:
  %u32wps_start = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32wps_start) #19
  %0 = ptrtoint ptr %u32wps_start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %u32wps_start, align 4
  %driver_stopped = getelementptr i8, ptr %dev, i32 15948
  %1 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %driver_stopped, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp ne i8 %2, 0
  %tobool1.not = icmp eq ptr %wrqu, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wrqu, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #19
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 4, i32 -1226833920) #22, !srcloc !137
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !138

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %u32wps_start, i32 noundef 4) #19
  %6 = call i32 @llvm.read_register.i32(metadata !117) #19
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #17, !srcloc !130
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #19, !srcloc !131
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %u32wps_start, ptr noundef %4, i32 noundef 4) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #19, !srcloc !131
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !138

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i36 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i36
  %add.ptr.i.i = getelementptr i8, ptr %u32wps_start, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i36)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %10 = ptrtoint ptr %u32wps_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %u32wps_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then6, label %if.end5.if.end7_crit_edge

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  %12 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %extra, align 1
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %u32wps_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %u32wps_start, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end5.if.end7_crit_edge
  %15 = phi i32 [ %conv, %if.then6 ], [ %11, %if.end5.if.end7_crit_edge ]
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %15, label %if.end7.cleanup_crit_edge [
    i32 1, label %if.then10
    i32 2, label %if.then13
    i32 3, label %if.then19
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  %LedControlHandler = getelementptr i8, ptr %dev, i32 14860
  %17 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %LedControlHandler, align 4
  call void %18(ptr noundef %add.ptr.i, i32 noundef 9) #19
  br label %cleanup

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  %LedControlHandler15 = getelementptr i8, ptr %dev, i32 14860
  %19 = ptrtoint ptr %LedControlHandler15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %LedControlHandler15, align 4
  call void %20(ptr noundef %add.ptr.i, i32 noundef 10) #19
  br label %cleanup

if.then19:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  %LedControlHandler21 = getelementptr i8, ptr %dev, i32 14860
  %21 = ptrtoint ptr %LedControlHandler21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %LedControlHandler21, align 4
  call void %22(ptr noundef %add.ptr.i, i32 noundef 12) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then13, %if.then10, %if.end7.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.then19 ], [ 0, %if.then10 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32wps_start) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r871x_set_chplan(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_stopped = getelementptr i8, ptr %dev, i32 15948
  %0 = ptrtoint ptr %driver_stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver_stopped, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  %tobool1.not = icmp eq ptr %wrqu, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extra, align 1
  %conv = zext i8 %3 to i32
  tail call void @r8712_set_chplan_cmd(ptr noundef %add.ptr.i, i32 noundef %conv) #19
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %ret.0 = phi i32 [ 0, %if.end ], [ -22, %entry.exit_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_start_test_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_stop_test_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_read_register_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_write_register_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_set_channel_direct_call_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_set_tx_power_control_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_set_data_rate_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_read_bb_reg_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_write_bb_reg_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_read_rf_reg_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_write_rf_reg_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mp_ioctl_xmit_packet_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_set_continuous_tx_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_set_bandwidth_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_set_rx_packet_type_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_reset_phy_rx_packet_count_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_get_phy_rx_packet_received_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_get_phy_rx_packet_crc32_error_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_set_power_down_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_get_thermal_meter_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_get_power_mode_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_efuse_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_efuse_map_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_get_efuse_max_size_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_get_efuse_current_size_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_set_single_carrier_tx_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_set_carrier_suppression_tx_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_set_single_tone_tx_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oid_rt_pro_set_antenna_bb_hdl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_wpa_ie(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_wpa2_ie(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_set_chplan_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind readonly }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { nounwind readnone }
attributes #23 = { nobuiltin }
attributes #24 = { cold nounwind }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { nobuiltin nounwind }
attributes #27 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115}
!llvm.named.register.sp = !{!117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @r871x_handlers_def, !1, !"r871x_handlers_def", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 2321, i32 23}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 570, i32 37}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 581, i32 37}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 388, i32 33}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 389, i32 20}
!10 = !{ptr @__func__.wpa_set_encryption, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 389, i32 53}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 83, i32 33}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!21 = !{ptr @r8711_handlers, !22, !"r8711_handlers", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 2191, i32 19}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 618, i32 7}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 621, i32 7}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 625, i32 7}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 628, i32 7}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 632, i32 7}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 635, i32 7}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 638, i32 34}
!37 = distinct !{null, !38, !"frequency_list", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 643, i32 19}
!39 = !{ptr @ieee80211_wlan_frequencies, !40, !"ieee80211_wlan_frequencies", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 49, i32 19}
!41 = !{ptr @rtl8180_rates, !42, !"rtl8180_rates", i1 false, i1 false}
!42 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 45, i32 18}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 929, i32 23}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 937, i32 17}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 944, i32 17}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 946, i32 30}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 958, i32 16}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 959, i32 30}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 962, i32 16}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 963, i32 30}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 970, i32 30}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 977, i32 27}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 987, i32 27}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 998, i32 20}
!67 = !{ptr @__func__.r871x_wx_set_priv, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 999, i32 8}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1134, i32 20}
!71 = !{ptr @__func__.r8711_wx_set_scan, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1135, i32 8}
!73 = distinct !{null, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 141, i32 20}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 144, i32 7}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 161, i32 20}
!79 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1809, i32 17}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1503, i32 20}
!83 = !{ptr @__func__.r8711_wx_set_enc, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1503, i32 56}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1524, i32 20}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1534, i32 5}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1764, i32 14}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1773, i32 14}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 793, i32 22}
!95 = !{ptr @__func__.r871x_wx_set_pmkid, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 794, i32 10}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 804, i32 21}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 836, i32 20}
!101 = !{ptr @r8711_private_handler, !102, !"r8711_private_handler", i1 false, i1 false}
!102 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 2285, i32 19}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1822, i32 2}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1916, i32 20}
!107 = !{ptr @__func__.r871x_mp_ioctl_hdl, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1917, i32 8}
!109 = !{ptr @mp_ioctl_hdl, !110, !"mp_ioctl_hdl", i1 false, i1 false}
!110 = !{!"../drivers/staging/rtl8712/rtl871x_mp_ioctl.h", i32 249, i32 32}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1975, i32 21}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 1981, i32 20}
!115 = !{ptr @r8711_private_args, !116, !"r8711_private_args", i1 false, i1 false}
!116 = !{!"../drivers/staging/rtl8712/rtl871x_ioctl_linux.c", i32 2252, i32 34}
!117 = !{!"sp"}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 2152739246, i64 2152739271}
!128 = !{i8 0, i8 2}
!129 = !{!"auto-init"}
!130 = !{i64 5234120}
!131 = !{i64 5234317}
!132 = !{i64 2152719550}
!133 = !{i64 2156593982, i64 2156594262, i64 2156594596, i64 2156594930}
!134 = !{i64 2156603610, i64 2156603890, i64 2156604224, i64 2156604558}
!135 = !{i64 2156615228, i64 2156615508, i64 2156615842, i64 2156616176}
!136 = !{i64 2156627529, i64 2156627809, i64 2156628143, i64 2156628477}
!137 = !{i64 2152738565, i64 2152738590}
!138 = !{!"branch_weights", i32 2000, i32 1}
