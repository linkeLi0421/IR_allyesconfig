; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_xmit.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_xmit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16], i32, i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, i32, i32, %struct.__queue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, i32, ptr, i8, i8, i8, i16, i32, i64, i32, ptr, i8, i8, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32 }
%struct.hw_txqueue = type { i32, i32, i32, i32, [8 x i32], i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.2, i32 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, ptr, [8 x i16], [8 x ptr], [8 x i8], [8 x i8] }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], ptr }
%struct._adapter = type { %struct.dvobj_priv, %struct.mlme_priv, %struct.cmd_priv, %struct.evt_priv, ptr, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.wlan_acl_pool, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.hal_priv, %struct.led_priv, %struct.mp_priv, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.net_device_stats, %struct.iw_statistics, i32, %struct.work_struct, i8, %struct.spinlock, ptr, ptr, %struct.mutex, %struct.completion }
%struct.dvobj_priv = type { ptr, i32, i8, ptr, ptr, ptr }
%struct.mlme_priv = type { %struct.spinlock, %struct.spinlock, i32, i8, ptr, ptr, %struct.__queue, %struct.__queue, ptr, i32, i8, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, %struct.sitesurvey_ctrl, %struct.timer_list, i32, i32, %struct.timer_list, %struct.timer_list, %struct.qos_priv, %struct.ht_priv, %struct.timer_list }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hw_xmit = type { %struct.spinlock, %struct.list_head, ptr, ptr, i32, i32 }
%struct.xmit_buf = type { %struct.list_head, ptr, ptr, ptr, [8 x ptr], i32 }
%struct.pkt_file = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.tx_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, %struct.stainfo_stats, [16 x %struct.recv_reorder_ctrl], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache, i32, i32, i32 }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i32, i32, i64, i32 }
%struct.recv_reorder_ctrl = type { ptr, i16, i16, i8, %struct.__queue, %struct.timer_list }
%struct.mic_data = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.112 = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_snap_hdr = type { i8, i8, i8, [3 x i8] }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@_r8712_init_sta_xmit_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&psta_xmitpriv->lock\00", [43 x i8] zeroinitializer }, align 32
@_r8712_init_xmit_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pxmitpriv->lock\00", [47 x i8] zeroinitializer }, align 32
@_r8712_init_xmit_priv.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&pxmitpriv->be_pending)->lock)\00", [62 x i8] zeroinitializer }, align 32
@_r8712_init_xmit_priv.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&pxmitpriv->bk_pending)->lock)\00", [62 x i8] zeroinitializer }, align 32
@_r8712_init_xmit_priv.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&pxmitpriv->vi_pending)->lock)\00", [62 x i8] zeroinitializer }, align 32
@_r8712_init_xmit_priv.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&pxmitpriv->vo_pending)->lock)\00", [62 x i8] zeroinitializer }, align 32
@_r8712_init_xmit_priv.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&pxmitpriv->bm_pending)->lock)\00", [62 x i8] zeroinitializer }, align 32
@_r8712_init_xmit_priv.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&((&pxmitpriv->legacy_dz_queue)->lock)\00", [57 x i8] zeroinitializer }, align 32
@_r8712_init_xmit_priv.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&pxmitpriv->apsd_queue)->lock)\00", [62 x i8] zeroinitializer }, align 32
@_r8712_init_xmit_priv.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&((&pxmitpriv->free_xmit_queue)->lock)\00", [57 x i8] zeroinitializer }, align 32
@_r8712_init_xmit_priv.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"&((&pxmitpriv->free_xmitbuf_queue)->lock)\00", [54 x i8] zeroinitializer }, align 32
@_r8712_init_xmit_priv.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"&((&pxmitpriv->pending_xmitbuf_queue)->lock)\00", [51 x i8] zeroinitializer }, align 32
@_r8712_init_xmit_priv.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&padapter->wk_filter_rx_ff0)\00", [49 x i8] zeroinitializer }, align 32
@_init_txservq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&((&ptxservq->sta_pending)->lock)\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_hwxmits.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&phwxmit->xmit_lock\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 67, i64 68]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 43, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 60, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 65, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 66, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 67, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 68, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 69, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 70, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 71, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 72, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 116, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 117, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 144, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 35, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [42 x i8] c"../drivers/staging/rtl8712/rtl871x_xmit.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 979, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @_r8712_init_sta_xmit_priv.__key, ptr @.str, ptr @_r8712_init_xmit_priv.__key, ptr @.str.1, ptr @_r8712_init_xmit_priv.__key.2, ptr @.str.3, ptr @_r8712_init_xmit_priv.__key.4, ptr @.str.5, ptr @_r8712_init_xmit_priv.__key.6, ptr @.str.7, ptr @_r8712_init_xmit_priv.__key.8, ptr @.str.9, ptr @_r8712_init_xmit_priv.__key.10, ptr @.str.11, ptr @_r8712_init_xmit_priv.__key.12, ptr @.str.13, ptr @_r8712_init_xmit_priv.__key.14, ptr @.str.15, ptr @_r8712_init_xmit_priv.__key.16, ptr @.str.17, ptr @_r8712_init_xmit_priv.__key.18, ptr @.str.19, ptr @_r8712_init_xmit_priv.__key.20, ptr @.str.21, ptr @_r8712_init_xmit_priv.__key.22, ptr @.str.23, ptr @_init_txservq.__key, ptr @.str.24, ptr @init_hwxmits.__key, ptr @.str.25], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_sta_xmit_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_xmit_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_xmit_priv.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_xmit_priv.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_xmit_priv.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_xmit_priv.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_xmit_priv.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_xmit_priv.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_xmit_priv.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_xmit_priv.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_xmit_priv.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_xmit_priv.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_r8712_init_xmit_priv.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_init_txservq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_hwxmits.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_r8712_init_sta_xmit_priv(ptr noundef %psta_xmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %psta_xmitpriv, i32 0, i32 376)
  tail call void @__raw_spin_lock_init(ptr noundef %psta_xmitpriv, ptr noundef nonnull @.str, ptr noundef nonnull @_r8712_init_sta_xmit_priv.__key, i16 noundef signext 3) #8
  %be_q = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3
  %1 = ptrtoint ptr %be_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %be_q, ptr %be_q, align 4
  %prev.i.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %be_q, ptr %prev.i.i, align 4
  %sta_pending.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %sta_pending.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %sta_pending.i, ptr %sta_pending.i, align 4
  %prev.i7.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sta_pending.i, ptr %prev.i7.i, align 4
  %lock.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @_init_txservq.__key, i16 noundef signext 3) #8
  %qcnt.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %qcnt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qcnt.i, align 4
  %bk_q = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4
  %6 = ptrtoint ptr %bk_q to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %bk_q, ptr %bk_q, align 4
  %prev.i.i8 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bk_q, ptr %prev.i.i8, align 4
  %sta_pending.i9 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %sta_pending.i9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %sta_pending.i9, ptr %sta_pending.i9, align 4
  %prev.i7.i10 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i7.i10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sta_pending.i9, ptr %prev.i7.i10, align 4
  %lock.i11 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i11, ptr noundef nonnull @.str.24, ptr noundef nonnull @_init_txservq.__key, i16 noundef signext 3) #8
  %qcnt.i12 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %qcnt.i12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qcnt.i12, align 4
  %vi_q = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5
  %11 = ptrtoint ptr %vi_q to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %vi_q, ptr %vi_q, align 4
  %prev.i.i13 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vi_q, ptr %prev.i.i13, align 4
  %sta_pending.i14 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %sta_pending.i14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %sta_pending.i14, ptr %sta_pending.i14, align 4
  %prev.i7.i15 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i7.i15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sta_pending.i14, ptr %prev.i7.i15, align 4
  %lock.i16 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i16, ptr noundef nonnull @.str.24, ptr noundef nonnull @_init_txservq.__key, i16 noundef signext 3) #8
  %qcnt.i17 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %qcnt.i17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qcnt.i17, align 4
  %vo_q = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6
  %16 = ptrtoint ptr %vo_q to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %vo_q, ptr %vo_q, align 4
  %prev.i.i18 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vo_q, ptr %prev.i.i18, align 4
  %sta_pending.i19 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %sta_pending.i19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %sta_pending.i19, ptr %sta_pending.i19, align 4
  %prev.i7.i20 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i7.i20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sta_pending.i19, ptr %prev.i7.i20, align 4
  %lock.i21 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i21, ptr noundef nonnull @.str.24, ptr noundef nonnull @_init_txservq.__key, i16 noundef signext 3) #8
  %qcnt.i22 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %qcnt.i22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %qcnt.i22, align 4
  %legacy_dz = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 7
  %21 = ptrtoint ptr %legacy_dz to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %legacy_dz, ptr %legacy_dz, align 4
  %prev.i = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %legacy_dz, ptr %prev.i, align 4
  %apsd = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 8
  %23 = ptrtoint ptr %apsd to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %apsd, ptr %apsd, align 4
  %prev.i23 = getelementptr inbounds %struct.sta_xmit_priv, ptr %psta_xmitpriv, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %prev.i23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %apsd, ptr %prev.i23, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_r8712_init_xmit_priv(ptr noundef %pxmitpriv, ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %pxmitpriv, i32 0, i32 1240)
  tail call void @__raw_spin_lock_init(ptr noundef %pxmitpriv, ptr noundef nonnull @.str.1, ptr noundef nonnull @_r8712_init_xmit_priv.__key, i16 noundef signext 3) #8
  %adapter = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 20
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %padapter, ptr %adapter, align 8
  %be_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1
  %2 = ptrtoint ptr %be_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %be_pending, ptr %be_pending, align 4
  %prev.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %be_pending, ptr %prev.i, align 4
  %lock4 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock4, ptr noundef nonnull @.str.3, ptr noundef nonnull @_r8712_init_xmit_priv.__key.2, i16 noundef signext 3) #8
  %bk_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 2
  %4 = ptrtoint ptr %bk_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %bk_pending, ptr %bk_pending, align 4
  %prev.i250 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i250 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bk_pending, ptr %prev.i250, align 4
  %lock14 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 2, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock14, ptr noundef nonnull @.str.5, ptr noundef nonnull @_r8712_init_xmit_priv.__key.4, i16 noundef signext 3) #8
  %vi_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 3
  %6 = ptrtoint ptr %vi_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %vi_pending, ptr %vi_pending, align 4
  %prev.i251 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i251 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vi_pending, ptr %prev.i251, align 4
  %lock24 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock24, ptr noundef nonnull @.str.7, ptr noundef nonnull @_r8712_init_xmit_priv.__key.6, i16 noundef signext 3) #8
  %vo_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 4
  %8 = ptrtoint ptr %vo_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %vo_pending, ptr %vo_pending, align 4
  %prev.i252 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i252 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vo_pending, ptr %prev.i252, align 4
  %lock34 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 4, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock34, ptr noundef nonnull @.str.9, ptr noundef nonnull @_r8712_init_xmit_priv.__key.8, i16 noundef signext 3) #8
  %bm_pending = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 5
  %10 = ptrtoint ptr %bm_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %bm_pending, ptr %bm_pending, align 4
  %prev.i253 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i253 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bm_pending, ptr %prev.i253, align 4
  %lock44 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock44, ptr noundef nonnull @.str.11, ptr noundef nonnull @_r8712_init_xmit_priv.__key.10, i16 noundef signext 3) #8
  %legacy_dz_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 6
  %12 = ptrtoint ptr %legacy_dz_queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %legacy_dz_queue, ptr %legacy_dz_queue, align 4
  %prev.i254 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 6, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i254 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %legacy_dz_queue, ptr %prev.i254, align 4
  %lock54 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock54, ptr noundef nonnull @.str.13, ptr noundef nonnull @_r8712_init_xmit_priv.__key.12, i16 noundef signext 3) #8
  %apsd_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 7
  %14 = ptrtoint ptr %apsd_queue to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %apsd_queue, ptr %apsd_queue, align 4
  %prev.i255 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i255 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %apsd_queue, ptr %prev.i255, align 4
  %lock64 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 7, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock64, ptr noundef nonnull @.str.15, ptr noundef nonnull @_r8712_init_xmit_priv.__key.14, i16 noundef signext 3) #8
  %free_xmit_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 13
  %16 = ptrtoint ptr %free_xmit_queue to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %free_xmit_queue, ptr %free_xmit_queue, align 4
  %prev.i256 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 13, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i256 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %free_xmit_queue, ptr %prev.i256, align 4
  %lock74 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 13, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock74, ptr noundef nonnull @.str.17, ptr noundef nonnull @_r8712_init_xmit_priv.__key.16, i16 noundef signext 3) #8
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 41988, i32 noundef 2592, i32 noundef 4) #11
  %pallocated_frame_buf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 8
  %18 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call1.i.i, ptr %pallocated_frame_buf, align 8
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pxmit_frame_buf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 9
  %19 = ptrtoint ptr %pxmit_frame_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %pxmit_frame_buf, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call1.i.i, i32 4
  %pxmit_frame_buf85 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 9
  %20 = ptrtoint ptr %pxmit_frame_buf85 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %pxmit_frame_buf85, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %pxframe.0269 = phi ptr [ %add.ptr, %if.end ], [ %incdec.ptr, %list_add_tail.exit.for.body_crit_edge ]
  %i.0268 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %21 = ptrtoint ptr %pxframe.0269 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %pxframe.0269, ptr %pxframe.0269, align 4
  %prev.i257 = getelementptr inbounds %struct.list_head, ptr %pxframe.0269, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pxframe.0269, ptr %prev.i257, align 4
  %padapter87 = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0269, i32 0, i32 4
  %23 = ptrtoint ptr %padapter87 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %padapter, ptr %padapter87, align 4
  %frame_tag = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0269, i32 0, i32 3
  %24 = ptrtoint ptr %frame_tag to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %frame_tag, align 4
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0269, i32 0, i32 2
  %25 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pkt, align 4
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0269, i32 0, i32 5
  %26 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %buf_addr, align 4
  %pxmitbuf88 = getelementptr inbounds %struct.xmit_frame, ptr %pxframe.0269, i32 0, i32 6
  %27 = ptrtoint ptr %pxmitbuf88 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %pxmitbuf88, align 4
  %28 = ptrtoint ptr %prev.i256 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i256, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pxframe.0269, ptr noundef %29, ptr noundef %free_xmit_queue) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %prev.i256 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pxframe.0269, ptr %prev.i256, align 4
  %31 = ptrtoint ptr %pxframe.0269 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %free_xmit_queue, ptr %pxframe.0269, align 4
  %32 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev.i257, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %pxframe.0269, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %incdec.ptr = getelementptr %struct.xmit_frame, ptr %pxframe.0269, i32 1
  %inc = add nuw nsw i32 %i.0268, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  %free_xmitframe_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10
  %34 = ptrtoint ptr %free_xmitframe_cnt to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 256, ptr %free_xmitframe_cnt, align 8
  %be_txqueue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 14
  %call92 = tail call i32 @_r8712_init_hw_txqueue(ptr noundef %be_txqueue, i8 noundef zeroext 2) #8
  %bk_txqueue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 15
  %call93 = tail call i32 @_r8712_init_hw_txqueue(ptr noundef %bk_txqueue, i8 noundef zeroext 3) #8
  %vi_txqueue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 16
  %call94 = tail call i32 @_r8712_init_hw_txqueue(ptr noundef %vi_txqueue, i8 noundef zeroext 1) #8
  %vo_txqueue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 17
  %call95 = tail call i32 @_r8712_init_hw_txqueue(ptr noundef %vo_txqueue, i8 noundef zeroext 0) #8
  %bmc_txqueue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 18
  %call96 = tail call i32 @_r8712_init_hw_txqueue(ptr noundef %bmc_txqueue, i8 noundef zeroext 6) #8
  %frag_len = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 19
  %35 = ptrtoint ptr %frag_len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2346, ptr %frag_len, align 4
  %txirp_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 30
  %36 = ptrtoint ptr %txirp_cnt to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %txirp_cnt, align 1
  %beq_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 35
  %free_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 48
  %37 = call ptr @memset(ptr %beq_cnt, i32 0, i32 16)
  %38 = ptrtoint ptr %free_xmitbuf_queue to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %free_xmitbuf_queue, ptr %free_xmitbuf_queue, align 4
  %prev.i259 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 48, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %free_xmitbuf_queue, ptr %prev.i259, align 4
  %lock101 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 48, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock101, ptr noundef nonnull @.str.19, ptr noundef nonnull @_r8712_init_xmit_priv.__key.18, i16 noundef signext 3) #8
  %pending_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 49
  %40 = ptrtoint ptr %pending_xmitbuf_queue to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %pending_xmitbuf_queue, ptr %pending_xmitbuf_queue, align 4
  %prev.i260 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 49, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i260 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %pending_xmitbuf_queue, ptr %prev.i260, align 4
  %lock111 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 49, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock111, ptr noundef nonnull @.str.21, ptr noundef nonnull @_r8712_init_xmit_priv.__key.20, i16 noundef signext 3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 2592, i32 noundef 228) #12
  %pallocated_xmitbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 50
  %43 = ptrtoint ptr %pallocated_xmitbuf to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i, ptr %pallocated_xmitbuf, align 4
  %tobool119.not = icmp eq ptr %call7.i, null
  br i1 %tobool119.not, label %if.then120, label %if.end123

if.then120:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pallocated_frame_buf, align 8
  tail call void @kfree(ptr noundef %45) #8
  %46 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %pallocated_frame_buf, align 8
  br label %cleanup

if.end123:                                        ; preds = %for.end
  %add.ptr125 = getelementptr i8, ptr %call7.i, i32 4
  %pxmitbuf130 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 51
  %47 = ptrtoint ptr %pxmitbuf130 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr125, ptr %pxmitbuf130, align 8
  %48 = ptrtoint ptr %add.ptr125 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %add.ptr125, ptr %add.ptr125, align 4
  %prev.i261 = getelementptr i8, ptr %call7.i, i32 8
  %49 = ptrtoint ptr %prev.i261 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr125, ptr %prev.i261, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i249 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 2592, i32 noundef 2560) #12
  %pallocated_buf = getelementptr i8, ptr %call7.i, i32 12
  %51 = ptrtoint ptr %pallocated_buf to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i249, ptr %pallocated_buf, align 4
  %tobool138.not = icmp eq ptr %call7.i249, null
  br i1 %tobool138.not, label %if.end123.cleanup_crit_edge, label %if.end140

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end140:                                        ; preds = %if.end123
  %add.ptr142 = getelementptr i8, ptr %call7.i249, i32 512
  %52 = ptrtoint ptr %call7.i249 to i32
  %and144 = and i32 %52, 504
  %idx.neg145 = sub nsw i32 0, %and144
  %add.ptr146 = getelementptr i8, ptr %add.ptr142, i32 %idx.neg145
  %pbuf = getelementptr i8, ptr %call7.i, i32 16
  %53 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr146, ptr %pbuf, align 8
  %call147 = tail call i32 @r8712_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %add.ptr125) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %if.end140.cleanup_crit_edge

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end150:                                        ; preds = %if.end140
  %54 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i259, align 4
  %call.i.i263 = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr125, ptr noundef %55, ptr noundef %free_xmitbuf_queue) #8
  br i1 %call.i.i263, label %if.end.i.i265, label %if.end150.list_add_tail.exit266_crit_edge

if.end150.list_add_tail.exit266_crit_edge:        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit266

if.end.i.i265:                                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr125, ptr %prev.i259, align 4
  %57 = ptrtoint ptr %add.ptr125 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %free_xmitbuf_queue, ptr %add.ptr125, align 4
  %58 = ptrtoint ptr %prev.i261 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev.i261, align 8
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %add.ptr125, ptr %55, align 4
  br label %list_add_tail.exit266

list_add_tail.exit266:                            ; preds = %if.end.i.i265, %if.end150.list_add_tail.exit266_crit_edge
  %incdec.ptr154 = getelementptr i8, ptr %call7.i, i32 60
  %60 = ptrtoint ptr %incdec.ptr154 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %incdec.ptr154, ptr %incdec.ptr154, align 4
  %prev.i261.1 = getelementptr i8, ptr %call7.i, i32 64
  %61 = ptrtoint ptr %prev.i261.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %incdec.ptr154, ptr %prev.i261.1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i249.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 2592, i32 noundef 2560) #12
  %pallocated_buf.1 = getelementptr i8, ptr %call7.i, i32 68
  %63 = ptrtoint ptr %pallocated_buf.1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i249.1, ptr %pallocated_buf.1, align 4
  %tobool138.not.1 = icmp eq ptr %call7.i249.1, null
  br i1 %tobool138.not.1, label %list_add_tail.exit266.cleanup_crit_edge, label %if.end140.1

list_add_tail.exit266.cleanup_crit_edge:          ; preds = %list_add_tail.exit266
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end140.1:                                      ; preds = %list_add_tail.exit266
  %add.ptr142.1 = getelementptr i8, ptr %call7.i249.1, i32 512
  %64 = ptrtoint ptr %call7.i249.1 to i32
  %and144.1 = and i32 %64, 504
  %idx.neg145.1 = sub nsw i32 0, %and144.1
  %add.ptr146.1 = getelementptr i8, ptr %add.ptr142.1, i32 %idx.neg145.1
  %pbuf.1 = getelementptr i8, ptr %call7.i, i32 72
  %65 = ptrtoint ptr %pbuf.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr146.1, ptr %pbuf.1, align 8
  %call147.1 = tail call i32 @r8712_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %incdec.ptr154) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.1)
  %tobool148.not.1 = icmp eq i32 %call147.1, 0
  br i1 %tobool148.not.1, label %if.end150.1, label %if.end140.1.cleanup_crit_edge

if.end140.1.cleanup_crit_edge:                    ; preds = %if.end140.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end150.1:                                      ; preds = %if.end140.1
  %66 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i259, align 4
  %call.i.i263.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr154, ptr noundef %67, ptr noundef %free_xmitbuf_queue) #8
  br i1 %call.i.i263.1, label %if.end.i.i265.1, label %if.end150.1.list_add_tail.exit266.1_crit_edge

if.end150.1.list_add_tail.exit266.1_crit_edge:    ; preds = %if.end150.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit266.1

if.end.i.i265.1:                                  ; preds = %if.end150.1
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %incdec.ptr154, ptr %prev.i259, align 4
  %69 = ptrtoint ptr %incdec.ptr154 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %free_xmitbuf_queue, ptr %incdec.ptr154, align 4
  %70 = ptrtoint ptr %prev.i261.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev.i261.1, align 8
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %incdec.ptr154, ptr %67, align 4
  br label %list_add_tail.exit266.1

list_add_tail.exit266.1:                          ; preds = %if.end.i.i265.1, %if.end150.1.list_add_tail.exit266.1_crit_edge
  %incdec.ptr154.1 = getelementptr i8, ptr %call7.i, i32 116
  %72 = ptrtoint ptr %incdec.ptr154.1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %incdec.ptr154.1, ptr %incdec.ptr154.1, align 4
  %prev.i261.2 = getelementptr i8, ptr %call7.i, i32 120
  %73 = ptrtoint ptr %prev.i261.2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %incdec.ptr154.1, ptr %prev.i261.2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i249.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 2592, i32 noundef 2560) #12
  %pallocated_buf.2 = getelementptr i8, ptr %call7.i, i32 124
  %75 = ptrtoint ptr %pallocated_buf.2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i249.2, ptr %pallocated_buf.2, align 4
  %tobool138.not.2 = icmp eq ptr %call7.i249.2, null
  br i1 %tobool138.not.2, label %list_add_tail.exit266.1.cleanup_crit_edge, label %if.end140.2

list_add_tail.exit266.1.cleanup_crit_edge:        ; preds = %list_add_tail.exit266.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end140.2:                                      ; preds = %list_add_tail.exit266.1
  %add.ptr142.2 = getelementptr i8, ptr %call7.i249.2, i32 512
  %76 = ptrtoint ptr %call7.i249.2 to i32
  %and144.2 = and i32 %76, 504
  %idx.neg145.2 = sub nsw i32 0, %and144.2
  %add.ptr146.2 = getelementptr i8, ptr %add.ptr142.2, i32 %idx.neg145.2
  %pbuf.2 = getelementptr i8, ptr %call7.i, i32 128
  %77 = ptrtoint ptr %pbuf.2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr146.2, ptr %pbuf.2, align 8
  %call147.2 = tail call i32 @r8712_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %incdec.ptr154.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.2)
  %tobool148.not.2 = icmp eq i32 %call147.2, 0
  br i1 %tobool148.not.2, label %if.end150.2, label %if.end140.2.cleanup_crit_edge

if.end140.2.cleanup_crit_edge:                    ; preds = %if.end140.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end150.2:                                      ; preds = %if.end140.2
  %78 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i259, align 4
  %call.i.i263.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr154.1, ptr noundef %79, ptr noundef %free_xmitbuf_queue) #8
  br i1 %call.i.i263.2, label %if.end.i.i265.2, label %if.end150.2.list_add_tail.exit266.2_crit_edge

if.end150.2.list_add_tail.exit266.2_crit_edge:    ; preds = %if.end150.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit266.2

if.end.i.i265.2:                                  ; preds = %if.end150.2
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %incdec.ptr154.1, ptr %prev.i259, align 4
  %81 = ptrtoint ptr %incdec.ptr154.1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %free_xmitbuf_queue, ptr %incdec.ptr154.1, align 4
  %82 = ptrtoint ptr %prev.i261.2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev.i261.2, align 8
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %incdec.ptr154.1, ptr %79, align 4
  br label %list_add_tail.exit266.2

list_add_tail.exit266.2:                          ; preds = %if.end.i.i265.2, %if.end150.2.list_add_tail.exit266.2_crit_edge
  %incdec.ptr154.2 = getelementptr i8, ptr %call7.i, i32 172
  %84 = ptrtoint ptr %incdec.ptr154.2 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %incdec.ptr154.2, ptr %incdec.ptr154.2, align 4
  %prev.i261.3 = getelementptr i8, ptr %call7.i, i32 176
  %85 = ptrtoint ptr %prev.i261.3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %incdec.ptr154.2, ptr %prev.i261.3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %86 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i249.3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 2592, i32 noundef 2560) #12
  %pallocated_buf.3 = getelementptr i8, ptr %call7.i, i32 180
  %87 = ptrtoint ptr %pallocated_buf.3 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call7.i249.3, ptr %pallocated_buf.3, align 4
  %tobool138.not.3 = icmp eq ptr %call7.i249.3, null
  br i1 %tobool138.not.3, label %list_add_tail.exit266.2.cleanup_crit_edge, label %if.end140.3

list_add_tail.exit266.2.cleanup_crit_edge:        ; preds = %list_add_tail.exit266.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end140.3:                                      ; preds = %list_add_tail.exit266.2
  %add.ptr142.3 = getelementptr i8, ptr %call7.i249.3, i32 512
  %88 = ptrtoint ptr %call7.i249.3 to i32
  %and144.3 = and i32 %88, 504
  %idx.neg145.3 = sub nsw i32 0, %and144.3
  %add.ptr146.3 = getelementptr i8, ptr %add.ptr142.3, i32 %idx.neg145.3
  %pbuf.3 = getelementptr i8, ptr %call7.i, i32 184
  %89 = ptrtoint ptr %pbuf.3 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr146.3, ptr %pbuf.3, align 8
  %call147.3 = tail call i32 @r8712_xmit_resource_alloc(ptr noundef %padapter, ptr noundef %incdec.ptr154.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.3)
  %tobool148.not.3 = icmp eq i32 %call147.3, 0
  br i1 %tobool148.not.3, label %if.end150.3, label %if.end140.3.cleanup_crit_edge

if.end140.3.cleanup_crit_edge:                    ; preds = %if.end140.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end150.3:                                      ; preds = %if.end140.3
  %90 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i259, align 4
  %call.i.i263.3 = tail call zeroext i1 @__list_add_valid(ptr noundef %incdec.ptr154.2, ptr noundef %91, ptr noundef %free_xmitbuf_queue) #8
  br i1 %call.i.i263.3, label %if.end.i.i265.3, label %if.end150.3.list_add_tail.exit266.3_crit_edge

if.end150.3.list_add_tail.exit266.3_crit_edge:    ; preds = %if.end150.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit266.3

if.end.i.i265.3:                                  ; preds = %if.end150.3
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %incdec.ptr154.2, ptr %prev.i259, align 4
  %93 = ptrtoint ptr %incdec.ptr154.2 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %free_xmitbuf_queue, ptr %incdec.ptr154.2, align 4
  %94 = ptrtoint ptr %prev.i261.3 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev.i261.3, align 8
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %incdec.ptr154.2, ptr %91, align 4
  br label %list_add_tail.exit266.3

list_add_tail.exit266.3:                          ; preds = %if.end.i.i265.3, %if.end150.3.list_add_tail.exit266.3_crit_edge
  %free_xmitbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 52
  %96 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 4, ptr %free_xmitbuf_cnt, align 4
  %wk_filter_rx_ff0 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 29
  tail call void @__init_work(ptr noundef %wk_filter_rx_ff0, i32 noundef 0) #8
  %97 = ptrtoint ptr %wk_filter_rx_ff0 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -64, ptr %wk_filter_rx_ff0, align 8
  %lockdep_map = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 29, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.23, ptr noundef nonnull @_r8712_init_xmit_priv.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry162 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 29, i32 1
  %98 = ptrtoint ptr %entry162 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %entry162, ptr %entry162, align 4
  %prev.i267 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 29, i32 1, i32 1
  %99 = ptrtoint ptr %prev.i267 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %entry162, ptr %prev.i267, align 4
  %func = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 29, i32 2
  %100 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @r8712_SetFilter, ptr %func, align 4
  %hwxmit_entry.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 29
  %101 = ptrtoint ptr %hwxmit_entry.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 4, ptr %hwxmit_entry.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %102 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %102, i32 noundef 2592, i32 noundef 272) #12
  %hwxmits2.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 28
  %103 = ptrtoint ptr %hwxmits2.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call7.i.i.i, ptr %hwxmits2.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %list_add_tail.exit266.3.alloc_hwxmits.exit_crit_edge, label %if.end.i

list_add_tail.exit266.3.alloc_hwxmits.exit_crit_edge: ; preds = %list_add_tail.exit266.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_hwxmits.exit

if.end.i:                                         ; preds = %list_add_tail.exit266.3
  %104 = ptrtoint ptr %hwxmit_entry.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %hwxmit_entry.i, align 8
  %106 = zext i8 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values)
  switch i8 %105, label %if.end.i.alloc_hwxmits.exit_crit_edge [
    i8 5, label %if.then8.i
    i8 4, label %if.then39.i
  ]

if.end.i.alloc_hwxmits.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_hwxmits.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %bmc_txqueue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 18
  %107 = ptrtoint ptr %bmc_txqueue.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %bmc_txqueue.i, align 8
  %phwtxqueue.i = getelementptr inbounds %struct.hw_xmit, ptr %call7.i.i.i, i32 0, i32 3
  %108 = ptrtoint ptr %phwtxqueue.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %bmc_txqueue.i, ptr %phwtxqueue.i, align 8
  %bm_pending.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 5
  %sta_queue.i = getelementptr inbounds %struct.hw_xmit, ptr %call7.i.i.i, i32 0, i32 2
  %109 = ptrtoint ptr %sta_queue.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %bm_pending.i, ptr %sta_queue.i, align 4
  %vo_txqueue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 17
  %110 = ptrtoint ptr %vo_txqueue.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %vo_txqueue.i, align 4
  %phwtxqueue14.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 1, i32 3
  %111 = ptrtoint ptr %phwtxqueue14.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %vo_txqueue.i, ptr %phwtxqueue14.i, align 4
  %vo_pending.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 4
  %sta_queue16.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 1, i32 2
  %112 = ptrtoint ptr %sta_queue16.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %vo_pending.i, ptr %sta_queue16.i, align 8
  %vi_txqueue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 16
  %113 = ptrtoint ptr %vi_txqueue.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %vi_txqueue.i, align 8
  %phwtxqueue20.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 2, i32 3
  %114 = ptrtoint ptr %phwtxqueue20.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %vi_txqueue.i, ptr %phwtxqueue20.i, align 8
  %vi_pending.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 3
  %sta_queue22.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 2, i32 2
  %115 = ptrtoint ptr %sta_queue22.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %vi_pending.i, ptr %sta_queue22.i, align 4
  %bk_txqueue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 15
  %116 = ptrtoint ptr %bk_txqueue.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %bk_txqueue.i, align 4
  %phwtxqueue26.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 3, i32 3
  %117 = ptrtoint ptr %phwtxqueue26.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %bk_txqueue.i, ptr %phwtxqueue26.i, align 4
  %bk_pending.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 2
  %sta_queue28.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 3, i32 2
  %118 = ptrtoint ptr %sta_queue28.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %bk_pending.i, ptr %sta_queue28.i, align 8
  %be_txqueue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 14
  %119 = ptrtoint ptr %be_txqueue.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %be_txqueue.i, align 8
  %phwtxqueue32.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 4, i32 3
  %120 = ptrtoint ptr %phwtxqueue32.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %be_txqueue.i, ptr %phwtxqueue32.i, align 8
  %be_pending.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 1
  %sta_queue34.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 4, i32 2
  %121 = ptrtoint ptr %sta_queue34.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %be_pending.i, ptr %sta_queue34.i, align 4
  br label %alloc_hwxmits.exit

if.then39.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %vo_txqueue40.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 17
  %122 = ptrtoint ptr %vo_txqueue40.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %vo_txqueue40.i, align 4
  %phwtxqueue44.i = getelementptr inbounds %struct.hw_xmit, ptr %call7.i.i.i, i32 0, i32 3
  %123 = ptrtoint ptr %phwtxqueue44.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %vo_txqueue40.i, ptr %phwtxqueue44.i, align 8
  %vo_pending45.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 4
  %sta_queue47.i = getelementptr inbounds %struct.hw_xmit, ptr %call7.i.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %sta_queue47.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %vo_pending45.i, ptr %sta_queue47.i, align 4
  %vi_txqueue48.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 16
  %125 = ptrtoint ptr %vi_txqueue48.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %vi_txqueue48.i, align 8
  %phwtxqueue52.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 1, i32 3
  %126 = ptrtoint ptr %phwtxqueue52.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %vi_txqueue48.i, ptr %phwtxqueue52.i, align 4
  %vi_pending53.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 3
  %sta_queue55.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 1, i32 2
  %127 = ptrtoint ptr %sta_queue55.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %vi_pending53.i, ptr %sta_queue55.i, align 8
  %be_txqueue56.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 14
  %128 = ptrtoint ptr %be_txqueue56.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %be_txqueue56.i, align 8
  %phwtxqueue60.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 2, i32 3
  %129 = ptrtoint ptr %phwtxqueue60.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %be_txqueue56.i, ptr %phwtxqueue60.i, align 8
  %be_pending61.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 1
  %sta_queue63.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 2, i32 2
  %130 = ptrtoint ptr %sta_queue63.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %be_pending61.i, ptr %sta_queue63.i, align 4
  %bk_txqueue64.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 15
  %131 = ptrtoint ptr %bk_txqueue64.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %bk_txqueue64.i, align 4
  %phwtxqueue68.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 3, i32 3
  %132 = ptrtoint ptr %phwtxqueue68.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %bk_txqueue64.i, ptr %phwtxqueue68.i, align 4
  %bk_pending69.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 2
  %sta_queue71.i = getelementptr %struct.hw_xmit, ptr %call7.i.i.i, i32 3, i32 2
  %133 = ptrtoint ptr %sta_queue71.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %bk_pending69.i, ptr %sta_queue71.i, align 8
  br label %alloc_hwxmits.exit

alloc_hwxmits.exit:                               ; preds = %if.then39.i, %if.then8.i, %if.end.i.alloc_hwxmits.exit_crit_edge, %list_add_tail.exit266.3.alloc_hwxmits.exit_crit_edge
  %hwxmit_entry = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 29
  %134 = ptrtoint ptr %hwxmit_entry to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %hwxmit_entry, align 8
  %conv = zext i8 %135 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp7.i.not = icmp eq i8 %135, 0
  br i1 %cmp7.i.not, label %alloc_hwxmits.exit.init_hwxmits.exit_crit_edge, label %do.body.i.preheader

alloc_hwxmits.exit.init_hwxmits.exit_crit_edge:   ; preds = %alloc_hwxmits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_hwxmits.exit

do.body.i.preheader:                              ; preds = %alloc_hwxmits.exit
  %hwxmits = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 28
  %136 = ptrtoint ptr %hwxmits to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hwxmits, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %i.09.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %do.body.i.preheader ]
  %phwxmit.addr.08.i = phi ptr [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ], [ %137, %do.body.i.preheader ]
  tail call void @__raw_spin_lock_init(ptr noundef %phwxmit.addr.08.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_hwxmits.__key, i16 noundef signext 3) #8
  %pending.i = getelementptr inbounds %struct.hw_xmit, ptr %phwxmit.addr.08.i, i32 0, i32 1
  %138 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %pending.i, ptr %pending.i, align 4
  %prev.i.i = getelementptr inbounds %struct.hw_xmit, ptr %phwxmit.addr.08.i, i32 0, i32 1, i32 1
  %139 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %pending.i, ptr %prev.i.i, align 4
  %txcmdcnt.i = getelementptr inbounds %struct.hw_xmit, ptr %phwxmit.addr.08.i, i32 0, i32 4
  %140 = ptrtoint ptr %txcmdcnt.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %txcmdcnt.i, align 4
  %accnt.i = getelementptr inbounds %struct.hw_xmit, ptr %phwxmit.addr.08.i, i32 0, i32 5
  %141 = ptrtoint ptr %accnt.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %accnt.i, align 4
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %incdec.ptr.i = getelementptr %struct.hw_xmit, ptr %phwxmit.addr.08.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %do.body.i.init_hwxmits.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i.init_hwxmits.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_hwxmits.exit

init_hwxmits.exit:                                ; preds = %do.body.i.init_hwxmits.exit_crit_edge, %alloc_hwxmits.exit.init_hwxmits.exit_crit_edge
  %xmit_tasklet = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 31
  tail call void @tasklet_setup(ptr noundef %xmit_tasklet, ptr noundef nonnull @r8712_xmit_bh) #8
  br label %cleanup

cleanup:                                          ; preds = %init_hwxmits.exit, %if.end140.3.cleanup_crit_edge, %list_add_tail.exit266.2.cleanup_crit_edge, %if.end140.2.cleanup_crit_edge, %list_add_tail.exit266.1.cleanup_crit_edge, %if.end140.1.cleanup_crit_edge, %list_add_tail.exit266.cleanup_crit_edge, %if.end140.cleanup_crit_edge, %if.end123.cleanup_crit_edge, %if.then120, %if.then
  %retval.0 = phi i32 [ 0, %init_hwxmits.exit ], [ -12, %if.then120 ], [ -12, %if.then ], [ -12, %if.end140.3.cleanup_crit_edge ], [ -12, %list_add_tail.exit266.2.cleanup_crit_edge ], [ -12, %if.end140.2.cleanup_crit_edge ], [ -12, %list_add_tail.exit266.1.cleanup_crit_edge ], [ -12, %if.end140.1.cleanup_crit_edge ], [ -12, %list_add_tail.exit266.cleanup_crit_edge ], [ -12, %if.end123.cleanup_crit_edge ], [ -12, %if.end140.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_r8712_init_hw_txqueue(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_xmit_resource_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_SetFilter(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_xmit_bh(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_free_xmit_priv(ptr nocapture noundef readonly %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 20
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %pxmit_frame_buf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 9
  %2 = ptrtoint ptr %pxmit_frame_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pxmit_frame_buf, align 4
  %pxmitbuf1 = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 51
  %4 = ptrtoint ptr %pxmitbuf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxmitbuf1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pxmitframe.027 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @r8712_xmit_complete(ptr noundef %1, ptr noundef %pxmitframe.027) #8
  %incdec.ptr = getelementptr %struct.xmit_frame, ptr %pxmitframe.027, i32 1
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body5.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body5.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r8712_xmit_resource_free(ptr noundef %1, ptr noundef %5) #8
  %pallocated_buf = getelementptr inbounds %struct.xmit_buf, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pallocated_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pallocated_buf, align 4
  tail call void @kfree(ptr noundef %7) #8
  %incdec.ptr6 = getelementptr %struct.xmit_buf, ptr %5, i32 1
  tail call void @r8712_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6) #8
  %pallocated_buf.1 = getelementptr %struct.xmit_buf, ptr %5, i32 1, i32 1
  %8 = ptrtoint ptr %pallocated_buf.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pallocated_buf.1, align 4
  tail call void @kfree(ptr noundef %9) #8
  %incdec.ptr6.1 = getelementptr %struct.xmit_buf, ptr %5, i32 2
  tail call void @r8712_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.1) #8
  %pallocated_buf.2 = getelementptr %struct.xmit_buf, ptr %5, i32 2, i32 1
  %10 = ptrtoint ptr %pallocated_buf.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pallocated_buf.2, align 4
  tail call void @kfree(ptr noundef %11) #8
  %incdec.ptr6.2 = getelementptr %struct.xmit_buf, ptr %5, i32 3
  tail call void @r8712_xmit_resource_free(ptr noundef %1, ptr noundef %incdec.ptr6.2) #8
  %pallocated_buf.3 = getelementptr %struct.xmit_buf, ptr %5, i32 3, i32 1
  %12 = ptrtoint ptr %pallocated_buf.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pallocated_buf.3, align 4
  tail call void @kfree(ptr noundef %13) #8
  %pallocated_frame_buf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 8
  %14 = ptrtoint ptr %pallocated_frame_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pallocated_frame_buf, align 8
  tail call void @kfree(ptr noundef %15) #8
  %pallocated_xmitbuf = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 50
  %16 = ptrtoint ptr %pallocated_xmitbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pallocated_xmitbuf, align 4
  tail call void @kfree(ptr noundef %17) #8
  %hwxmits.i = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 5, i32 28
  %18 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwxmits.i, align 4
  tail call void @kfree(ptr noundef %19) #8
  br label %cleanup

cleanup:                                          ; preds = %for.body5.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_xmit_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_xmit_resource_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_update_attrib(ptr noundef %padapter, ptr noundef %pkt, ptr noundef %pattrib) local_unnamed_addr #0 align 64 {
entry:
  %pktfile = alloca %struct.pkt_file, align 4
  %etherhdr = alloca %struct.ethhdr, align 1
  %txdesc = alloca %struct.tx_desc, align 4
  %tmp = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pktfile) #8
  %0 = getelementptr inbounds %struct.pkt_file, ptr %pktfile, i32 0, i32 1
  %1 = call ptr @memset(ptr %pktfile, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %etherhdr) #8
  %2 = getelementptr inbounds %struct.ethhdr, ptr %etherhdr, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ethhdr, ptr %etherhdr, i32 0, i32 2
  %4 = call ptr @memset(ptr %etherhdr, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %txdesc) #8
  %5 = getelementptr inbounds %struct.tx_desc, ptr %txdesc, i32 0, i32 1
  %stapriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %securitypriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8
  %qospriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 20
  %6 = call ptr @memset(ptr %txdesc, i32 255, i32 32)
  call void @_r8712_open_pktfile(ptr noundef %pkt, ptr noundef nonnull %pktfile) #8
  %call = call i32 @_r8712_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %etherhdr, i32 noundef 14) #8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %3, align 1
  %ether_type = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 5
  %9 = ptrtoint ptr %ether_type to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %ether_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %8)
  %cmp = icmp eq i16 %8, 2054
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then:                                          ; preds = %entry
  %pwr_mode = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 11, i32 6
  %10 = ptrtoint ptr %pwr_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pwr_mode, align 4
  %power_mgnt = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 17
  %12 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %power_mgnt, align 1
  %conv3 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv3)
  %cmp4.not = icmp eq i32 %11, %conv3
  br i1 %cmp4.not, label %if.then.if.end13_crit_edge, label %if.then6

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dhcp_timer = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 19
  %call7 = call i32 @del_timer_sync(ptr noundef %dhcp_timer) #8
  %14 = ptrtoint ptr %power_mgnt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %power_mgnt, align 1
  %conv10 = zext i8 %15 to i32
  %smart_ps = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 16
  %16 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %smart_ps, align 8
  %conv12 = zext i8 %17 to i32
  call void @r8712_set_ps_mode(ptr noundef %padapter, i32 noundef %conv10, i32 noundef %conv12) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %dst = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 22
  %18 = call ptr @memcpy(ptr %dst, ptr %etherhdr, i32 6)
  %src = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 23
  %19 = call ptr @memcpy(ptr %src, ptr %2, i32 6)
  %pctrl = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 14
  %20 = ptrtoint ptr %pctrl to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %pctrl, align 2
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_state.i, align 8
  %23 = and i32 %22, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %ra = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 25
  %25 = call ptr @memcpy(ptr %ra, ptr %etherhdr, i32 6)
  %ta = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 24
  %26 = call ptr @memcpy(ptr %ta, ptr %2, i32 6)
  br label %if.end71

if.else:                                          ; preds = %if.end13
  %27 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool28.not = icmp eq i32 %27, 0
  br i1 %tobool28.not, label %if.else37, label %if.then29

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %ra30 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 25
  %MacAddress.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %28 = call ptr @memcpy(ptr %ra30, ptr %MacAddress.i, i32 6)
  %ta33 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 24
  %29 = call ptr @memcpy(ptr %ta33, ptr %2, i32 6)
  br label %if.end71

if.else37:                                        ; preds = %if.else
  %30 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool39.not = icmp eq i32 %30, 0
  br i1 %tobool39.not, label %if.else48, label %if.then40

if.then40:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  %ra41 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 25
  %31 = call ptr @memcpy(ptr %ra41, ptr %etherhdr, i32 6)
  %ta45 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 24
  %MacAddress.i321 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %32 = call ptr @memcpy(ptr %ta45, ptr %MacAddress.i321, i32 6)
  br label %if.end71

if.else48:                                        ; preds = %if.else37
  %33 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool50.not = icmp eq i32 %33, 0
  br i1 %tobool50.not, label %if.else48.if.end71_crit_edge, label %if.then51

if.else48.if.end71_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then51:                                        ; preds = %if.else48
  %34 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ether_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30958, i16 %35)
  %cmp54.not = icmp eq i16 %35, -30958
  br i1 %cmp54.not, label %if.end57, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = call i32 @_r8712_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %txdesc, i32 noundef 32) #8
  %ra59 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 25
  %36 = call ptr @memcpy(ptr %ra59, ptr %dst, i32 6)
  %ta63 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 24
  %37 = call ptr @memcpy(ptr %ta63, ptr %src, i32 6)
  %38 = ptrtoint ptr %pctrl to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %pctrl, align 2
  br label %if.end71

if.end71:                                         ; preds = %if.end57, %if.else48.if.end71_crit_edge, %if.then40, %if.then29, %if.then20
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %0, align 4
  %conv72 = trunc i32 %40 to i16
  %pktlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 6
  %41 = ptrtoint ptr %pktlen to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv72, ptr %pktlen, align 4
  %42 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ether_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %43)
  %cmp75 = icmp eq i16 %43, 2048
  br i1 %cmp75, label %if.then77, label %if.end71.if.end111_crit_edge

if.end71.if.end111_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then77:                                        ; preds = %if.end71
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #8
  %44 = getelementptr inbounds [24 x i8], ptr %tmp, i32 0, i32 21
  %45 = getelementptr inbounds [24 x i8], ptr %tmp, i32 0, i32 23
  %46 = call ptr @memset(ptr %tmp, i32 255, i32 24)
  %call78 = call i32 @_r8712_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %tmp, i32 noundef 24) #8
  %dhcp_pkt = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 3
  %47 = ptrtoint ptr %dhcp_pkt to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %dhcp_pkt, align 1
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 282, i32 %49)
  %cmp80 = icmp ugt i32 %49, 282
  br i1 %cmp80, label %if.then82, label %if.then77.if.end110_crit_edge

if.then77.if.end110_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then82:                                        ; preds = %if.then77
  %50 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %ether_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %51)
  %cmp85 = icmp eq i16 %51, 2048
  br i1 %cmp85, label %if.then87, label %if.then82.if.end110_crit_edge

if.then82.if.end110_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then87:                                        ; preds = %if.then82
  %52 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %44, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %53, label %if.then87.if.end110_crit_edge [
    i8 68, label %land.lhs.true
    i8 67, label %land.lhs.true101
  ]

if.then87.if.end110_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

land.lhs.true:                                    ; preds = %if.then87
  %55 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %56)
  %cmp94 = icmp eq i8 %56, 67
  br i1 %cmp94, label %land.lhs.true.if.then106_crit_edge, label %land.lhs.true.if.end110_crit_edge

land.lhs.true.if.end110_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

land.lhs.true.if.then106_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then106

land.lhs.true101:                                 ; preds = %if.then87
  %57 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %58)
  %cmp104 = icmp eq i8 %58, 68
  br i1 %cmp104, label %land.lhs.true101.if.then106_crit_edge, label %land.lhs.true101.if.end110_crit_edge

land.lhs.true101.if.end110_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

land.lhs.true101.if.then106_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then106

if.then106:                                       ; preds = %land.lhs.true101.if.then106_crit_edge, %land.lhs.true.if.then106_crit_edge
  %59 = ptrtoint ptr %dhcp_pkt to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %dhcp_pkt, align 1
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %land.lhs.true101.if.end110_crit_edge, %land.lhs.true.if.end110_crit_edge, %if.then87.if.end110_crit_edge, %if.then82.if.end110_crit_edge, %if.then77.if.end110_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #8
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.end71.if.end111_crit_edge
  %ra112 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 25
  %60 = ptrtoint ptr %ra112 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ra112, align 4
  %62 = and i32 %61, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i.not = icmp eq i32 %62, 0
  br i1 %tobool.i.not, label %if.else118, label %if.then116

if.then116:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %call117 = call ptr @r8712_get_bcmc_stainfo(ptr noundef %padapter) #8
  br label %if.end142

if.else118:                                       ; preds = %if.end111
  %63 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fw_state.i, align 8
  %65 = and i32 %64, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool120.not = icmp eq i32 %65, 0
  br i1 %tobool120.not, label %if.else125, label %if.then121

if.then121:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #10
  %MacAddress.i330 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %call123 = call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress.i330) #8
  br label %if.end142

if.else125:                                       ; preds = %if.else118
  %call128 = call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %ra112) #8
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %if.else125.cleanup_crit_edge, label %if.end131

if.else125.cleanup_crit_edge:                     ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end131:                                        ; preds = %if.else125
  %66 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fw_state.i, align 8
  %68 = and i32 %67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool133.not = icmp eq i32 %68, 0
  br i1 %tobool133.not, label %if.else136, label %if.end131.if.then144.sink.split_crit_edge

if.end131.if.then144.sink.split_crit_edge:        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144.sink.split

if.else136:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  %mac_id137 = getelementptr inbounds %struct.sta_info, ptr %call128, i32 0, i32 7
  %69 = ptrtoint ptr %mac_id137 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mac_id137, align 8
  %conv138 = trunc i32 %70 to i8
  br label %if.then144.sink.split

if.end142:                                        ; preds = %if.then121, %if.then116
  %.sink = phi i8 [ 5, %if.then121 ], [ 4, %if.then116 ]
  %psta.0 = phi ptr [ %call123, %if.then121 ], [ %call117, %if.then116 ]
  %mac_id124 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 12
  %71 = ptrtoint ptr %mac_id124 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %.sink, ptr %mac_id124, align 4
  %tobool143.not = icmp eq ptr %psta.0, null
  br i1 %tobool143.not, label %if.end142.cleanup_crit_edge, label %if.end142.if.then144_crit_edge

if.end142.if.then144_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then144.sink.split:                            ; preds = %if.else136, %if.end131.if.then144.sink.split_crit_edge
  %conv138.sink = phi i8 [ %conv138, %if.else136 ], [ 5, %if.end131.if.then144.sink.split_crit_edge ]
  %mac_id139 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 12
  %72 = ptrtoint ptr %mac_id139 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv138.sink, ptr %mac_id139, align 4
  br label %if.then144

if.then144:                                       ; preds = %if.then144.sink.split, %if.end142.if.then144_crit_edge
  %psta.0346 = phi ptr [ %psta.0, %if.end142.if.then144_crit_edge ], [ %call128, %if.then144.sink.split ]
  %psta145 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 26
  %73 = ptrtoint ptr %psta145 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %psta.0346, ptr %psta145, align 4
  %ack_policy = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 11
  %74 = ptrtoint ptr %ack_policy to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %ack_policy, align 1
  %pkt_hdrlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 8
  %75 = ptrtoint ptr %pkt_hdrlen to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 14, ptr %pkt_hdrlen, align 4
  %76 = ptrtoint ptr %qospriv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %qospriv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool148.not = icmp eq i32 %77, 0
  br i1 %tobool148.not, label %if.else150, label %if.then149

if.then149:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  call void @r8712_set_qos(ptr noundef nonnull %pktfile, ptr noundef %pattrib) #8
  br label %if.end151

if.else150:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  %hdrlen = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 9
  %78 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 24, ptr %hdrlen, align 1
  %subtype = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 1
  %79 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 8, ptr %subtype, align 1
  %priority = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %80 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %priority, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.else150, %if.then149
  %ieee8021x_blocked = getelementptr inbounds %struct.sta_info, ptr %psta.0346, i32 0, i32 10
  %81 = ptrtoint ptr %ieee8021x_blocked to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ieee8021x_blocked, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool152.not = icmp eq i32 %82, 0
  br i1 %tobool152.not, label %do.body, label %if.then153

if.then153:                                       ; preds = %if.end151
  %encrypt = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 17
  %83 = ptrtoint ptr %encrypt to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %encrypt, align 1
  %84 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %ether_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %85)
  %cmp156.not = icmp eq i16 %85, -30578
  br i1 %cmp156.not, label %if.then153.if.end175_crit_edge, label %land.lhs.true158

if.then153.if.end175_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

land.lhs.true158:                                 ; preds = %if.then153
  %86 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fw_state.i, align 8
  %88 = and i32 %87, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool160.not = icmp eq i32 %88, 0
  br i1 %tobool160.not, label %land.lhs.true158.cleanup_crit_edge, label %land.lhs.true158.if.end175_crit_edge

land.lhs.true158.if.end175_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

land.lhs.true158.cleanup_crit_edge:               ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end151
  %89 = ptrtoint ptr %securitypriv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %securitypriv, align 8
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %90, label %do.body.if.end175_crit_edge [
    i32 0, label %do.body.sw.bb_crit_edge
    i32 1, label %do.body.sw.bb_crit_edge352
    i32 3, label %do.body.sw.bb_crit_edge353
    i32 2, label %sw.bb166
  ]

do.body.sw.bb_crit_edge353:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.body.sw.bb_crit_edge352:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.body.sw.bb_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.body.if.end175_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

sw.bb:                                            ; preds = %do.body.sw.bb_crit_edge, %do.body.sw.bb_crit_edge352, %do.body.sw.bb_crit_edge353
  %PrivacyAlgrthm = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 1
  br label %if.end175.sink.split

sw.bb166:                                         ; preds = %do.body
  br i1 %tobool.i.not, label %if.else171, label %if.then168

if.then168:                                       ; preds = %sw.bb166
  call void @__sanitizer_cov_trace_pc() #10
  %XGrpPrivacy = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 5
  br label %if.end175.sink.split

if.else171:                                       ; preds = %sw.bb166
  call void @__sanitizer_cov_trace_pc() #10
  %XPrivacy = getelementptr inbounds %struct.sta_info, ptr %psta.0346, i32 0, i32 11
  br label %if.end175.sink.split

if.end175.sink.split:                             ; preds = %if.else171, %if.then168, %sw.bb
  %PrivacyAlgrthm.sink = phi ptr [ %PrivacyAlgrthm, %sw.bb ], [ %XPrivacy, %if.else171 ], [ %XGrpPrivacy, %if.then168 ]
  %92 = ptrtoint ptr %PrivacyAlgrthm.sink to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %PrivacyAlgrthm.sink, align 4
  %conv164 = trunc i32 %93 to i8
  %encrypt165 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 17
  %94 = ptrtoint ptr %encrypt165 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv164, ptr %encrypt165, align 1
  br label %if.end175

if.end175:                                        ; preds = %if.end175.sink.split, %do.body.if.end175_crit_edge, %land.lhs.true158.if.end175_crit_edge, %if.then153.if.end175_crit_edge
  %encrypt176 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 17
  %95 = ptrtoint ptr %encrypt176 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %encrypt176, align 1
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %96, label %sw.epilog193 [
    i8 1, label %if.end175.land.lhs.true197.sink.split_crit_edge
    i8 5, label %if.end175.land.lhs.true197.sink.split_crit_edge354
    i8 2, label %sw.bb179
    i8 4, label %sw.bb188
  ]

if.end175.land.lhs.true197.sink.split_crit_edge354: ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true197.sink.split

if.end175.land.lhs.true197.sink.split_crit_edge:  ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true197.sink.split

sw.bb179:                                         ; preds = %if.end175
  %iv_len180 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 18
  %98 = ptrtoint ptr %iv_len180 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 8, ptr %iv_len180, align 2
  %icv_len181 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 19
  %99 = ptrtoint ptr %icv_len181 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 4, ptr %icv_len181, align 1
  %busetkipkey = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 17
  %100 = ptrtoint ptr %busetkipkey to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %busetkipkey, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp184 = icmp eq i8 %101, 0
  br i1 %cmp184, label %sw.bb179.cleanup_crit_edge, label %sw.bb179.land.lhs.true197_crit_edge

sw.bb179.land.lhs.true197_crit_edge:              ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true197

sw.bb179.cleanup_crit_edge:                       ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb188:                                         ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true197.sink.split

sw.epilog193:                                     ; preds = %if.end175
  %iv_len191 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 18
  %102 = ptrtoint ptr %iv_len191 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %iv_len191, align 2
  %icv_len192 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 19
  %103 = ptrtoint ptr %icv_len192 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %icv_len192, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool196.not = icmp eq i8 %96, 0
  br i1 %tobool196.not, label %sw.epilog193.if.else203_crit_edge, label %sw.epilog193.land.lhs.true197_crit_edge

sw.epilog193.land.lhs.true197_crit_edge:          ; preds = %sw.epilog193
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true197

sw.epilog193.if.else203_crit_edge:                ; preds = %sw.epilog193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else203

land.lhs.true197.sink.split:                      ; preds = %sw.bb188, %if.end175.land.lhs.true197.sink.split_crit_edge, %if.end175.land.lhs.true197.sink.split_crit_edge354
  %.sink350 = phi i8 [ 8, %sw.bb188 ], [ 4, %if.end175.land.lhs.true197.sink.split_crit_edge ], [ 4, %if.end175.land.lhs.true197.sink.split_crit_edge354 ]
  %iv_len = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 18
  %104 = ptrtoint ptr %iv_len to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %.sink350, ptr %iv_len, align 2
  %icv_len = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 19
  %105 = ptrtoint ptr %icv_len to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %.sink350, ptr %icv_len, align 1
  br label %land.lhs.true197

land.lhs.true197:                                 ; preds = %land.lhs.true197.sink.split, %sw.epilog193.land.lhs.true197_crit_edge, %sw.bb179.land.lhs.true197_crit_edge
  %sw_encrypt = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 21
  %106 = ptrtoint ptr %sw_encrypt to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sw_encrypt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool199.not = icmp eq i32 %107, 0
  br i1 %tobool199.not, label %lor.lhs.false200, label %land.lhs.true197.if.end205_crit_edge

land.lhs.true197.if.end205_crit_edge:             ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

lor.lhs.false200:                                 ; preds = %land.lhs.true197
  %hw_decrypted = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 23
  %108 = ptrtoint ptr %hw_decrypted to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %hw_decrypted, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool201.not = icmp eq i32 %109, 0
  br i1 %tobool201.not, label %lor.lhs.false200.if.end205_crit_edge, label %lor.lhs.false200.if.else203_crit_edge

lor.lhs.false200.if.else203_crit_edge:            ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else203

lor.lhs.false200.if.end205_crit_edge:             ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.else203:                                       ; preds = %lor.lhs.false200.if.else203_crit_edge, %sw.epilog193.if.else203_crit_edge
  br label %if.end205

if.end205:                                        ; preds = %if.else203, %lor.lhs.false200.if.end205_crit_edge, %land.lhs.true197.if.end205_crit_edge
  %.sink351 = phi i8 [ 0, %if.else203 ], [ 1, %lor.lhs.false200.if.end205_crit_edge ], [ 1, %land.lhs.true197.if.end205_crit_edge ]
  %bswenc204 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 2
  %110 = ptrtoint ptr %bswenc204 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %.sink351, ptr %bswenc204, align 2
  %111 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fw_state.i, align 8
  %113 = and i32 %112, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool207.not = icmp eq i32 %113, 0
  br i1 %tobool207.not, label %if.end205.cleanup_crit_edge, label %if.then208

if.end205.cleanup_crit_edge:                      ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then208:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %5, align 4
  %116 = lshr i32 %115, 16
  %117 = trunc i32 %116 to i8
  %conv209 = and i8 %117, 31
  %priority210 = getelementptr inbounds %struct.pkt_attrib, ptr %pattrib, i32 0, i32 16
  %118 = ptrtoint ptr %priority210 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv209, ptr %priority210, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then208, %if.end205.cleanup_crit_edge, %sw.bb179.cleanup_crit_edge, %land.lhs.true158.cleanup_crit_edge, %if.end142.cleanup_crit_edge, %if.else125.cleanup_crit_edge, %if.then51.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then51.cleanup_crit_edge ], [ -12, %if.else125.cleanup_crit_edge ], [ -12, %if.end142.cleanup_crit_edge ], [ -22, %land.lhs.true158.cleanup_crit_edge ], [ -22, %sw.bb179.cleanup_crit_edge ], [ 0, %if.then208 ], [ 0, %if.end205.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %txdesc) #8
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %etherhdr) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pktfile) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_r8712_open_pktfile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_r8712_pktfile_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_set_ps_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_bcmc_stainfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_set_qos(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_xmitframe_coalesce(ptr noundef %padapter, ptr noundef %pkt, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  %mic.i = alloca [8 x i8], align 8
  %micdata.i = alloca %struct.mic_data, align 4
  %priority.i537 = alloca [4 x i8], align 4
  %null_key.i = alloca [16 x i8], align 1
  %pktfile = alloca %struct.pkt_file, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pktfile) #8
  %0 = getelementptr inbounds %struct.pkt_file, ptr %pktfile, i32 0, i32 1
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 25
  %1 = call ptr @memset(ptr %pktfile, i32 255, i32 24)
  %2 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ra, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  %psta1 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 26
  %5 = ptrtoint ptr %psta1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %psta1, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %7 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf_addr, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %8, i32 32
  %qospriv.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 20
  %subtype.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 1
  %9 = call ptr @memset(ptr %add.ptr, i32 0, i32 64)
  %10 = ptrtoint ptr %subtype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %subtype.i, align 1
  %conv2.i = zext i8 %11 to i16
  %12 = shl nuw i16 %conv2.i, 8
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr, align 2
  %14 = load i8, ptr %subtype.i, align 1
  %15 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end5.if.end10_crit_edge, label %if.end.i

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i:                                         ; preds = %if.end5
  %MacAddress.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %fw_state.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_state.i.i, align 8
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not.i = icmp eq i32 %18, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = or i16 %12, 1
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %add.ptr, align 2
  %addr1.i = getelementptr i8, ptr %8, i32 36
  %21 = ptrtoint ptr %MacAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %MacAddress.i.i, align 4
  %23 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %addr1.i, align 4
  %add.ptr.i.i = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 1, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %8, i32 40
  %26 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %add.ptr1.i.i, align 2
  %addr2.i = getelementptr i8, ptr %8, i32 42
  %src.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %27 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %src.i, align 4
  %29 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %addr2.i, align 4
  %add.ptr.i209.i = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23, i32 4
  %30 = ptrtoint ptr %add.ptr.i209.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i209.i, align 2
  %add.ptr1.i210.i = getelementptr i8, ptr %8, i32 46
  %32 = ptrtoint ptr %add.ptr1.i210.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %add.ptr1.i210.i, align 2
  %addr3.i = getelementptr i8, ptr %8, i32 48
  %dst.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 22
  %33 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dst.i, align 4
  %35 = ptrtoint ptr %addr3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %addr3.i, align 4
  %add.ptr.i211.i = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 22, i32 4
  br label %if.end72.i

if.else.i:                                        ; preds = %if.end.i
  %36 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool20.not.i = icmp eq i32 %36, 0
  br i1 %tobool20.not.i, label %if.else36.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = or i16 %12, 2
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %add.ptr, align 2
  %addr126.i = getelementptr i8, ptr %8, i32 36
  %dst28.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 22
  %39 = ptrtoint ptr %dst28.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dst28.i, align 4
  %41 = ptrtoint ptr %addr126.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %addr126.i, align 4
  %add.ptr.i217.i = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 22, i32 4
  %42 = ptrtoint ptr %add.ptr.i217.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i217.i, align 2
  %add.ptr1.i218.i = getelementptr i8, ptr %8, i32 40
  %44 = ptrtoint ptr %add.ptr1.i218.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %add.ptr1.i218.i, align 2
  %addr230.i = getelementptr i8, ptr %8, i32 42
  %45 = ptrtoint ptr %MacAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %MacAddress.i.i, align 4
  %47 = ptrtoint ptr %addr230.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %addr230.i, align 4
  %add.ptr.i219.i = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 1, i32 4
  %48 = ptrtoint ptr %add.ptr.i219.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr.i219.i, align 2
  %add.ptr1.i220.i = getelementptr i8, ptr %8, i32 46
  %50 = ptrtoint ptr %add.ptr1.i220.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %add.ptr1.i220.i, align 2
  %addr332.i = getelementptr i8, ptr %8, i32 48
  %src34.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %51 = ptrtoint ptr %src34.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %src34.i, align 4
  %53 = ptrtoint ptr %addr332.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %addr332.i, align 4
  %add.ptr.i221.i = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23, i32 4
  br label %if.end72.i

if.else36.i:                                      ; preds = %if.else.i
  %54 = and i32 %17, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %if.else54.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #10
  %addr144.i = getelementptr i8, ptr %8, i32 36
  %dst46.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 22
  %56 = ptrtoint ptr %dst46.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dst46.i, align 4
  %58 = ptrtoint ptr %addr144.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %addr144.i, align 4
  %add.ptr.i231.i = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 22, i32 4
  %59 = ptrtoint ptr %add.ptr.i231.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr.i231.i, align 2
  %add.ptr1.i232.i = getelementptr i8, ptr %8, i32 40
  %61 = ptrtoint ptr %add.ptr1.i232.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %add.ptr1.i232.i, align 2
  %addr248.i = getelementptr i8, ptr %8, i32 42
  %src50.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %62 = ptrtoint ptr %src50.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %src50.i, align 4
  %64 = ptrtoint ptr %addr248.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %addr248.i, align 4
  %add.ptr.i233.i = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23, i32 4
  %65 = ptrtoint ptr %add.ptr.i233.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr.i233.i, align 2
  %add.ptr1.i234.i = getelementptr i8, ptr %8, i32 46
  %67 = ptrtoint ptr %add.ptr1.i234.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %add.ptr1.i234.i, align 2
  %addr352.i = getelementptr i8, ptr %8, i32 48
  %68 = ptrtoint ptr %MacAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %MacAddress.i.i, align 4
  %70 = ptrtoint ptr %addr352.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %addr352.i, align 4
  %add.ptr.i235.i = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 1, i32 4
  br label %if.end72.i

if.else54.i:                                      ; preds = %if.else36.i
  %71 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool56.not.i = icmp eq i32 %71, 0
  br i1 %tobool56.not.i, label %if.else54.i.cleanup_crit_edge, label %if.then57.i

if.else54.i.cleanup_crit_edge:                    ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then57.i:                                      ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #10
  %addr158.i = getelementptr i8, ptr %8, i32 36
  %dst60.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 22
  %72 = ptrtoint ptr %dst60.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dst60.i, align 4
  %74 = ptrtoint ptr %addr158.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %addr158.i, align 4
  %add.ptr.i241.i = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 22, i32 4
  %75 = ptrtoint ptr %add.ptr.i241.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr.i241.i, align 2
  %add.ptr1.i242.i = getelementptr i8, ptr %8, i32 40
  %77 = ptrtoint ptr %add.ptr1.i242.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %add.ptr1.i242.i, align 2
  %addr262.i = getelementptr i8, ptr %8, i32 42
  %src64.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23
  %78 = ptrtoint ptr %src64.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %src64.i, align 4
  %80 = ptrtoint ptr %addr262.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %addr262.i, align 4
  %add.ptr.i243.i = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 23, i32 4
  %81 = ptrtoint ptr %add.ptr.i243.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr.i243.i, align 2
  %add.ptr1.i244.i = getelementptr i8, ptr %8, i32 46
  %83 = ptrtoint ptr %add.ptr1.i244.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %add.ptr1.i244.i, align 2
  %addr366.i = getelementptr i8, ptr %8, i32 48
  %84 = ptrtoint ptr %MacAddress.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %MacAddress.i.i, align 4
  %86 = ptrtoint ptr %addr366.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %addr366.i, align 4
  %add.ptr.i245.i = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 1, i32 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then57.i, %if.then43.i, %if.then21.i, %if.then11.i
  %add.ptr.i221.sink.i = phi ptr [ %add.ptr.i221.i, %if.then21.i ], [ %add.ptr.i245.i, %if.then57.i ], [ %add.ptr.i235.i, %if.then43.i ], [ %add.ptr.i211.i, %if.then11.i ]
  %87 = ptrtoint ptr %add.ptr.i221.sink.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %add.ptr.i221.sink.i, align 2
  %add.ptr1.i222.i = getelementptr i8, ptr %8, i32 52
  %89 = ptrtoint ptr %add.ptr1.i222.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %add.ptr1.i222.i, align 2
  %encrypt.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 17
  %90 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %encrypt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool73.not.i = icmp eq i8 %91, 0
  br i1 %tobool73.not.i, label %if.end72.i.if.end79.i_crit_edge, label %if.then74.i

if.end72.i.if.end79.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i

if.then74.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %add.ptr, align 2
  %94 = or i16 %93, 64
  store i16 %94, ptr %add.ptr, align 2
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then74.i, %if.end72.i.if.end79.i_crit_edge
  %95 = ptrtoint ptr %qospriv.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %qospriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool80.not.i = icmp eq i32 %96, 0
  br i1 %tobool80.not.i, label %if.end79.i.if.end104.i_crit_edge, label %if.then81.i

if.end79.i.if.end104.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i

if.then81.i:                                      ; preds = %if.end79.i
  %hdrlen.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  %97 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %hdrlen.i, align 1
  %conv82.i = zext i8 %98 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %conv82.i
  %add.ptr83.i = getelementptr i8, ptr %add.ptr.i, i32 -2
  %priority.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %99 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %priority.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool84.not.i = icmp eq i8 %100, 0
  br i1 %tobool84.not.i, label %if.then81.i.if.end95.i_crit_edge, label %if.then85.i

if.then81.i.if.end95.i_crit_edge:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95.i

if.then85.i:                                      ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  %101 = and i8 %100, 15
  %conv90.i = zext i8 %101 to i16
  %102 = shl nuw nsw i16 %conv90.i, 8
  %103 = ptrtoint ptr %add.ptr83.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %add.ptr83.i, align 2
  %or93.i = or i16 %104, %102
  store i16 %or93.i, ptr %add.ptr83.i, align 2
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then85.i, %if.then81.i.if.end95.i_crit_edge
  %ack_policy.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 11
  %105 = ptrtoint ptr %ack_policy.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ack_policy.i, align 1
  %107 = shl i8 %106, 5
  %108 = and i8 %107, 96
  %conv99.i = zext i8 %108 to i16
  %109 = shl nuw nsw i16 %conv99.i, 8
  %110 = ptrtoint ptr %add.ptr83.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %add.ptr83.i, align 2
  %or102.i = or i16 %109, %111
  store i16 %or102.i, ptr %add.ptr83.i, align 2
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.end95.i, %if.end79.i.if.end104.i_crit_edge
  %112 = ptrtoint ptr %psta1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %psta1, align 4
  %tobool108.not.i = icmp eq ptr %113, null
  br i1 %tobool108.not.i, label %if.else111.i, label %if.end104.i.if.then122.i_crit_edge

if.end104.i.if.then122.i_crit_edge:               ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then122.i

if.else111.i:                                     ; preds = %if.end104.i
  %114 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ra, align 4
  %116 = and i32 %115, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.i.not.i = icmp eq i32 %116, 0
  br i1 %tobool.i.not.i, label %if.else115.i, label %if.then113.i

if.then113.i:                                     ; preds = %if.else111.i
  call void @__sanitizer_cov_trace_pc() #10
  %call114.i = tail call ptr @r8712_get_bcmc_stainfo(ptr noundef %padapter) #8
  br label %if.end120.i

if.else115.i:                                     ; preds = %if.else111.i
  call void @__sanitizer_cov_trace_pc() #10
  %stapriv.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %call118.i = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv.i, ptr noundef %ra) #8
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.else115.i, %if.then113.i
  %psta.0.i = phi ptr [ %call114.i, %if.then113.i ], [ %call118.i, %if.else115.i ]
  %tobool121.not.i = icmp eq ptr %psta.0.i, null
  br i1 %tobool121.not.i, label %if.end120.i.if.end10_crit_edge, label %if.end120.i.if.then122.i_crit_edge

if.end120.i.if.then122.i_crit_edge:               ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then122.i

if.end120.i.if.end10_crit_edge:                   ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then122.i:                                     ; preds = %if.end120.i.if.then122.i_crit_edge, %if.end104.i.if.then122.i_crit_edge
  %psta.0249.i = phi ptr [ %psta.0.i, %if.end120.i.if.then122.i_crit_edge ], [ %113, %if.end104.i.if.then122.i_crit_edge ]
  %txseq_tid.i = getelementptr inbounds %struct.sta_info, ptr %psta.0249.i, i32 0, i32 3, i32 9
  %priority124.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %117 = ptrtoint ptr %priority124.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %priority124.i, align 4
  %idxprom.i = zext i8 %118 to i32
  %arrayidx.i = getelementptr i16, ptr %txseq_tid.i, i32 %idxprom.i
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx.i, align 2
  %inc.i = add i16 %120, 1
  store i16 %inc.i, ptr %arrayidx.i, align 2
  %121 = load i8, ptr %priority124.i, align 4
  %idxprom126.i = zext i8 %121 to i32
  %arrayidx127.i = getelementptr i16, ptr %txseq_tid.i, i32 %idxprom126.i
  %122 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx127.i, align 2
  %124 = and i16 %123, 4095
  store i16 %124, ptr %arrayidx127.i, align 2
  %125 = load i8, ptr %priority124.i, align 4
  %idxprom132.i = zext i8 %125 to i32
  %arrayidx133.i = getelementptr i16, ptr %txseq_tid.i, i32 %idxprom132.i
  %126 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx133.i, align 2
  %seqnum.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 4
  %128 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %seqnum.i, align 4
  %129 = ptrtoint ptr %add.ptr to i32
  %add.i = add i32 %129, 22
  %130 = inttoptr i32 %add.i to ptr
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %130, align 2
  %133 = lshr i16 %132, 8
  %134 = and i16 %133, 15
  %shl139.i = shl i16 %127, 4
  %or141.i = or i16 %134, %shl139.i
  %135 = tail call i16 @llvm.bswap.i16(i16 %or141.i) #8
  %136 = ptrtoint ptr %130 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %130, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then122.i, %if.end120.i.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  call void @_r8712_open_pktfile(ptr noundef %pkt, ptr noundef nonnull %pktfile) #8
  %pkt_hdrlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 8
  %137 = ptrtoint ptr %pkt_hdrlen to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %pkt_hdrlen, align 4
  %conv = zext i8 %138 to i32
  %call11 = call i32 @_r8712_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef null, i32 noundef %conv) #8
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %139 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fw_state.i, align 8
  %141 = and i32 %140, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool13.not = icmp eq i32 %141, 0
  br i1 %tobool13.not, label %if.end10.if.end20_crit_edge, label %if.then14

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then14:                                        ; preds = %if.end10
  %ether_type = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 5
  %142 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %ether_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30958, i16 %143)
  %cmp = icmp eq i16 %143, -30958
  br i1 %cmp, label %if.then17, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = call i32 @_r8712_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef nonnull %8, i32 noundef 32) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then14.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %144 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %0, align 4
  %conv21 = trunc i32 %145 to i16
  %pktlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 6
  %146 = ptrtoint ptr %pktlen to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv21, ptr %pktlen, align 4
  %frag_len = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 19
  %147 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %frag_len, align 4
  %sub = add i32 %148, -4
  %hdrlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  %iv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 18
  %icv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %encrypt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 17
  %txpn155 = getelementptr inbounds %struct.sta_info, ptr %6, i32 0, i32 15
  %TSC0156 = getelementptr inbounds %struct.anon.112, ptr %txpn155, i32 0, i32 7
  %iv157 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 20
  %TSC1160 = getelementptr inbounds %struct.anon.112, ptr %txpn155, i32 0, i32 6
  %arrayidx162 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 20, i32 1
  %arrayidx164 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 20, i32 2
  %XGrpKeyid165 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 6
  %arrayidx173 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 20, i32 3
  %TSC2175 = getelementptr inbounds %struct.anon.112, ptr %txpn155, i32 0, i32 5
  %arrayidx177 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 20, i32 4
  %TSC3179 = getelementptr inbounds %struct.anon.112, ptr %txpn155, i32 0, i32 4
  %arrayidx181 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 20, i32 5
  %TSC4183 = getelementptr inbounds %struct.anon.112, ptr %txpn155, i32 0, i32 3
  %arrayidx185 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 20, i32 6
  %TSC5187 = getelementptr inbounds %struct.anon.112, ptr %txpn155, i32 0, i32 2
  %arrayidx189 = getelementptr %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 20, i32 7
  %PrivacyKeyIndex = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 2
  %ether_type261 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 5
  %bswenc = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 2
  %icv = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 21
  br label %while.cond

while.cond:                                       ; preds = %if.end336, %if.end20
  %frg_inx.0 = phi i8 [ 0, %if.end20 ], [ %inc, %if.end336 ]
  %mem_start.0 = phi ptr [ %add.ptr, %if.end20 ], [ %add.ptr342, %if.end336 ]
  %149 = ptrtoint ptr %mem_start.0 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %mem_start.0, align 2
  %151 = or i16 %150, 4
  store i16 %151, ptr %mem_start.0, align 2
  %152 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %hdrlen, align 1
  %conv24 = zext i8 %153 to i32
  %add.ptr25 = getelementptr i8, ptr %mem_start.0, i32 %conv24
  %sub28 = sub i32 %sub, %conv24
  %154 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %iv_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool29.not = icmp eq i8 %155, 0
  br i1 %tobool29.not, label %while.cond.if.end256_crit_edge, label %if.then32

while.cond.if.end256_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end256

if.then32:                                        ; preds = %while.cond
  %156 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %encrypt, align 1
  %158 = zext i8 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %157, label %if.then32.if.end245_crit_edge [
    i8 1, label %if.then32.do.body_crit_edge
    i8 5, label %if.then32.do.body_crit_edge558
    i8 2, label %sw.bb50
    i8 4, label %sw.bb151
  ]

if.then32.do.body_crit_edge558:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then32.do.body_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then32.if.end245_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

do.body:                                          ; preds = %if.then32.do.body_crit_edge, %if.then32.do.body_crit_edge558
  %159 = ptrtoint ptr %TSC0156 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %TSC0156, align 1
  %161 = ptrtoint ptr %iv157 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %iv157, align 4
  %162 = ptrtoint ptr %TSC1160 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %TSC1160, align 2
  %164 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %arrayidx162, align 1
  %165 = ptrtoint ptr %TSC2175 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %TSC2175, align 1
  %167 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %arrayidx164, align 2
  %168 = ptrtoint ptr %PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %PrivacyKeyIndex, align 8
  %.tr528 = trunc i32 %169 to i8
  %conv42 = shl i8 %.tr528, 6
  %170 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv42, ptr %arrayidx173, align 1
  %171 = ptrtoint ptr %txpn155 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %txpn155, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %172)
  %cmp46 = icmp eq i64 %172, 16777215
  br label %if.end245.sink.split

sw.bb50:                                          ; preds = %if.then32
  %173 = ptrtoint ptr %TSC1160 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %TSC1160, align 2
  %175 = ptrtoint ptr %iv157 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %iv157, align 4
  %176 = load i8, ptr %TSC1160, align 2
  %177 = and i8 %176, 95
  %178 = or i8 %177, 32
  %179 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %arrayidx162, align 1
  %180 = ptrtoint ptr %TSC0156 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %TSC0156, align 1
  %182 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %arrayidx164, align 2
  br i1 %tobool.i.not, label %do.body103, label %do.body53

do.body53:                                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #10
  %183 = ptrtoint ptr %XGrpKeyid165 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %XGrpKeyid165, align 8
  %.tr527 = trunc i32 %184 to i8
  %185 = shl i8 %.tr527, 6
  %conv75 = or i8 %185, 32
  %186 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv75, ptr %arrayidx173, align 1
  %187 = ptrtoint ptr %TSC2175 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %TSC2175, align 1
  %189 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %arrayidx177, align 4
  %190 = ptrtoint ptr %TSC3179 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %TSC3179, align 4
  %192 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %arrayidx181, align 1
  %193 = ptrtoint ptr %TSC4183 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %TSC4183, align 1
  %195 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %arrayidx185, align 2
  %196 = ptrtoint ptr %TSC5187 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %TSC5187, align 2
  %198 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %arrayidx189, align 1
  %199 = ptrtoint ptr %txpn155 to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %txpn155, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %200)
  %cmp92 = icmp eq i64 %200, 281474976710655
  br label %if.end245.sink.split

do.body103:                                       ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #10
  %201 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 32, ptr %arrayidx173, align 1
  %202 = ptrtoint ptr %TSC2175 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %TSC2175, align 1
  %204 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %arrayidx177, align 4
  %205 = ptrtoint ptr %TSC3179 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %TSC3179, align 4
  %207 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %arrayidx181, align 1
  %208 = ptrtoint ptr %TSC4183 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %TSC4183, align 1
  %210 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %arrayidx185, align 2
  %211 = ptrtoint ptr %TSC5187 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %TSC5187, align 2
  %213 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %arrayidx189, align 1
  %214 = ptrtoint ptr %txpn155 to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %txpn155, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %215)
  %cmp139 = icmp eq i64 %215, 281474976710655
  br label %if.end245.sink.split

sw.bb151:                                         ; preds = %if.then32
  %216 = ptrtoint ptr %TSC0156 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %TSC0156, align 1
  %218 = ptrtoint ptr %iv157 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %iv157, align 4
  %219 = ptrtoint ptr %TSC1160 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %TSC1160, align 2
  %221 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %arrayidx162, align 1
  %222 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 0, ptr %arrayidx164, align 2
  br i1 %tobool.i.not, label %do.body203, label %do.body154

do.body154:                                       ; preds = %sw.bb151
  call void @__sanitizer_cov_trace_pc() #10
  %223 = ptrtoint ptr %XGrpKeyid165 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %XGrpKeyid165, align 8
  %.tr = trunc i32 %224 to i8
  %225 = shl i8 %.tr, 6
  %conv171 = or i8 %225, 32
  %226 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %conv171, ptr %arrayidx173, align 1
  %227 = ptrtoint ptr %TSC2175 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %TSC2175, align 1
  %229 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %arrayidx177, align 4
  %230 = ptrtoint ptr %TSC3179 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %TSC3179, align 4
  %232 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %231, ptr %arrayidx181, align 1
  %233 = ptrtoint ptr %TSC4183 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %TSC4183, align 1
  %235 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %arrayidx185, align 2
  %236 = ptrtoint ptr %TSC5187 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %TSC5187, align 2
  %238 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %237, ptr %arrayidx189, align 1
  %239 = ptrtoint ptr %txpn155 to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %txpn155, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %240)
  %cmp191 = icmp eq i64 %240, 281474976710655
  br label %if.end245.sink.split

do.body203:                                       ; preds = %sw.bb151
  call void @__sanitizer_cov_trace_pc() #10
  %241 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 32, ptr %arrayidx173, align 1
  %242 = ptrtoint ptr %TSC2175 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %TSC2175, align 1
  %244 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %243, ptr %arrayidx177, align 4
  %245 = ptrtoint ptr %TSC3179 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %TSC3179, align 4
  %247 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %arrayidx181, align 1
  %248 = ptrtoint ptr %TSC4183 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %TSC4183, align 1
  %250 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %249, ptr %arrayidx185, align 2
  %251 = ptrtoint ptr %TSC5187 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %TSC5187, align 2
  %253 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %252, ptr %arrayidx189, align 1
  %254 = ptrtoint ptr %txpn155 to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %txpn155, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %255)
  %cmp233 = icmp eq i64 %255, 281474976710655
  br label %if.end245.sink.split

if.end245.sink.split:                             ; preds = %do.body203, %do.body154, %do.body103, %do.body53, %do.body
  %.sink = phi i64 [ %172, %do.body ], [ %215, %do.body103 ], [ %200, %do.body53 ], [ %255, %do.body203 ], [ %240, %do.body154 ]
  %cmp46.sink = phi i1 [ %cmp46, %do.body ], [ %cmp139, %do.body103 ], [ %cmp92, %do.body53 ], [ %cmp233, %do.body203 ], [ %cmp191, %do.body154 ]
  %add = add i64 %.sink, 1
  %spec.select = select i1 %cmp46.sink, i64 0, i64 %add
  %256 = ptrtoint ptr %txpn155 to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %spec.select, ptr %txpn155, align 8
  br label %if.end245

if.end245:                                        ; preds = %if.end245.sink.split, %if.then32.if.end245_crit_edge
  %257 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %iv_len, align 2
  %conv249 = zext i8 %258 to i32
  %259 = call ptr @memcpy(ptr %add.ptr25, ptr %iv157, i32 %conv249)
  %260 = load i8, ptr %iv_len, align 2
  %conv251 = zext i8 %260 to i32
  %add.ptr252 = getelementptr i8, ptr %add.ptr25, i32 %conv251
  %sub255 = sub i32 %sub28, %conv251
  br label %if.end256

if.end256:                                        ; preds = %if.end245, %while.cond.if.end256_crit_edge
  %mpdu_len.0 = phi i32 [ %sub255, %if.end245 ], [ %sub28, %while.cond.if.end256_crit_edge ]
  %pframe.0 = phi ptr [ %add.ptr252, %if.end245 ], [ %add.ptr25, %while.cond.if.end256_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %frg_inx.0)
  %cmp258 = icmp eq i8 %frg_inx.0, 0
  br i1 %cmp258, label %if.then260, label %if.end256.if.end265_crit_edge

if.end256.if.end265_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end265

if.then260:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #10
  %261 = ptrtoint ptr %ether_type261 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %ether_type261, align 2
  %263 = ptrtoint ptr %pframe.0 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 -86, ptr %pframe.0, align 1
  %ssap.i = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 1
  %264 = ptrtoint ptr %ssap.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 -86, ptr %ssap.i, align 1
  %ctrl.i = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 2
  %265 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 3, ptr %ctrl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32457, i16 %262)
  %switch.selectcmp.case1.i = icmp eq i16 %262, -32457
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32525, i16 %262)
  %switch.selectcmp.case2.i = icmp eq i16 %262, -32525
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %oui5.i = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 3
  %266 = ptrtoint ptr %oui5.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 0, ptr %oui5.i, align 1
  %arrayidx9.i = getelementptr %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 3, i32 1
  %267 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 0, ptr %arrayidx9.i, align 1
  %268 = select i1 %switch.selectcmp.i, i8 -8, i8 0
  %arrayidx12.i = getelementptr %struct.ieee80211_snap_hdr, ptr %pframe.0, i32 0, i32 3, i32 2
  %269 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %268, ptr %arrayidx12.i, align 1
  %add.ptr.i536 = getelementptr i8, ptr %pframe.0, i32 6
  %270 = ptrtoint ptr %add.ptr.i536 to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %262, ptr %add.ptr.i536, align 2
  %add.ptr263 = getelementptr i8, ptr %pframe.0, i32 8
  %sub264 = add i32 %mpdu_len.0, -8
  br label %if.end265

if.end265:                                        ; preds = %if.then260, %if.end256.if.end265_crit_edge
  %spec.select534 = phi i32 [ 8, %if.then260 ], [ 0, %if.end256.if.end265_crit_edge ]
  %mpdu_len.1 = phi i32 [ %sub264, %if.then260 ], [ %mpdu_len.0, %if.end256.if.end265_crit_edge ]
  %pframe.1 = phi ptr [ %add.ptr263, %if.then260 ], [ %pframe.0, %if.end256.if.end265_crit_edge ]
  %271 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %icv_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %272)
  %cmp267.not = icmp eq i8 %272, 0
  br i1 %cmp267.not, label %if.end265.if.end275_crit_edge, label %land.lhs.true

if.end265.if.end275_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

land.lhs.true:                                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #10
  %273 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool270.not = icmp eq i8 %274, 0
  %narrow = select i1 %tobool270.not, i8 0, i8 %272
  %sub274 = zext i8 %narrow to i32
  %spec.select533 = sub i32 %mpdu_len.1, %sub274
  br label %if.end275

if.end275:                                        ; preds = %land.lhs.true, %if.end265.if.end275_crit_edge
  %mpdu_len.2 = phi i32 [ %mpdu_len.1, %if.end265.if.end275_crit_edge ], [ %spec.select533, %land.lhs.true ]
  br i1 %tobool.i.not, label %if.end275.if.end283_crit_edge, label %if.then277

if.end275.if.end283_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end283

if.then277:                                       ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #10
  %275 = ptrtoint ptr %pktlen to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %pktlen, align 4
  %conv279 = zext i16 %276 to i32
  br label %if.end283

if.end283:                                        ; preds = %if.then277, %if.end275.if.end283_crit_edge
  %mpdu_len.2.sink = phi i32 [ %conv279, %if.then277 ], [ %mpdu_len.2, %if.end275.if.end283_crit_edge ]
  %call282 = call i32 @_r8712_pktfile_read(ptr noundef nonnull %pktfile, ptr noundef %pframe.1, i32 noundef %mpdu_len.2.sink) #8
  %add.ptr284 = getelementptr i8, ptr %pframe.1, i32 %call282
  %277 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %icv_len, align 1
  %conv286 = zext i8 %278 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %cmp287.not = icmp eq i8 %278, 0
  br i1 %cmp287.not, label %if.end283.if.end300_crit_edge, label %land.lhs.true289

if.end283.if.end300_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end300

land.lhs.true289:                                 ; preds = %if.end283
  %279 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool292.not = icmp eq i8 %280, 0
  br i1 %tobool292.not, label %land.lhs.true289.if.end300_crit_edge, label %if.then293

land.lhs.true289.if.end300_crit_edge:             ; preds = %land.lhs.true289
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end300

if.then293:                                       ; preds = %land.lhs.true289
  call void @__sanitizer_cov_trace_pc() #10
  %281 = call ptr @memcpy(ptr %add.ptr284, ptr %icv, i32 %conv286)
  %282 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %icv_len, align 1
  %conv298 = zext i8 %283 to i32
  %add.ptr299 = getelementptr i8, ptr %add.ptr284, i32 %conv298
  br label %if.end300

if.end300:                                        ; preds = %if.then293, %land.lhs.true289.if.end300_crit_edge, %if.end283.if.end300_crit_edge
  %pframe.2 = phi ptr [ %add.ptr299, %if.then293 ], [ %add.ptr284, %land.lhs.true289.if.end300_crit_edge ], [ %add.ptr284, %if.end283.if.end300_crit_edge ]
  %inc = add i8 %frg_inx.0, 1
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end300.if.then305_crit_edge

if.end300.if.then305_crit_edge:                   ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then305

lor.lhs.false:                                    ; preds = %if.end300
  %call303 = call i32 @r8712_endofpktfile(ptr noundef nonnull %pktfile) #8
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.end336, label %lor.lhs.false.if.then305_crit_edge

lor.lhs.false.if.then305_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then305

if.then305:                                       ; preds = %lor.lhs.false.if.then305_crit_edge, %if.end300.if.then305_crit_edge
  %mem_start.0.lcssa = phi ptr [ %mem_start.0, %lor.lhs.false.if.then305_crit_edge ], [ %add.ptr, %if.end300.if.then305_crit_edge ]
  %nr_frags = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 10
  %284 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %inc, ptr %nr_frags, align 2
  %285 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %hdrlen, align 1
  %conv307 = zext i8 %286 to i32
  %287 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %iv_len, align 2
  %conv309 = zext i8 %288 to i32
  %289 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %290)
  %tobool322.not = icmp eq i8 %290, 0
  br i1 %tobool322.not, label %if.then305.cond.end327_crit_edge, label %cond.true323

if.then305.cond.end327_crit_edge:                 ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end327

cond.true323:                                     ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #10
  %291 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %icv_len, align 1
  %conv325 = zext i8 %292 to i32
  br label %cond.end327

cond.end327:                                      ; preds = %cond.true323, %if.then305.cond.end327_crit_edge
  %cond328 = phi i32 [ %conv325, %cond.true323 ], [ 0, %if.then305.cond.end327_crit_edge ]
  %add310 = add i32 %call282, %spec.select534
  %add319 = add i32 %add310, %conv307
  %add329 = add i32 %add319, %conv309
  %add330 = add i32 %add329, %cond328
  %conv331 = trunc i32 %add330 to i16
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  %293 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 %conv331, ptr %last_txcmdsz, align 2
  %294 = ptrtoint ptr %mem_start.0.lcssa to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %mem_start.0.lcssa, align 2
  %296 = and i16 %295, -5
  store i16 %296, ptr %mem_start.0.lcssa, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic.i) #8
  %297 = ptrtoint ptr %mic.i to i32
  call void @__asan_store8_noabort(i32 %297)
  store i64 -1, ptr %mic.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %micdata.i) #8
  %298 = call ptr @memset(ptr %micdata.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %priority.i537) #8
  %299 = ptrtoint ptr %priority.i537 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 0, ptr %priority.i537, align 4
  %300 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %ra, align 4
  %302 = and i32 %301, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool.i.not.i540 = icmp eq i32 %302, 0
  %303 = ptrtoint ptr %psta1 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %psta1, align 4
  %tobool.not.i541 = icmp eq ptr %304, null
  br i1 %tobool.not.i541, label %if.else.i543, label %cond.end327.if.end.i545_crit_edge

cond.end327.if.end.i545_crit_edge:                ; preds = %cond.end327
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i545

if.else.i543:                                     ; preds = %cond.end327
  call void @__sanitizer_cov_trace_pc() #10
  %stapriv.i542 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %call3.i = call ptr @r8712_get_stainfo(ptr noundef %stapriv.i542, ptr noundef %ra) #8
  br label %if.end.i545

if.end.i545:                                      ; preds = %if.else.i543, %cond.end327.if.end.i545_crit_edge
  %stainfo.0.i = phi ptr [ %call3.i, %if.else.i543 ], [ %304, %cond.end327.if.end.i545_crit_edge ]
  %305 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %306)
  %cmp.i = icmp ne i8 %306, 2
  %tobool6.not.i = icmp eq ptr %stainfo.0.i, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond.i, label %if.end.i545.if.end349_crit_edge, label %if.then7.i

if.end.i545.if.end349_crit_edge:                  ; preds = %if.end.i545
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end349

if.then7.i:                                       ; preds = %if.end.i545
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %null_key.i) #8
  %307 = call ptr @memset(ptr %null_key.i, i32 0, i32 16)
  %308 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %buf_addr, align 4
  %add.ptr.i546 = getelementptr i8, ptr %309, i32 32
  br i1 %tobool.i.not.i540, label %if.else21.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then7.i
  %310 = ptrtoint ptr %XGrpKeyid165 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %XGrpKeyid165, align 8
  %arrayidx10.i = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 8, i32 8, i32 %311
  %bcmp192.i = call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx10.i, ptr noundef nonnull dereferenceable(16) %null_key.i, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp192.i)
  %tobool14.not.i = icmp eq i32 %bcmp192.i, 0
  br i1 %tobool14.not.i, label %if.then9.i.xmitframe_addmic.exit_crit_edge, label %if.then9.i.if.end30.i_crit_edge

if.then9.i.if.end30.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then9.i.xmitframe_addmic.exit_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xmitframe_addmic.exit

if.else21.i:                                      ; preds = %if.then7.i
  %tkiptxmickey.i = getelementptr inbounds %struct.sta_info, ptr %stainfo.0.i, i32 0, i32 12
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %tkiptxmickey.i, ptr noundef nonnull dereferenceable(16) %null_key.i, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool25.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool25.not.i, label %if.else21.i.xmitframe_addmic.exit_crit_edge, label %if.else21.i.if.end30.i_crit_edge

if.else21.i.if.end30.i_crit_edge:                 ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.else21.i.xmitframe_addmic.exit_crit_edge:      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xmitframe_addmic.exit

if.end30.i:                                       ; preds = %if.else21.i.if.end30.i_crit_edge, %if.then9.i.if.end30.i_crit_edge
  %tkiptxmickey.sink.i = phi ptr [ %arrayidx10.i, %if.then9.i.if.end30.i_crit_edge ], [ %tkiptxmickey.i, %if.else21.i.if.end30.i_crit_edge ]
  call void @r8712_secmicsetkey(ptr noundef nonnull %micdata.i, ptr noundef %tkiptxmickey.sink.i) #8
  %arrayidx31.i = getelementptr i8, ptr %309, i32 33
  %312 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx31.i, align 1
  %314 = and i8 %313, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %tobool33.not.i = icmp eq i8 %314, 0
  %..i547 = select i1 %tobool33.not.i, i32 36, i32 48
  %.202.i = select i1 %tobool33.not.i, i32 48, i32 56
  %arrayidx46.i = getelementptr i8, ptr %309, i32 %..i547
  call void @r8712_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef %arrayidx46.i, i32 noundef 6) #8
  %315 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %arrayidx31.i, align 1
  %317 = and i8 %316, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %317)
  %tobool50.not.i = icmp eq i8 %317, 0
  %.199.i = select i1 %tobool50.not.i, i32 42, i32 %.202.i
  %arrayidx52.i = getelementptr i8, ptr %309, i32 %.199.i
  call void @r8712_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef %arrayidx52.i, i32 noundef 6) #8
  %318 = ptrtoint ptr %qospriv.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %qospriv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %319)
  %cmp57.i = icmp eq i32 %319, 1
  br i1 %cmp57.i, label %if.then59.i, label %if.end30.i.if.end63.i_crit_edge

if.end30.i.if.end63.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i

if.then59.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %priority61.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %320 = ptrtoint ptr %priority61.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %priority61.i, align 4
  %322 = ptrtoint ptr %priority.i537 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %321, ptr %priority.i537, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then59.i, %if.end30.i.if.end63.i_crit_edge
  call void @r8712_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef nonnull %priority.i537, i32 noundef 4) #8
  %323 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %cmp66195.not.i = icmp eq i8 %324, 0
  br i1 %cmp66195.not.i, label %if.end63.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end63.i.for.end.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end63.i
  %conv65194.i = zext i8 %324 to i32
  %sw_encrypt98.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 21
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv65198.i = phi i32 [ %conv65194.i, %for.body.lr.ph.i ], [ %conv65.i, %for.inc.i.for.body.i_crit_edge ]
  %payload.0197.i = phi ptr [ %add.ptr.i546, %for.body.lr.ph.i ], [ %payload.1.i, %for.inc.i.for.body.i_crit_edge ]
  %curfragnum.0196.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add75.i, %for.inc.i.for.body.i_crit_edge ]
  %325 = ptrtoint ptr %payload.0197.i to i32
  %and68.i = and i32 %325, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %cmp69.not.i = icmp eq i32 %and68.i, 0
  %add190.i = select i1 %cmp69.not.i, i32 0, i32 4
  %shr191.i = add i32 %add190.i, %325
  %shl.i = and i32 %shr191.i, -4
  %326 = inttoptr i32 %shl.i to ptr
  %327 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %hdrlen, align 1
  %conv71.i = zext i8 %328 to i32
  %329 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %iv_len, align 2
  %conv72.i = zext i8 %330 to i32
  %add73.i = add nuw nsw i32 %conv72.i, %conv71.i
  %add.ptr74.i = getelementptr i8, ptr %326, i32 %add73.i
  %add75.i = add nuw nsw i32 %curfragnum.0196.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add75.i, i32 %conv65198.i)
  %cmp78.i = icmp eq i32 %add75.i, %conv65198.i
  br i1 %cmp78.i, label %if.then80.i, label %if.else91.i

if.then80.i:                                      ; preds = %for.body.i
  %331 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %last_txcmdsz, align 2
  %conv81.i = zext i16 %332 to i32
  %333 = ptrtoint ptr %sw_encrypt98.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %sw_encrypt98.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %tobool87.not.i = icmp eq i32 %334, 0
  br i1 %tobool87.not.i, label %if.then80.i.cond.end.i_crit_edge, label %cond.true.i

if.then80.i.cond.end.i_crit_edge:                 ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #10
  %335 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %icv_len, align 1
  %conv88.i = zext i8 %336 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then80.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv88.i, %cond.true.i ], [ 0, %if.then80.i.cond.end.i_crit_edge ]
  %337 = add nuw nsw i32 %add73.i, %cond.i
  %sub89.i = sub nsw i32 %conv81.i, %337
  call void @r8712_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef %add.ptr74.i, i32 noundef %sub89.i) #8
  %add.ptr90.i = getelementptr i8, ptr %add.ptr74.i, i32 %sub89.i
  br label %for.inc.i

if.else91.i:                                      ; preds = %for.body.i
  %338 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %frag_len, align 4
  %340 = ptrtoint ptr %sw_encrypt98.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %sw_encrypt98.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %341)
  %tobool99.not.i = icmp eq i32 %341, 0
  br i1 %tobool99.not.i, label %if.else91.i.cond.end104.i_crit_edge, label %cond.true100.i

if.else91.i.cond.end104.i_crit_edge:              ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end104.i

cond.true100.i:                                   ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #10
  %342 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %icv_len, align 1
  %conv102.i = zext i8 %343 to i32
  br label %cond.end104.i

cond.end104.i:                                    ; preds = %cond.true100.i, %if.else91.i.cond.end104.i_crit_edge
  %cond105.i = phi i32 [ %conv102.i, %cond.true100.i ], [ 0, %if.else91.i.cond.end104.i_crit_edge ]
  %344 = add nuw nsw i32 %add73.i, %cond105.i
  %sub106.i = sub i32 %339, %344
  call void @r8712_secmicappend(ptr noundef nonnull %micdata.i, ptr noundef %add.ptr74.i, i32 noundef %sub106.i) #8
  %add.ptr107.i = getelementptr i8, ptr %add.ptr74.i, i32 %sub106.i
  %345 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %icv_len, align 1
  %conv109.i = zext i8 %346 to i32
  %add.ptr110.i = getelementptr i8, ptr %add.ptr107.i, i32 %conv109.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end104.i, %cond.end.i
  %payload.1.i = phi ptr [ %add.ptr90.i, %cond.end.i ], [ %add.ptr110.i, %cond.end104.i ]
  %347 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %nr_frags, align 2
  %conv65.i = zext i8 %348 to i32
  %cmp66.i = icmp ult i32 %add75.i, %conv65.i
  br i1 %cmp66.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end63.i.for.end.i_crit_edge
  %payload.0.lcssa.i = phi ptr [ %add.ptr.i546, %if.end63.i.for.end.i_crit_edge ], [ %payload.1.i, %for.inc.i.for.end.i_crit_edge ]
  call void @r8712_secgetmic(ptr noundef nonnull %micdata.i, ptr noundef nonnull %mic.i) #8
  %349 = ptrtoint ptr %mic.i to i32
  call void @__asan_load8_noabort(i32 %349)
  %350 = load i64, ptr %mic.i, align 8
  %351 = ptrtoint ptr %payload.0.lcssa.i to i32
  call void @__asan_storeN_noabort(i32 %351, i32 8)
  store i64 %350, ptr %payload.0.lcssa.i, align 1
  %352 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %last_txcmdsz, align 2
  %add116.i = add i16 %353, 8
  store i16 %add116.i, ptr %last_txcmdsz, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %null_key.i) #8
  br label %if.end349

xmitframe_addmic.exit:                            ; preds = %if.else21.i.xmitframe_addmic.exit_crit_edge, %if.then9.i.xmitframe_addmic.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %null_key.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priority.i537) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %micdata.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic.i) #8
  br label %cleanup

if.end336:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %354 = ptrtoint ptr %pframe.2 to i32
  %and337 = and i32 %354, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and337)
  %cmp338.not = icmp eq i32 %and337, 0
  %add340525 = select i1 %cmp338.not, i32 0, i32 4
  %shr526 = add i32 %add340525, %354
  %shl341 = and i32 %shr526, -4
  %355 = inttoptr i32 %shl341 to ptr
  %add.ptr342 = getelementptr i8, ptr %355, i32 32
  %356 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %hdrlen, align 1
  %conv345 = zext i8 %357 to i32
  %358 = call ptr @memcpy(ptr %add.ptr342, ptr %add.ptr, i32 %conv345)
  br label %while.cond

if.end349:                                        ; preds = %for.end.i, %if.end.i545.if.end349_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priority.i537) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %micdata.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic.i) #8
  %359 = ptrtoint ptr %bswenc to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %bswenc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %360)
  %tobool.not.i549 = icmp eq i8 %360, 0
  br i1 %tobool.not.i549, label %if.end349.cleanup_crit_edge, label %if.then.i

if.end349.cleanup_crit_edge:                      ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end349
  %361 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %encrypt, align 1
  %363 = zext i8 %362 to i64
  call void @__sanitizer_cov_trace_switch(i64 %363, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %362, label %if.then.i.cleanup_crit_edge [
    i8 1, label %if.then.i.sw.bb.i_crit_edge
    i8 5, label %if.then.i.sw.bb.i_crit_edge559
    i8 2, label %sw.bb1.i
    i8 4, label %sw.bb2.i
  ]

if.then.i.sw.bb.i_crit_edge559:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge559
  call void @r8712_wep_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) #8
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @r8712_tkip_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) #8
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i551 = call i32 @r8712_aes_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.then.i.cleanup_crit_edge, %if.end349.cleanup_crit_edge, %xmitframe_addmic.exit, %if.else54.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %xmitframe_addmic.exit ], [ 0, %if.else54.i.cleanup_crit_edge ], [ 1, %if.end349.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ], [ 1, %sw.bb.i ], [ 1, %sw.bb1.i ], [ 1, %sw.bb2.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pktfile) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_endofpktfile(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_update_protection(ptr nocapture noundef %padapter, ptr noundef %ie, i32 noundef %ie_len) local_unnamed_addr #0 align 64 {
entry:
  %erp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %erp_len) #8
  %0 = ptrtoint ptr %erp_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %erp_len, align 4, !annotation !58
  %vcs_setting = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 21
  %1 = ptrtoint ptr %vcs_setting to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %vcs_setting, align 4
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %2, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vcs = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 22
  %4 = ptrtoint ptr %vcs to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %vcs, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call = call ptr @r8712_get_ie(ptr noundef %ie, i32 noundef 42, ptr noundef nonnull %erp_len, i32 noundef %ie_len) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %vcs2 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 22
  %5 = ptrtoint ptr %vcs2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %vcs2, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  %add.ptr = getelementptr i8, ptr %call, i32 2
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.else12, label %if.then5

if.then5:                                         ; preds = %if.else
  %vcs_type = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 9
  %9 = ptrtoint ptr %vcs_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vcs_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp eq i8 %10, 1
  %vcs9 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 22
  br i1 %cmp, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %vcs9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %vcs9, align 1
  br label %sw.epilog

if.else10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %vcs9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %vcs9, align 1
  br label %sw.epilog

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %vcs13 = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 22
  %13 = ptrtoint ptr %vcs13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %vcs13, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else12, %if.else10, %if.then8, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %erp_len) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_ie(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_alloc_xmitbuf(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 48
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 48, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %0 = ptrtoint ptr %free_xmitbuf_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_xmitbuf_queue, align 4
  %cmp10.not = icmp eq ptr %1, %free_xmitbuf_queue
  %spec.select = select i1 %cmp10.not, ptr null, ptr %1
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.select, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %spec.select, ptr %spec.select, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %spec.select, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select, ptr %prev.i3.i, align 4
  %free_xmitbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 52
  %10 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_xmitbuf_cnt, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %free_xmitbuf_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_xmitbuf(ptr noundef %pxmitpriv, ptr noundef %pxmitbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pxmitbuf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %free_xmitbuf_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 48
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 48, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pxmitbuf) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.body1.list_del_init.exit_crit_edge

do.body1.list_del_init.exit_crit_edge:            ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pxmitbuf, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body1.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %pxmitbuf, ptr %pxmitbuf, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pxmitbuf, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pxmitbuf, ptr %prev.i3.i, align 4
  %prev.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 48, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i13 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pxmitbuf, ptr noundef %9, ptr noundef %free_xmitbuf_queue) #8
  br i1 %call.i.i13, label %if.end.i.i14, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i14:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pxmitbuf, ptr %prev.i, align 4
  %11 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %free_xmitbuf_queue, ptr %pxmitbuf, align 4
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev.i3.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %pxmitbuf, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i14, %list_del_init.exit.list_add_tail.exit_crit_edge
  %free_xmitbuf_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 52
  %14 = ptrtoint ptr %free_xmitbuf_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %free_xmitbuf_cnt, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %free_xmitbuf_cnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_alloc_xmitframe(ptr noundef %pxmitpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmit_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 13
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 13, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %0 = ptrtoint ptr %free_xmit_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_xmit_queue, align 4
  %cmp10.not = icmp eq ptr %1, %free_xmit_queue
  %spec.select = select i1 %cmp10.not, ptr null, ptr %1
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.select, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %spec.select, ptr %spec.select, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %spec.select, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select, ptr %prev.i3.i, align 4
  %free_xmitframe_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10
  %10 = ptrtoint ptr %free_xmitframe_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_xmitframe_cnt, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %free_xmitframe_cnt, align 8
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %spec.select, i32 0, i32 5
  %12 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %buf_addr, align 4
  %pxmitbuf = getelementptr inbounds %struct.xmit_frame, ptr %spec.select, i32 0, i32 6
  %13 = ptrtoint ptr %pxmitbuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pxmitbuf, align 4
  %psta = getelementptr inbounds %struct.xmit_frame, ptr %spec.select, i32 0, i32 1, i32 26
  %14 = ptrtoint ptr %psta to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %psta, align 4
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %spec.select, i32 0, i32 2
  %15 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pkt, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_xmitframe(ptr noundef %pxmitpriv, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %free_xmit_queue = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 13
  %adapter = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 20
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %tobool.not = icmp eq ptr %pxmitframe, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 13, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pxmitframe) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.body1.list_del_init.exit_crit_edge

do.body1.list_del_init.exit_crit_edge:            ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pxmitframe, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body1.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %pxmitframe, ptr %pxmitframe, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pxmitframe, ptr %prev.i3.i, align 4
  %pkt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 2
  %10 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pkt, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %list_del_init.exit.if.end8_crit_edge, label %if.then6

list_del_init.exit.if.end8_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pkt, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %list_del_init.exit.if.end8_crit_edge
  %prev.i = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 13, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i26 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %pxmitframe, ptr noundef %14, ptr noundef %free_xmit_queue) #8
  br i1 %call.i.i26, label %if.end.i.i27, label %if.end8.list_add_tail.exit_crit_edge

if.end8.list_add_tail.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i27:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pxmitframe, ptr %prev.i, align 4
  %16 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %free_xmit_queue, ptr %pxmitframe, align 4
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev.i3.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %pxmitframe, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i27, %if.end8.list_add_tail.exit_crit_edge
  %free_xmitframe_cnt = getelementptr inbounds %struct.xmit_priv, ptr %pxmitpriv, i32 0, i32 10
  %19 = ptrtoint ptr %free_xmitframe_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %free_xmitframe_cnt, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %free_xmitframe_cnt, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %1, i32 0, i32 24
  %21 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pnetdev, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 103
  %23 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %list_add_tail.exit.cleanup_crit_edge, label %if.then12

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_tx_wake_queue(ptr noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_xmitframe_ex(ptr noundef %pxmitpriv, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pxmitframe, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.end

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.end:                                           ; preds = %entry
  %frame_tag = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 3
  %0 = ptrtoint ptr %frame_tag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frame_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r8712_free_xmitframe(ptr noundef %pxmitpriv, ptr noundef nonnull %pxmitframe)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_free_xmitframe_queue(ptr noundef %pxmitpriv, ptr noundef %pframequeue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.__queue, ptr %pframequeue, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %0 = ptrtoint ptr %pframequeue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pframequeue, align 4
  %cmp.i.not14 = icmp eq ptr %1, %pframequeue
  br i1 %cmp.i.not14, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %plist.015 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %plist.015 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plist.015, align 4
  tail call void @r8712_free_xmitframe(ptr noundef %pxmitpriv, ptr noundef %plist.015)
  %cmp.i.not = icmp eq ptr %3, %pframequeue
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_xmit_classifier(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stapriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 25
  %psta1 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 26
  %0 = ptrtoint ptr %psta1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psta1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ra, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.else6, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call ptr @r8712_get_bcmc_stainfo(ptr noundef %padapter) #8
  br label %if.end17

if.else6:                                         ; preds = %if.else
  %fw_state.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_state.i, align 8
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.else12, label %if.then9

if.then9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  %MacAddress.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 1, i32 13, i32 6, i32 1
  %call11 = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %MacAddress.i) #8
  br label %if.end17

if.else12:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #8
  br label %if.end17

if.end17:                                         ; preds = %if.else12, %if.then9, %if.then4
  %psta.0 = phi ptr [ %call5, %if.then4 ], [ %call11, %if.then9 ], [ %call15, %if.else12 ]
  %tobool18.not = icmp eq ptr %psta.0, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end17.if.end20_crit_edge, %entry.if.end20_crit_edge
  %psta.065 = phi ptr [ %psta.0, %if.end17.if.end20_crit_edge ], [ %1, %entry.if.end20_crit_edge ]
  %priority = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 16
  %8 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %priority, align 4
  %hwxmits.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 28
  %10 = ptrtoint ptr %hwxmits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwxmits.i, align 4
  %12 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %9, label %sw.default.i [
    i8 1, label %if.end20.sw.bb.i_crit_edge
    i8 2, label %if.end20.sw.bb.i_crit_edge66
    i8 4, label %if.end20.sw.bb2.i_crit_edge
    i8 5, label %if.end20.sw.bb2.i_crit_edge67
    i8 6, label %if.end20.sw.bb8.i_crit_edge
    i8 7, label %if.end20.sw.bb8.i_crit_edge68
  ]

if.end20.sw.bb8.i_crit_edge68:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8.i

if.end20.sw.bb8.i_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8.i

if.end20.sw.bb2.i_crit_edge67:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.end20.sw.bb2.i_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.end20.sw.bb.i_crit_edge66:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end20.sw.bb.i_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end20.sw.bb.i_crit_edge, %if.end20.sw.bb.i_crit_edge66
  %bk_q.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 3, i32 4
  %bk_pending.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 2
  br label %get_sta_pending.exit

sw.bb2.i:                                         ; preds = %if.end20.sw.bb2.i_crit_edge, %if.end20.sw.bb2.i_crit_edge67
  %vi_q.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 3, i32 5
  %vi_pending.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 3
  br label %get_sta_pending.exit

sw.bb8.i:                                         ; preds = %if.end20.sw.bb8.i_crit_edge, %if.end20.sw.bb8.i_crit_edge68
  %vo_q.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 3, i32 6
  %vo_pending.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 4
  br label %get_sta_pending.exit

sw.default.i:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %be_q.i = getelementptr inbounds %struct.sta_info, ptr %psta.065, i32 0, i32 3, i32 3
  %be_pending.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 1
  br label %get_sta_pending.exit

get_sta_pending.exit:                             ; preds = %sw.default.i, %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %be_pending.sink.i = phi ptr [ %be_pending.i, %sw.default.i ], [ %vo_pending.i, %sw.bb8.i ], [ %vi_pending.i, %sw.bb2.i ], [ %bk_pending.i, %sw.bb.i ]
  %.sink.i = phi i32 [ 2, %sw.default.i ], [ 0, %sw.bb8.i ], [ 1, %sw.bb2.i ], [ 3, %sw.bb.i ]
  %ptxservq.0.i = phi ptr [ %be_q.i, %sw.default.i ], [ %vo_q.i, %sw.bb8.i ], [ %vi_q.i, %sw.bb2.i ], [ %bk_q.i, %sw.bb.i ]
  %accnt18.i = getelementptr %struct.hw_xmit, ptr %11, i32 %.sink.i, i32 5
  %13 = ptrtoint ptr %accnt18.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %accnt18.i, align 4
  %inc19.i = add i32 %14, 1
  store i32 %inc19.i, ptr %accnt18.i, align 4
  %lock = getelementptr inbounds %struct.__queue, ptr %be_pending.sink.i, i32 0, i32 1
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %15 = ptrtoint ptr %ptxservq.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %ptxservq.0.i, align 4
  %cmp.i.not = icmp eq ptr %16, %ptxservq.0.i
  br i1 %cmp.i.not, label %if.then30, label %get_sta_pending.exit.if.end32_crit_edge

get_sta_pending.exit.if.end32_crit_edge:          ; preds = %get_sta_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then30:                                        ; preds = %get_sta_pending.exit
  %prev.i = getelementptr inbounds %struct.list_head, ptr %be_pending.sink.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ptxservq.0.i, ptr noundef %18, ptr noundef %be_pending.sink.i) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then30.if.end32_crit_edge

if.then30.if.end32_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end.i.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ptxservq.0.i, ptr %prev.i, align 4
  %20 = ptrtoint ptr %ptxservq.0.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %be_pending.sink.i, ptr %ptxservq.0.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ptxservq.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %ptxservq.0.i, ptr %18, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end.i.i, %if.then30.if.end32_crit_edge, %get_sta_pending.exit.if.end32_crit_edge
  %sta_pending = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i, i32 0, i32 1
  %prev.i56 = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i56, align 4
  %call.i.i57 = tail call zeroext i1 @__list_add_valid(ptr noundef %pxmitframe, ptr noundef %24, ptr noundef %sta_pending) #8
  br i1 %call.i.i57, label %if.end.i.i59, label %if.end32.list_add_tail.exit60_crit_edge

if.end32.list_add_tail.exit60_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit60

if.end.i.i59:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pxmitframe, ptr %prev.i56, align 4
  %26 = ptrtoint ptr %pxmitframe to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %sta_pending, ptr %pxmitframe, align 4
  %prev3.i.i58 = getelementptr inbounds %struct.list_head, ptr %pxmitframe, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i58 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i58, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %pxmitframe, ptr %24, align 4
  br label %list_add_tail.exit60

list_add_tail.exit60:                             ; preds = %if.end.i.i59, %if.end32.list_add_tail.exit60_crit_edge
  %qcnt = getelementptr inbounds %struct.tx_servq, ptr %ptxservq.0.i, i32 0, i32 2
  %29 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qcnt, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %qcnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call25) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit60, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit60 ], [ -22, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xmitframe_xmitbuf_attach(ptr noundef %pxmitframe, ptr noundef %pxmitbuf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pxmitbuf1 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 6
  %0 = ptrtoint ptr %pxmitbuf1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pxmitbuf, ptr %pxmitbuf1, align 4
  %pxmit_urb = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 4
  %1 = ptrtoint ptr %pxmit_urb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pxmit_urb, align 4
  %pxmit_urb2 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 9
  %3 = ptrtoint ptr %pxmit_urb2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %pxmit_urb2, align 4
  %pbuf = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 2
  %4 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pbuf, align 4
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %6 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %buf_addr, align 4
  %priv_data = getelementptr inbounds %struct.xmit_buf, ptr %pxmitbuf, i32 0, i32 3
  %7 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pxmitframe, ptr %priv_data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_pre_xmit(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %xmitpriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5
  %attrib = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1
  tail call void @r8712_do_queue_select(ptr noundef %padapter, ptr noundef %attrib) #8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xmitpriv) #8
  %call5 = tail call i32 @r8712_txframes_sta_ac_pending(ptr noundef %padapter, ptr noundef %attrib) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @r8712_xmit_enqueue(ptr noundef %padapter, ptr noundef %pxmitframe) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xmitpriv, i32 noundef %call2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_xmitbuf_queue.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 48
  %lock.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 48, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %0 = ptrtoint ptr %free_xmitbuf_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_xmitbuf_queue.i, align 4
  %cmp10.not.i = icmp eq ptr %1, %free_xmitbuf_queue.i
  %tobool.not.i38 = icmp eq ptr %1, null
  %tobool.not.i = or i1 %cmp10.not.i, %tobool.not.i38
  br i1 %tobool.not.i, label %if.then11, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.if.else_crit_edge

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %call12 = tail call i32 @r8712_xmit_enqueue(ptr noundef %padapter, ptr noundef %pxmitframe) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xmitpriv, i32 noundef %call2) #8
  br label %cleanup

if.else:                                          ; preds = %if.end.i.i.i, %if.then.i.if.else_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i.i, align 4
  %free_xmitbuf_cnt.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 52
  %10 = ptrtoint ptr %free_xmitbuf_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_xmitbuf_cnt.i, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %free_xmitbuf_cnt.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xmitpriv, i32 noundef %call2) #8
  %pxmitbuf1.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 6
  %12 = ptrtoint ptr %pxmitbuf1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %pxmitbuf1.i, align 4
  %pxmit_urb.i = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %pxmit_urb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pxmit_urb.i, align 4
  %pxmit_urb2.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 9
  %15 = ptrtoint ptr %pxmit_urb2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %pxmit_urb2.i, align 4
  %pbuf.i = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %pbuf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pbuf.i, align 4
  %buf_addr.i = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %18 = ptrtoint ptr %buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %buf_addr.i, align 4
  %priv_data.i = getelementptr inbounds %struct.xmit_buf, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pxmitframe, ptr %priv_data.i, align 4
  tail call void @r8712_xmit_direct(ptr noundef %padapter, ptr noundef %pxmitframe) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.else ], [ 0, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_do_queue_select(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_txframes_sta_ac_pending(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_xmit_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_xmit_direct(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_secmicsetkey(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_secmicappend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_secgetmic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_wep_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_tkip_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_aes_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !46, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @_r8712_init_sta_xmit_priv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 43, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @_r8712_init_xmit_priv.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 60, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @_r8712_init_xmit_priv.__key.2, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 65, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @_r8712_init_xmit_priv.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 66, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @_r8712_init_xmit_priv.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 67, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @_r8712_init_xmit_priv.__key.8, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 68, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @_r8712_init_xmit_priv.__key.10, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 69, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @_r8712_init_xmit_priv.__key.12, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 70, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @_r8712_init_xmit_priv.__key.14, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 71, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @_r8712_init_xmit_priv.__key.16, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 72, i32 2}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @_r8712_init_xmit_priv.__key.18, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 116, i32 2}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @_r8712_init_xmit_priv.__key.20, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 117, i32 2}
!35 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @_r8712_init_xmit_priv.__key.22, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 144, i32 2}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @_init_txservq.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 35, i32 2}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"P802_1H_OUI", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 26, i32 17}
!44 = distinct !{null, !45, !"RFC1042_OUI", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 27, i32 17}
!46 = !{ptr @init_hwxmits.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8712/rtl871x_xmit.c", i32 979, i32 3}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
