; ModuleID = '/llk/IR_all_yes/drivers/staging/wlan-ng/p80211netdev.c_pt.bc'
source_filename = "../drivers/staging/wlan-ng/p80211netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.wlandevice = type { ptr, [16 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x i8], %struct.p80211pstr32, i32, i32, [4 x [32 x i8]], [4 x i8], i32, i32, ptr, %struct.tasklet_struct, %struct.sk_buff_head, %struct.p80211_frmrx, %struct.iw_statistics, i8, [8 x [6 x i8]], [8 x %struct.iw_quality] }
%struct.p80211pstr32 = type { i8, [32 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.124, i32 }
%union.anon.124 = type { ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.p80211_frmrx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.cfg80211_roam_info = type { ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.103, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.103 = type { i64, i64, i8 }
%struct.prism2_wiphy_private = type { ptr, %struct.ieee80211_supported_band, [14 x %struct.ieee80211_channel], [4 x %struct.ieee80211_rate], ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.106, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.106 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.p80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.p80211msg_dot11req_mibset = type { i32, i32, [16 x i8], %struct.p80211item_unk392, %struct.p80211item_uint32 }
%struct.p80211item_unk392 = type { i32, i16, i16, [392 x i8] }
%struct.p80211item_uint32 = type { i32, i16, i16, i32 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.104, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.104 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.105 }
%union.anon.105 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.p80211msg_lnxreq_commsquality = type { i32, i32, [16 x i8], %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.p80211msg_dot11req_scan = type { i32, i32, [16 x i8], %struct.p80211item_uint32, %struct.p80211item_pstr6, [1 x i8], %struct.p80211item_pstr32, [3 x i8], %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_pstr14, [1 x i8], %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32 }
%struct.p80211item_pstr6 = type <{ i32, i16, i16, %struct.p80211pstr6 }>
%struct.p80211pstr6 = type { i8, [6 x i8] }
%struct.p80211item_pstr32 = type <{ i32, i16, i16, %struct.p80211pstr32 }>
%struct.p80211item_pstr14 = type <{ i32, i16, i16, %struct.p80211pstr14 }>
%struct.p80211pstr14 = type { i8, [14 x i8] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.p80211msg_dot11req_scan_results = type { i32, i32, [16 x i8], %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_pstr6, [1 x i8], %struct.p80211item_pstr32, [3 x i8], %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32 }
%struct.p80211msg_lnxreq_autojoin = type { i32, i32, [16 x i8], %struct.p80211item_pstr32, [3 x i8], %struct.p80211item_uint32, %struct.p80211item_uint32 }
%struct.p80211msg_dot11req_mibget = type { i32, i32, [16 x i8], %struct.p80211item_unk392, %struct.p80211item_uint32 }
%struct.p80211_metawep = type { ptr, [4 x i8], [4 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.p80211ioctl_req = type <{ [16 x i8], ptr, i32, i16, i32 }>

@wlan_watchdog = dso_local global { i32, [28 x i8] } { i32 5000, [28 x i8] zeroinitializer }, align 32
@__param_str_wlan_watchdog = internal constant [25 x i8] c"prism2_usb.wlan_watchdog\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_wlan_watchdog = internal constant %struct.kernel_param { ptr @__param_str_wlan_watchdog, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.84 { ptr @wlan_watchdog } }, section "__param", align 4
@__UNIQUE_ID_wlan_watchdogtype349 = internal constant [38 x i8] c"prism2_usb.parmtype=wlan_watchdog:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wlan_watchdog350 = internal constant [63 x i8] c"prism2_usb.parm=wlan_watchdog:transmit timeout in milliseconds\00", section ".modinfo", align 1
@wlan_wext_write = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_wlan_wext_write = internal constant [27 x i8] c"prism2_usb.wlan_wext_write\00", align 1
@__param_wlan_wext_write = internal constant %struct.kernel_param { ptr @__param_str_wlan_wext_write, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.84 { ptr @wlan_wext_write } }, section "__param", align 4
@__UNIQUE_ID_wlan_wext_writetype351 = internal constant [40 x i8] c"prism2_usb.parmtype=wlan_wext_write:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wlan_wext_write352 = internal constant [65 x i8] c"prism2_usb.parm=wlan_wext_write:enable write wireless extensions\00", section ".modinfo", align 1
@wlan_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 680, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to alloc wiphy.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wlan_setup\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/wlan-ng/p80211netdev.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wlan_setup._entry_ptr = internal global ptr @wlan_setup._entry, section ".printk_index", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlan%d\00", [25 x i8] zeroinitializer }, align 32
@wlan_setup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 688, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to alloc netdev.\0A\00", [39 x i8] zeroinitializer }, align 32
@wlan_setup._entry_ptr.8 = internal global ptr @wlan_setup._entry.6, section ".printk_index", align 4
@p80211_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @p80211knetdev_init, ptr null, ptr @p80211knetdev_open, ptr @p80211knetdev_stop, ptr @p80211knetdev_hard_start_xmit, ptr null, ptr null, ptr null, ptr @p80211knetdev_set_multicast_list, ptr @p80211knetdev_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr @p80211knetdev_siocdevprivate, ptr null, ptr null, ptr null, ptr @p80211knetdev_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@p80211_convert_to_ether.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"prism2_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"p80211_convert_to_ether\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s failed.\0A\00", [20 x i8] zeroinitializer }, align 32
@p80211_rx_typedrop.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"p80211_rx_typedrop\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx'd mgmt:\0A\00", [20 x i8] zeroinitializer }, align 32
@p80211_rx_typedrop.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx'd ctl:\0A\00", [21 x i8] zeroinitializer }, align 32
@p80211_rx_typedrop.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 -8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx'd data:null\0A\00", [16 x i8] zeroinitializer }, align 32
@p80211_rx_typedrop.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.13, ptr @.str.2, ptr @.str.17, i8 0, i8 -7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx'd data:cfack\0A\00", [47 x i8] zeroinitializer }, align 32
@p80211_rx_typedrop.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.13, ptr @.str.2, ptr @.str.18, i8 0, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx'd data:cfpoll\0A\00", [46 x i8] zeroinitializer }, align 32
@p80211_rx_typedrop.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.13, ptr @.str.2, ptr @.str.19, i8 0, i8 -5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx'd data:cfack_cfpoll\0A\00", [40 x i8] zeroinitializer }, align 32
@prism2_usb_cfg_ops = internal constant { %struct.cfg80211_ops, [108 x i8] } { %struct.cfg80211_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prism2_change_virtual_intf, ptr @prism2_add_key, ptr @prism2_get_key, ptr @prism2_del_key, ptr @prism2_set_default_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prism2_get_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prism2_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prism2_connect, ptr null, ptr @prism2_disconnect, ptr @prism2_join_ibss, ptr @prism2_leave_ibss, ptr null, ptr @prism2_set_wiphy_params, ptr @prism2_set_tx_power, ptr @prism2_get_tx_power, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [108 x i8] zeroinitializer }, align 32
@prism2_channels = internal constant { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@prism2_rates = internal constant { [4 x %struct.ieee80211_rate], [48 x i8] } { [4 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 0, i16 0 }], [48 x i8] zeroinitializer }, align 32
@prism2_wiphy_privid = internal constant { ptr, [28 x i8] } { ptr @prism2_wiphy_privid, [28 x i8] zeroinitializer }, align 32
@prism2_cipher_suites = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1027073, i32 1027077], [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Operation mode: %d not support\0A\00", [32 x i8] zeroinitializer }, align 32
@prism2_add_key.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.21, ptr @.str.22, ptr @.str.23, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"prism2_add_key\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/wlan-ng/cfg80211.c\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported cipher suite\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0000000000000\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't scan in AP mode\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unhandled authorisation type for connect (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"---\00", [28 x i8] zeroinitializer }, align 32
@p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"p80211knetdev_hard_start_xmit\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"called when queue stopped.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Tx attempt prior to association, frame dropped.\0A\00", [47 x i8] zeroinitializer }, align 32
@p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ether_to_80211(%d) failed.\0A\00", [36 x i8] zeroinitializer }, align 32
@p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.28, ptr @.str.2, ptr @.str.32, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"txframe success, no more bufs\0A\00", [33 x i8] zeroinitializer }, align 32
@p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.28, ptr @.str.2, ptr @.str.33, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txframe returned alloc_fail\0A\00", [35 x i8] zeroinitializer }, align 32
@p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.28, ptr @.str.2, ptr @.str.34, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"txframe returned full or busy\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.35 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Low-level driver failed dot11req_mibset(dot11MACAddress).\0A\00", [37 x i8] zeroinitializer }, align 32
@p80211knetdev_siocdevprivate.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"p80211knetdev_siocdevprivate\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx'd ioctl, cmd=%d, len=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Implement tx_timeout for %s\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.43 = internal global [8 x i64] [i64 6, i64 32, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.44 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 8]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 35312, i64 35313]
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"wlan_watchdog\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 107, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"wlan_wext_write\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 111, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 680, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 685, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 688, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"p80211_netdev_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 625, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1984, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 262, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 880, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 942, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 994, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 998, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1002, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1006, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"prism2_usb_cfg_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 657, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"prism2_channels\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 7, i32 39 }
@___asan_gen_.133 = private unnamed_addr constant [13 x i8] c"prism2_rates\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 24, i32 36 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c"prism2_wiphy_privid\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 48, i32 27 }
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"prism2_cipher_suites\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 32, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 127, i32 20 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 157, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 221, i32 52 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 300, i32 19 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 469, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant [38 x i8] c"../drivers/staging/wlan-ng/cfg80211.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 555, i32 34 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 347, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 367, i32 26 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 389, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 415, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 421, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 425, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 615, i32 19 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 501, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 230, i32 6 }
@___asan_gen_.200 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 214, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 174, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [42 x i8] c"../drivers/staging/wlan-ng/p80211netdev.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1027, i32 23 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_wlan_watchdog350, ptr @__UNIQUE_ID_wlan_watchdogtype349, ptr @__UNIQUE_ID_wlan_wext_write352, ptr @__UNIQUE_ID_wlan_wext_writetype351, ptr @__param_wlan_watchdog, ptr @__param_wlan_wext_write, ptr @wlan_setup._entry, ptr @wlan_setup._entry.6, ptr @wlan_setup._entry_ptr, ptr @wlan_setup._entry_ptr.8, ptr @wlan_watchdog, ptr @wlan_wext_write, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @p80211_netdev_ops, ptr @skb_queue_head_init.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @prism2_usb_cfg_ops, ptr @prism2_channels, ptr @prism2_rates, ptr @prism2_wiphy_privid, ptr @prism2_cipher_suites, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_watchdog to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_wext_write to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlan_setup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p80211_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_usb_cfg_ops to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_rates to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_wiphy_privid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_cipher_suites to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prism2_connect_result(ptr noundef %wlandev, i8 noundef zeroext %failed) local_unnamed_addr #0 align 64 {
entry:
  %params.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %failed)
  %tobool.not = icmp ne i8 %failed, 0
  %netdev = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %bssid = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 18
  %conv.i = zext i1 %tobool.not to i32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i) #7
  %2 = getelementptr inbounds i8, ptr %params.i.i, i32 28
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  %4 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv.i, ptr %params.i.i, align 4
  %bssid2.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %bssid2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bssid, ptr %bssid2.i.i, align 4
  %bss3.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 2
  %timeout_reason8.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %timeout_reason8.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %timeout_reason8.i.i, align 4
  %7 = call ptr @memset(ptr %bss3.i.i, i32 0, i32 20)
  call void @cfg80211_connect_done(ptr noundef %1, ptr noundef nonnull %params.i.i, i32 noundef 3264) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prism2_disconnected(ptr nocapture noundef readonly %wlandev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  tail call void @cfg80211_disconnected(ptr noundef %1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i32 noundef 3264) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prism2_roamed(ptr noundef %wlandev) local_unnamed_addr #0 align 64 {
entry:
  %roam_info = alloca %struct.cfg80211_roam_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %roam_info) #7
  %0 = call ptr @memset(ptr %roam_info, i32 0, i32 52)
  %bssid = getelementptr inbounds %struct.cfg80211_roam_info, ptr %roam_info, i32 0, i32 2
  %bssid1 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 18
  %1 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bssid1, ptr %bssid, align 4
  %netdev = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  call void @cfg80211_roamed(ptr noundef %3, ptr noundef nonnull %roam_info, i32 noundef 3264) #7
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %roam_info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_roamed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @p80211netdev_rx(ptr noundef %wlandev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nsd_rxq = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 28
  tail call void @skb_queue_tail(ptr noundef %nsd_rxq, ptr noundef %skb) #7
  %state.i = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 27, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_bh = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 27
  tail call void @__tasklet_schedule(ptr noundef %rx_bh) #7
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wlan_setup(ptr noundef %wlandev, ptr noundef %physdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  %ethconv = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 10
  %1 = ptrtoint ptr %ethconv to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %ethconv, align 4
  %macmode = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 20
  %2 = ptrtoint ptr %macmode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %macmode, align 4
  %nsd_rxq = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 28
  %lock.i = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 28, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %3 = ptrtoint ptr %nsd_rxq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %nsd_rxq, ptr %nsd_rxq, align 4
  %prev.i.i = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 28, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %nsd_rxq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 28, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 4
  %rx_bh = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 27
  tail call void @tasklet_setup(ptr noundef %rx_bh, ptr noundef nonnull @p80211netdev_rx_bh) #7
  %call.i.i = tail call ptr @wiphy_new_nm(ptr noundef nonnull @prism2_usb_cfg_ops, i32 noundef 932, ptr noundef null) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %wiphy_priv.exit.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

wiphy_priv.exit.i:                                ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 86
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %wlandev, ptr %priv.i.i, align 4
  %channels.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 1, i32 4
  %7 = call ptr @memcpy(ptr %channels.i, ptr @prism2_channels, i32 784)
  %rates.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 56, i32 12, i32 8, i32 2
  %8 = call ptr @memcpy(ptr %rates.i, ptr @prism2_rates, i32 48)
  %band.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %band.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %channels.i, ptr %band.i, align 4
  %n_channels.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 14, ptr %n_channels.i, align 4
  %bitrates.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rates.i, ptr %bitrates.i, align 4
  %n_bitrates.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %n_bitrates.i, align 4
  %band13.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %band13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %band13.i, align 4
  %ht_supported.i = getelementptr inbounds %struct.prism2_wiphy_private, ptr %priv.i.i, i32 0, i32 1, i32 5, i32 1
  %14 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ht_supported.i, align 2
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 53
  %15 = ptrtoint ptr %bands.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %band.i, ptr %bands.i, align 16
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 56, i32 1
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %physdev, ptr %parent.i.i, align 8
  %privid.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 52
  %17 = ptrtoint ptr %privid.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @prism2_wiphy_privid, ptr %privid.i, align 4
  %max_scan_ssids.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 18
  %18 = ptrtoint ptr %max_scan_ssids.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %max_scan_ssids.i, align 32
  %interface_modes.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %interface_modes.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 6, ptr %interface_modes.i, align 4
  %signal_type.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %signal_type.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %signal_type.i, align 8
  %n_cipher_suites.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 27
  %21 = ptrtoint ptr %n_cipher_suites.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %n_cipher_suites.i, align 4
  %cipher_suites.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 28
  %22 = ptrtoint ptr %cipher_suites.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @prism2_cipher_suites, ptr %cipher_suites.i, align 8
  %call16.i = tail call i32 @wiphy_register(ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i = icmp slt i32 %call16.i, 0
  br i1 %cmp.i, label %if.then17.i, label %if.end

if.then17.i:                                      ; preds = %wiphy_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @wiphy_free(ptr noundef nonnull %call.i.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then17.i, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %physdev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit.i
  %call1 = tail call ptr @alloc_netdev_mqs(i32 noundef 964, ptr noundef nonnull @.str.5, i8 noundef zeroext 0, ptr noundef nonnull @ether_setup, i32 noundef 1, i32 noundef 1) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end6, label %if.else

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %physdev, ptr noundef nonnull @.str.7) #10
  tail call void @wiphy_unregister(ptr noundef nonnull %call.i.i) #7
  tail call void @wiphy_free(ptr noundef nonnull %call.i.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %netdev7 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %23 = ptrtoint ptr %netdev7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call1, ptr %netdev7, align 4
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 128
  %24 = ptrtoint ptr %ml_priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %wlandev, ptr %ml_priv, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 16
  %25 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @p80211_netdev_ops, ptr %netdev_ops, align 8
  %add.ptr.i = getelementptr i8, ptr %call1, i32 2304
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %add.ptr.i, align 4
  %iftype = getelementptr i8, ptr %call1, i32 2308
  %27 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %iftype, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 82
  %28 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %ieee80211_ptr, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 30
  %29 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 31
  %30 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2284, ptr %max_mtu, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 103
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  tail call void @netif_carrier_off(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end6, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.else ], [ 1, %do.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p80211netdev_rx_bh(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -276
  %netdev = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %nsd_rxq = getelementptr i8, ptr %t, i32 24
  %call28 = tail call ptr @skb_dequeue(ptr noundef %nsd_rxq) #7
  %tobool.not29 = icmp eq ptr %call28, null
  br i1 %tobool.not29, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %state = getelementptr i8, ptr %t, i32 -252
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %stats = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call30 = phi ptr [ %call28, %while.body.lr.ph ], [ %call, %while.cond.backedge.while.body_crit_edge ]
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %while.body.if.end13_crit_edge

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %while.body
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp1.not = icmp eq i16 %5, 1
  br i1 %cmp1.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = getelementptr inbounds %struct.anon, ptr %call30, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %6, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 15, i32 0, i32 21
  %12 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 15
  %13 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear5 = and i16 %bf.load, 6655
  %bf.set6 = or i16 %bf.clear5, 24576
  store i16 %bf.set6, ptr %ip_summed, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 15, i32 0, i32 18
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 25, ptr %protocol, align 8
  %15 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stats, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %stats, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %19 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %20, %18
  store i32 %add, ptr %rx_bytes, align 8
  %call8 = tail call i32 @netif_rx_ni(ptr noundef nonnull %call30) #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end13, %if.else.while.cond.backedge_crit_edge, %if.then3
  %call = tail call ptr @skb_dequeue(ptr noundef %nsd_rxq) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.else:                                          ; preds = %if.then
  %call9 = tail call fastcc i32 @p80211_convert_to_ether(ptr noundef %add.ptr, ptr noundef nonnull %call30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else.while.cond.backedge_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.else.while.cond.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %while.body.if.end13_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call30) #7
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wlan_unsetup(ptr noundef %wlandev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_bh = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 27
  tail call void @tasklet_kill(ptr noundef %rx_bh) #7
  %netdev = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @wiphy_unregister(ptr noundef nonnull %3) #7
  tail call void @wiphy_free(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void @free_netdev(ptr noundef %5) #7
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %netdev, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_wlandev(ptr nocapture noundef readonly %wlandev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %call = tail call i32 @register_netdev(ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_wlandev(ptr noundef %wlandev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  tail call void @unregister_netdev(ptr noundef %1) #7
  %nsd_rxq = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 28
  %call2 = tail call ptr @skb_dequeue(ptr noundef %nsd_rxq) #7
  %tobool.not3 = icmp eq ptr %call2, null
  br i1 %tobool.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call4 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call2, %entry.while.body_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call4) #7
  %call = tail call ptr @skb_dequeue(ptr noundef %nsd_rxq) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @p80211netdev_hwremoved(ptr nocapture noundef %wlandev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwremoved = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 5
  %0 = ptrtoint ptr %hwremoved to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %hwremoved, align 4
  %state = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 3
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %netdev1 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %7 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev1, align 4
  tail call void @netif_device_detach(ptr noundef %8) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_connect_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p80211_convert_to_ether(ptr noundef %wlandev, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %call = tail call fastcc i32 @p80211_rx_typedrop(ptr noundef %wlandev, i16 noundef zeroext %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end12_crit_edge, label %if.then2

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then2:                                         ; preds = %if.end
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %address1 = getelementptr inbounds %struct.p80211_hdr, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %address1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %address1, align 4
  %xor.i.i = xor i32 %14, %12
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.p80211_hdr, ptr %1, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %18, %16
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  %19 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i = icmp ne i32 %19, 0
  %or.cond = select i1 %cmp.i.i, i1 true, i1 %tobool.i
  br i1 %or.cond, label %if.then2.if.end12_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %if.then2.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %ethconv = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 10
  %20 = ptrtoint ptr %ethconv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ethconv, align 4
  %call13 = tail call i32 @skb_p80211_to_ether(ptr noundef %wlandev, i32 noundef %21, ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp eq i32 %call13, 0
  br i1 %cmp, label %if.then14, label %do.body20

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36
  %24 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stats, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %stats, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %28 = load ptr, ptr %netdev, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 36, i32 2
  %29 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %30, %27
  store i32 %add, ptr %rx_bytes, align 8
  %call18 = tail call i32 @netif_rx_ni(ptr noundef %skb) #7
  br label %cleanup

do.body20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211_convert_to_ether.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211_convert_to_ether, %if.then25)) #7
          to label %cleanup [label %if.then25], !srcloc !126

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @p80211_convert_to_ether.__UNIQUE_ID_ddebug353, ptr noundef %32, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %do.body20, %if.then14, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14 ], [ 1, %entry.cleanup_crit_edge ], [ 2, %if.then25 ], [ 2, %do.body20 ], [ 1, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p80211_rx_typedrop(ptr noundef %wlandev, i16 noundef zeroext %fc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i16 %fc, 2
  %shr = and i16 %and, 3
  %0 = lshr i16 %fc, 4
  %1 = and i16 %0, 15
  %conv6 = zext i16 %shr to i32
  %2 = zext i32 %conv6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv6, label %entry.sw.epilog226_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb57
    i32 2, label %sw.bb114
  ]

entry.sw.epilog226_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog226

sw.bb:                                            ; preds = %entry
  %netdev = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %7 = and i32 %6, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %do.body12, label %sw.bb.sw.epilog226_crit_edge

sw.bb.sw.epilog226_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog226

do.body12:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211_rx_typedrop.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211_rx_typedrop, %if.then16)) #7
          to label %do.end20 [label %if.then16], !srcloc !126

if.then16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @p80211_rx_typedrop.__UNIQUE_ID_ddebug360, ptr noundef %10, ptr noundef nonnull @.str.14) #7
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body12
  %rx = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29
  %11 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %rx, align 4
  %conv21 = zext i16 %1 to i32
  %13 = zext i32 %conv21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %conv21, label %sw.default [
    i32 0, label %sw.bb22
    i32 1, label %sw.bb25
    i32 2, label %sw.bb28
    i32 3, label %sw.bb31
    i32 4, label %sw.bb34
    i32 5, label %sw.bb37
    i32 8, label %sw.bb40
    i32 9, label %sw.bb43
    i32 10, label %sw.bb46
    i32 11, label %sw.bb49
    i32 12, label %sw.bb52
  ]

sw.bb22:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %assocreq = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 1
  br label %sw.epilog226.sink.split

sw.bb25:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %assocresp = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 2
  br label %sw.epilog226.sink.split

sw.bb28:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %reassocreq = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 3
  br label %sw.epilog226.sink.split

sw.bb31:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %reassocresp = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 4
  br label %sw.epilog226.sink.split

sw.bb34:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %probereq = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 5
  br label %sw.epilog226.sink.split

sw.bb37:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %proberesp = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 6
  br label %sw.epilog226.sink.split

sw.bb40:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %beacon = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 7
  br label %sw.epilog226.sink.split

sw.bb43:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %atim = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 8
  br label %sw.epilog226.sink.split

sw.bb46:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %disassoc = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 9
  br label %sw.epilog226.sink.split

sw.bb49:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %authen = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 10
  br label %sw.epilog226.sink.split

sw.bb52:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %deauthen = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 11
  br label %sw.epilog226.sink.split

sw.default:                                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %mgmt_unknown = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 12
  br label %sw.epilog226.sink.split

sw.bb57:                                          ; preds = %entry
  %netdev58 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %14 = ptrtoint ptr %netdev58 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev58, align 4
  %flags59 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags59, align 8
  %18 = and i32 %17, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %do.body70, label %sw.bb57.sw.epilog226_crit_edge

sw.bb57.sw.epilog226_crit_edge:                   ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog226

do.body70:                                        ; preds = %sw.bb57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211_rx_typedrop.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211_rx_typedrop, %if.then82)) #7
          to label %do.end88 [label %if.then82], !srcloc !126

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %netdev58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev58, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @p80211_rx_typedrop.__UNIQUE_ID_ddebug361, ptr noundef %21, ptr noundef nonnull @.str.15) #7
  br label %do.end88

do.end88:                                         ; preds = %if.then82, %do.body70
  %ctl = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 13
  %22 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctl, align 4
  %inc90 = add i32 %23, 1
  store i32 %inc90, ptr %ctl, align 4
  %conv91 = zext i16 %1 to i32
  %24 = zext i32 %conv91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %conv91, label %sw.default110 [
    i32 10, label %sw.bb92
    i32 11, label %sw.bb95
    i32 12, label %sw.bb98
    i32 13, label %sw.bb101
    i32 14, label %sw.bb104
    i32 15, label %sw.bb107
  ]

sw.bb92:                                          ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  %pspoll = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 14
  br label %sw.epilog226.sink.split

sw.bb95:                                          ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  %rts = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 15
  br label %sw.epilog226.sink.split

sw.bb98:                                          ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  %cts = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 16
  br label %sw.epilog226.sink.split

sw.bb101:                                         ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  %ack = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 17
  br label %sw.epilog226.sink.split

sw.bb104:                                         ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  %cfend = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 18
  br label %sw.epilog226.sink.split

sw.bb107:                                         ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  %cfendcfack = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 19
  br label %sw.epilog226.sink.split

sw.default110:                                    ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  %ctl_unknown = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 20
  br label %sw.epilog226.sink.split

sw.bb114:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 21
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data, align 4
  %inc116 = add i32 %26, 1
  store i32 %inc116, ptr %data, align 4
  %conv117 = zext i16 %1 to i32
  %27 = zext i32 %conv117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %conv117, label %sw.default222 [
    i32 0, label %sw.bb118
    i32 1, label %sw.bb121
    i32 2, label %sw.bb124
    i32 3, label %sw.bb127
    i32 4, label %do.body132
    i32 5, label %do.body155
    i32 6, label %do.body178
    i32 7, label %do.body201
  ]

sw.bb118:                                         ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #9
  %dataonly = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 22
  br label %sw.epilog226.sink.split

sw.bb121:                                         ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #9
  %data_cfack = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 23
  br label %sw.epilog226.sink.split

sw.bb124:                                         ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #9
  %data_cfpoll = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 24
  br label %sw.epilog226.sink.split

sw.bb127:                                         ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #9
  %data__cfack_cfpoll = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 25
  br label %sw.epilog226.sink.split

do.body132:                                       ; preds = %sw.bb114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211_rx_typedrop.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211_rx_typedrop, %if.then144)) #7
          to label %do.end150 [label %if.then144], !srcloc !126

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  %netdev145 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %28 = ptrtoint ptr %netdev145 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev145, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @p80211_rx_typedrop.__UNIQUE_ID_ddebug362, ptr noundef %29, ptr noundef nonnull @.str.16) #7
  br label %do.end150

do.end150:                                        ; preds = %if.then144, %do.body132
  %null = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 26
  br label %sw.epilog226.sink.split

do.body155:                                       ; preds = %sw.bb114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211_rx_typedrop.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211_rx_typedrop, %if.then167)) #7
          to label %do.end173 [label %if.then167], !srcloc !126

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #9
  %netdev168 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %30 = ptrtoint ptr %netdev168 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev168, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @p80211_rx_typedrop.__UNIQUE_ID_ddebug363, ptr noundef %31, ptr noundef nonnull @.str.17) #7
  br label %do.end173

do.end173:                                        ; preds = %if.then167, %do.body155
  %cfack = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 27
  br label %sw.epilog226.sink.split

do.body178:                                       ; preds = %sw.bb114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211_rx_typedrop.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211_rx_typedrop, %if.then190)) #7
          to label %do.end196 [label %if.then190], !srcloc !126

if.then190:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #9
  %netdev191 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %32 = ptrtoint ptr %netdev191 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev191, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @p80211_rx_typedrop.__UNIQUE_ID_ddebug364, ptr noundef %33, ptr noundef nonnull @.str.18) #7
  br label %do.end196

do.end196:                                        ; preds = %if.then190, %do.body178
  %cfpoll = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 28
  br label %sw.epilog226.sink.split

do.body201:                                       ; preds = %sw.bb114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211_rx_typedrop.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211_rx_typedrop, %if.then213)) #7
          to label %do.end219 [label %if.then213], !srcloc !126

if.then213:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #9
  %netdev214 = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %34 = ptrtoint ptr %netdev214 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev214, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @p80211_rx_typedrop.__UNIQUE_ID_ddebug365, ptr noundef %35, ptr noundef nonnull @.str.19) #7
  br label %do.end219

do.end219:                                        ; preds = %if.then213, %do.body201
  %cfack_cfpoll = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 29
  br label %sw.epilog226.sink.split

sw.default222:                                    ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #9
  %data_unknown = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 29, i32 30
  br label %sw.epilog226.sink.split

sw.epilog226.sink.split:                          ; preds = %sw.default222, %do.end219, %do.end196, %do.end173, %do.end150, %sw.bb127, %sw.bb124, %sw.bb121, %sw.bb118, %sw.default110, %sw.bb107, %sw.bb104, %sw.bb101, %sw.bb98, %sw.bb95, %sw.bb92, %sw.default, %sw.bb52, %sw.bb49, %sw.bb46, %sw.bb43, %sw.bb40, %sw.bb37, %sw.bb34, %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb22
  %pspoll.sink292 = phi ptr [ %pspoll, %sw.bb92 ], [ %rts, %sw.bb95 ], [ %cts, %sw.bb98 ], [ %ack, %sw.bb101 ], [ %cfend, %sw.bb104 ], [ %cfendcfack, %sw.bb107 ], [ %ctl_unknown, %sw.default110 ], [ %assocreq, %sw.bb22 ], [ %assocresp, %sw.bb25 ], [ %reassocreq, %sw.bb28 ], [ %reassocresp, %sw.bb31 ], [ %probereq, %sw.bb34 ], [ %proberesp, %sw.bb37 ], [ %beacon, %sw.bb40 ], [ %atim, %sw.bb43 ], [ %disassoc, %sw.bb46 ], [ %authen, %sw.bb49 ], [ %deauthen, %sw.bb52 ], [ %mgmt_unknown, %sw.default ], [ %dataonly, %sw.bb118 ], [ %data_cfack, %sw.bb121 ], [ %data_cfpoll, %sw.bb124 ], [ %data__cfack_cfpoll, %sw.bb127 ], [ %null, %do.end150 ], [ %cfack, %do.end173 ], [ %cfpoll, %do.end196 ], [ %cfack_cfpoll, %do.end219 ], [ %data_unknown, %sw.default222 ]
  %drop.0.ph = phi i32 [ 2, %sw.bb92 ], [ 2, %sw.bb95 ], [ 2, %sw.bb98 ], [ 2, %sw.bb101 ], [ 2, %sw.bb104 ], [ 2, %sw.bb107 ], [ 2, %sw.default110 ], [ 2, %sw.bb22 ], [ 2, %sw.bb25 ], [ 2, %sw.bb28 ], [ 2, %sw.bb31 ], [ 2, %sw.bb34 ], [ 2, %sw.bb37 ], [ 2, %sw.bb40 ], [ 2, %sw.bb43 ], [ 2, %sw.bb46 ], [ 2, %sw.bb49 ], [ 2, %sw.bb52 ], [ 2, %sw.default ], [ 0, %sw.bb118 ], [ 0, %sw.bb121 ], [ 0, %sw.bb124 ], [ 0, %sw.bb127 ], [ 0, %do.end150 ], [ 0, %do.end173 ], [ 0, %do.end196 ], [ 0, %do.end219 ], [ 0, %sw.default222 ]
  %36 = ptrtoint ptr %pspoll.sink292 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pspoll.sink292, align 4
  %inc94 = add i32 %37, 1
  store i32 %inc94, ptr %pspoll.sink292, align 4
  br label %sw.epilog226

sw.epilog226:                                     ; preds = %sw.epilog226.sink.split, %sw.bb57.sw.epilog226_crit_edge, %sw.bb.sw.epilog226_crit_edge, %entry.sw.epilog226_crit_edge
  %drop.0 = phi i32 [ 0, %entry.sw.epilog226_crit_edge ], [ 1, %sw.bb.sw.epilog226_crit_edge ], [ 1, %sw.bb57.sw.epilog226_crit_edge ], [ %drop.0.ph, %sw.epilog226.sink.split ]
  ret i32 %drop.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_p80211_to_ether(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_change_virtual_intf(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, i32 noundef %type, ptr nocapture noundef readnone %params) #0 align 64 {
entry:
  %msg.i = alloca %struct.p80211msg_dot11req_mibset, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %type, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %macmode = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %macmode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %macmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %macmode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %macmode, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %macmode3 = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %macmode3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macmode3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp4 = icmp eq i32 %7, 2
  br i1 %cmp4, label %sw.bb2.cleanup_crit_edge, label %if.end6

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %macmode3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %macmode3, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %type) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end6, %if.end
  %data.0 = phi i32 [ 1, %if.end6 ], [ 0, %if.end ]
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 432)
  %data1.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 129, ptr %msg.i, align 4
  %12 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 402657413, ptr %data1.i, align 4
  %data3.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3, i32 8
  %13 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %data.0, ptr %data3.i, align 4
  %call.i = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %14 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ieee80211_ptr, align 16
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %type, ptr %iftype, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ 0, %sw.bb2.cleanup_crit_edge ], [ %spec.select, %sw.epilog ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_add_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr nocapture noundef readnone %mac_addr, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %msg.i33 = alloca %struct.p80211msg_dot11req_mibset, align 4
  %msg.i = alloca %struct.p80211msg_dot11req_mibset, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %conv = zext i8 %key_index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %key_index)
  %cmp = icmp ugt i8 %key_index, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cipher = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 5
  %2 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cipher, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %3, label %do.body [
    i32 1027073, label %if.end.if.end13_crit_edge
    i32 1027077, label %if.end.if.end13_crit_edge38
  ]

if.end.if.end13_crit_edge38:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prism2_add_key.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prism2_add_key, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !126

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prism2_add_key.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.23) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %if.end.if.end13_crit_edge38
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 432)
  %data1.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 129, ptr %msg.i, align 4
  %8 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 402661761, ptr %data1.i, align 4
  %data3.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3, i32 8
  %9 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %data3.i, align 4
  %call.i = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %add = shl nuw nsw i32 %conv, 12
  %and = add nuw nsw i32 %add, 4096
  %shl = and i32 %and, 258048
  %or20 = or i32 %shl, 201326849
  %key_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %10 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_len, align 4
  %conv21 = trunc i32 %11 to i8
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %params, align 4
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i33) #7
  %14 = getelementptr inbounds i8, ptr %msg.i33, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 432)
  %data1.i34 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i33, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %msg.i33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 129, ptr %msg.i33, align 4
  %17 = ptrtoint ptr %data1.i34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or20, ptr %data1.i34, align 4
  %data3.i35 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i33, i32 0, i32 3, i32 3, i32 8
  %18 = ptrtoint ptr %data3.i35 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv21, ptr %data3.i35, align 4
  %data6.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i33, i32 0, i32 3, i32 3, i32 9
  %conv.i = and i32 %11, 255
  %19 = call ptr @memcpy(ptr %data6.i, ptr %13, i32 %conv.i)
  %call.i36 = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i33) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool23.not = icmp eq i32 %call.i36, 0
  %. = select i1 %tobool23.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end13.cleanup_crit_edge, %if.then11, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11 ], [ -14, %if.end13.cleanup_crit_edge ], [ %., %if.end18 ], [ -14, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_get_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr nocapture noundef readnone %mac_addr, ptr noundef %cookie, ptr nocapture noundef readonly %callback) #0 align 64 {
entry:
  %params = alloca %struct.key_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %params) #7
  %conv = zext i8 %key_index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %key_index)
  %cmp = icmp ugt i8 %key_index, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.wlandevice, ptr %1, i32 0, i32 23, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = getelementptr inbounds i8, ptr %params, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 24)
  %6 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %3, label %if.end.cleanup_crit_edge [
    i8 13, label %if.end.if.end12_crit_edge
    i8 5, label %if.end.if.end12_crit_edge22
  ]

if.end.if.end12_crit_edge22:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end.if.end12_crit_edge, %if.end.if.end12_crit_edge22
  %conv2 = zext i8 %3 to i32
  %cipher9 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 5
  %7 = ptrtoint ptr %cipher9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1027077, ptr %cipher9, align 4
  %key_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2, ptr %key_len, align 4
  %arrayidx14 = getelementptr %struct.wlandevice, ptr %1, i32 0, i32 22, i32 %conv
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx14, ptr %params, align 4
  %seq_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 3
  %10 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %seq_len, align 4
  call void %callback(ptr noundef %cookie, ptr noundef nonnull %params) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %params) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_del_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr nocapture noundef readnone %mac_addr) #0 align 64 {
entry:
  %msg.i = alloca %struct.p80211msg_dot11req_mibset, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %key_index)
  %cmp = icmp ugt i8 %key_index, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %2 = add nuw nsw i8 %key_index, 1
  %and = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %and, 12
  %or3 = or i32 %shl, 201326849
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i) #7
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 432)
  %data1.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 129, ptr %msg.i, align 4
  %6 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or3, ptr %data1.i, align 4
  %data3.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3, i32 8
  %7 = ptrtoint ptr %data3.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 13, ptr %data3.i, align 4
  %data6.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3, i32 9
  %8 = call ptr @memcpy(ptr %data6.i, ptr @.str.24, i32 13)
  %call.i = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_set_default_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i8 noundef zeroext %key_index, i1 noundef zeroext %unicast, i1 noundef zeroext %multicast) #0 align 64 {
entry:
  %msg.i = alloca %struct.p80211msg_dot11req_mibset, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %conv = zext i8 %key_index to i32
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 432)
  %data1.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 129, ptr %msg.i, align 4
  %5 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 402661761, ptr %data1.i, align 4
  %data3.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3, i32 8
  %6 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %data3.i, align 4
  %call.i = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_get_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mac, ptr nocapture noundef %sinfo) #0 align 64 {
entry:
  %quality = alloca %struct.p80211msg_lnxreq_commsquality, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %quality) #7
  %2 = getelementptr inbounds i8, ptr %quality, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 92)
  %4 = call ptr @memset(ptr %sinfo, i32 0, i32 208)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %msdstate = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %msdstate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msdstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp.not = icmp eq i32 %6, 7
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %quality to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 259, ptr %quality, align 4
  %data = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, ptr %quality, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %data, align 4
  %status = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, ptr %quality, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %status, align 4
  %mlmerequest = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %mlmerequest to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mlmerequest, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = call i32 %11(ptr noundef nonnull %1, ptr noundef nonnull %quality) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %data8 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, ptr %quality, i32 0, i32 8, i32 3
  %12 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data8, align 4
  %conv = trunc i32 %13 to i16
  %legacy = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %legacy to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %legacy, align 2
  %15 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sinfo, align 8
  %data10 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, ptr %quality, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data10, align 4
  %conv11 = trunc i32 %18 to i8
  %signal = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %19 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv11, ptr %signal, align 1
  %or13 = or i64 %16, 384
  store i64 %or13, ptr %sinfo, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.then7 ], [ %call, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %quality) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_scan(ptr noundef %wiphy, ptr noundef %request) #0 align 64 {
entry:
  %data.i = alloca %struct.cfg80211_inform_bss, align 8
  %msg1 = alloca %struct.p80211msg_dot11req_scan, align 4
  %msg2 = alloca ptr, align 4
  %info = alloca %struct.cfg80211_scan_info, align 8
  %ie_buf = alloca [46 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !127

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !128
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %msg1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg2) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #7
  %0 = call ptr @memset(ptr %info, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 46, ptr nonnull %ie_buf) #7
  %1 = call ptr @memset(ptr %ie_buf, i32 255, i32 46)
  %tobool.not = icmp eq ptr %request, null
  br i1 %tobool.not, label %wiphy_priv.exit.cleanup118_crit_edge, label %if.end

wiphy_priv.exit.cleanup118_crit_edge:             ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup118

if.end:                                           ; preds = %wiphy_priv.exit
  %wdev = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 10
  %2 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdev, align 8
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 128
  %6 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ml_priv, align 8
  %scan_request = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 12, i32 10, i32 3, i32 1, i32 1
  %8 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scan_request, align 4
  %tobool1.not = icmp eq ptr %9, null
  %cmp.not = icmp eq ptr %9, %request
  %or.cond = or i1 %tobool1.not, %cmp.not
  br i1 %or.cond, label %if.end4, label %if.end.cleanup118_crit_edge

if.end.cleanup118_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup118

if.end4:                                          ; preds = %if.end
  %macmode = getelementptr inbounds %struct.wlandevice, ptr %7, i32 0, i32 20
  %10 = ptrtoint ptr %macmode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %macmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp5 = icmp eq i32 %11, 3
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.25) #10
  br label %cleanup118

if.end7:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 552) #11
  %13 = ptrtoint ptr %msg2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %msg2, align 4
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup118_crit_edge, label %if.end11

if.end7.cleanup118_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup118

if.end11:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %request, ptr %scan_request, align 4
  %15 = getelementptr inbounds i8, ptr %msg1, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 200)
  %17 = ptrtoint ptr %msg1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 257, ptr %msg1, align 4
  %data = getelementptr inbounds %struct.p80211msg_dot11req_scan, ptr %msg1, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %data, align 4
  %data13 = getelementptr inbounds %struct.p80211msg_dot11req_scan, ptr %msg1, i32 0, i32 4, i32 3
  %data14 = getelementptr inbounds %struct.p80211msg_dot11req_scan, ptr %msg1, i32 0, i32 4, i32 3, i32 1
  %19 = call ptr @memset(ptr %data14, i32 255, i32 6)
  %20 = ptrtoint ptr %data13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 6, ptr %data13, align 4
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 1
  %21 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp17 = icmp sgt i32 %22, 0
  br i1 %cmp17, label %if.then18, label %if.end11.if.end32_crit_edge

if.end11.if.end32_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %data19 = getelementptr inbounds %struct.p80211msg_dot11req_scan, ptr %msg1, i32 0, i32 8, i32 3
  %23 = ptrtoint ptr %data19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %data19, align 4
  %24 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %request, align 8
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ssid_len, align 1
  %data20 = getelementptr inbounds %struct.p80211msg_dot11req_scan, ptr %msg1, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %data20 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %data20, align 4
  %data24 = getelementptr inbounds %struct.p80211msg_dot11req_scan, ptr %msg1, i32 0, i32 6, i32 3, i32 1
  %29 = load i8, ptr %ssid_len, align 1
  %conv = zext i8 %29 to i32
  %30 = call ptr @memcpy(ptr %data24, ptr %25, i32 %conv)
  br label %if.end32

if.end32:                                         ; preds = %if.then18, %if.end11.if.end32_crit_edge
  %data33 = getelementptr inbounds %struct.p80211msg_dot11req_scan, ptr %msg1, i32 0, i32 9, i32 3
  %31 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %data33, align 4
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 2
  %32 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp34182.not = icmp eq i32 %33, 0
  br i1 %cmp34182.not, label %if.end32.for.end_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  br label %for.body

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end32.for.body_crit_edge
  %i.0183 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end32.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfg80211_scan_request, ptr %request, i32 0, i32 22, i32 %i.0183
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %37, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #7
  %conv39 = trunc i32 %call.i to i8
  %arrayidx42 = getelementptr %struct.p80211msg_dot11req_scan, ptr %msg1, i32 0, i32 10, i32 3, i32 1, i32 %i.0183
  %38 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv39, ptr %arrayidx42, align 1
  %inc = add nuw nsw i32 %i.0183, 1
  %39 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %40)
  %cmp34 = icmp ult i32 %inc, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i.0183)
  %cmp36 = icmp ult i32 %i.0183, 13
  %or.cond162 = and i1 %cmp36, %cmp34
  br i1 %or.cond162, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast = trunc i32 %40 to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end32.for.end_crit_edge
  %.lcssa = phi i8 [ 0, %if.end32.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %data46 = getelementptr inbounds %struct.p80211msg_dot11req_scan, ptr %msg1, i32 0, i32 10, i32 3
  %41 = ptrtoint ptr %data46 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.lcssa, ptr %data46, align 4
  %data48 = getelementptr inbounds %struct.p80211msg_dot11req_scan, ptr %msg1, i32 0, i32 13, i32 3
  %42 = ptrtoint ptr %data48 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 250, ptr %data48, align 4
  %data49 = getelementptr inbounds %struct.p80211msg_dot11req_scan, ptr %msg1, i32 0, i32 12, i32 3
  %43 = ptrtoint ptr %data49 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 200, ptr %data49, align 4
  %call50 = call i32 @p80211req_dorequest(ptr noundef %7, ptr noundef nonnull %msg1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end55, label %if.then52

if.then52:                                        ; preds = %for.end
  %data53 = getelementptr inbounds %struct.p80211msg_dot11req_scan, ptr %msg1, i32 0, i32 14, i32 3
  %44 = ptrtoint ptr %data53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data53, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %45, label %sw.default.i [
    i32 2, label %if.then52.exit_crit_edge
    i32 11, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

if.then52.exit_crit_edge:                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

sw.bb1.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

sw.bb2.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

sw.default.i:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end55:                                         ; preds = %for.end
  %data57 = getelementptr inbounds %struct.p80211msg_dot11req_scan, ptr %msg1, i32 0, i32 15, i32 3
  %47 = ptrtoint ptr %data57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp59184 = icmp sgt i32 %48, 0
  br i1 %cmp59184, label %for.body61.lr.ph, label %if.end55.exit_crit_edge

if.end55.exit_crit_edge:                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

for.body61.lr.ph:                                 ; preds = %if.end55
  %arrayidx77 = getelementptr inbounds [46 x i8], ptr %ie_buf, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [46 x i8], ptr %ie_buf, i32 0, i32 2
  %49 = getelementptr inbounds i8, ptr %data.i, i32 8
  %scan_width.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i, i32 0, i32 1
  br label %for.body61

for.body61:                                       ; preds = %for.inc106.for.body61_crit_edge, %for.body61.lr.ph
  %i.1185 = phi i32 [ 0, %for.body61.lr.ph ], [ %inc107, %for.inc106.for.body61_crit_edge ]
  %50 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %msg2, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 321, ptr %51, align 1
  %53 = load ptr, ptr %msg2, align 4
  %data63 = getelementptr inbounds %struct.p80211msg_dot11req_scan_results, ptr %53, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %data63 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %i.1185, ptr %data63, align 1
  %call64 = call i32 @p80211req_dorequest(ptr noundef %7, ptr noundef nonnull %msg2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65.not = icmp eq i32 %call64, 0
  %55 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %msg2, align 4
  %data68 = getelementptr inbounds %struct.p80211msg_dot11req_scan_results, ptr %56, i32 0, i32 4, i32 3
  %57 = ptrtoint ptr %data68 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %data68, align 1
  br i1 %cmp65.not, label %lor.lhs.false, label %if.then110

lor.lhs.false:                                    ; preds = %for.body61
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp69.not = icmp eq i32 %58, 1
  br i1 %cmp69.not, label %if.end72, label %lor.lhs.false.exit_crit_edge

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end72:                                         ; preds = %lor.lhs.false
  %59 = ptrtoint ptr %ie_buf to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %ie_buf, align 1
  %data75 = getelementptr inbounds %struct.p80211msg_dot11req_scan_results, ptr %56, i32 0, i32 9, i32 3
  %60 = ptrtoint ptr %data75 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %data75, align 1
  %62 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx77, align 1
  %conv79 = zext i8 %61 to i32
  %add = add nuw nsw i32 %conv79, 2
  %data83 = getelementptr inbounds %struct.p80211msg_dot11req_scan_results, ptr %56, i32 0, i32 9, i32 3, i32 1
  %63 = call ptr @memcpy(ptr %arrayidx80, ptr %data83, i32 %conv79)
  %data88 = getelementptr inbounds %struct.p80211msg_dot11req_scan_results, ptr %56, i32 0, i32 20, i32 3
  %64 = ptrtoint ptr %data88 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %data88, align 1
  %call.i163 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %65, i32 noundef 0) #7
  %66 = urem i32 %call.i163, 1000
  %mul.i164 = sub i32 %call.i163, %66
  %call.i165 = call ptr @ieee80211_get_channel_khz(ptr noundef nonnull %wiphy, i32 noundef %mul.i164) #7
  %67 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %msg2, align 4
  %data93 = getelementptr inbounds %struct.p80211msg_dot11req_scan_results, ptr %68, i32 0, i32 7, i32 3, i32 1
  %data94 = getelementptr inbounds %struct.p80211msg_dot11req_scan_results, ptr %68, i32 0, i32 14, i32 3
  %69 = ptrtoint ptr %data94 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %data94, align 1
  %conv95 = zext i32 %70 to i64
  %data96 = getelementptr inbounds %struct.p80211msg_dot11req_scan_results, ptr %68, i32 0, i32 29, i32 3
  %71 = ptrtoint ptr %data96 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %data96, align 1
  %conv97 = trunc i32 %72 to i16
  %data98 = getelementptr inbounds %struct.p80211msg_dot11req_scan_results, ptr %68, i32 0, i32 12, i32 3
  %73 = ptrtoint ptr %data98 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %data98, align 1
  %conv99 = trunc i32 %74 to i16
  %data101 = getelementptr inbounds %struct.p80211msg_dot11req_scan_results, ptr %68, i32 0, i32 5, i32 3
  %75 = ptrtoint ptr %data101 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %data101, align 1
  %77 = mul i32 %76, 100
  %mul = add i32 %77, -6553600
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #7
  %78 = call ptr @memset(ptr %49, i32 0, i32 40)
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i165, ptr %data.i, align 8
  %80 = ptrtoint ptr %scan_width.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %scan_width.i, align 4
  %81 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %mul, ptr %49, align 8
  %call.i166 = call ptr @cfg80211_inform_bss_data(ptr noundef nonnull %wiphy, ptr noundef nonnull %data.i, i32 noundef 0, ptr noundef %data93, i64 noundef %conv95, i16 noundef zeroext %conv97, i16 noundef zeroext %conv99, ptr noundef nonnull %ie_buf, i32 noundef %add, i32 noundef 3264) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #7
  %tobool103.not = icmp eq ptr %call.i166, null
  br i1 %tobool103.not, label %if.end72.exit_crit_edge, label %for.inc106

if.end72.exit_crit_edge:                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

for.inc106:                                       ; preds = %if.end72
  call void @cfg80211_put_bss(ptr noundef nonnull %wiphy, ptr noundef nonnull %call.i166) #7
  %inc107 = add nuw nsw i32 %i.1185, 1
  %exitcond.not = icmp eq i32 %inc107, %48
  br i1 %exitcond.not, label %for.inc106.exit_crit_edge, label %for.inc106.for.body61_crit_edge

for.inc106.for.body61_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body61

for.inc106.exit_crit_edge:                        ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then110:                                       ; preds = %for.body61
  %82 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %58, label %sw.default.i169 [
    i32 2, label %if.then110.exit_crit_edge
    i32 11, label %sw.bb1.i167
    i32 3, label %sw.bb2.i168
  ]

if.then110.exit_crit_edge:                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

sw.bb1.i167:                                      ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

sw.bb2.i168:                                      ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

sw.default.i169:                                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

exit:                                             ; preds = %sw.default.i169, %sw.bb2.i168, %sw.bb1.i167, %if.then110.exit_crit_edge, %for.inc106.exit_crit_edge, %if.end72.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %if.end55.exit_crit_edge, %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.then52.exit_crit_edge
  %tobool115 = phi i1 [ false, %sw.default.i169 ], [ true, %sw.bb2.i168 ], [ true, %sw.bb1.i167 ], [ true, %if.then110.exit_crit_edge ], [ false, %sw.default.i ], [ true, %sw.bb2.i ], [ true, %sw.bb1.i ], [ true, %if.then52.exit_crit_edge ], [ false, %if.end55.exit_crit_edge ], [ true, %if.end72.exit_crit_edge ], [ false, %for.inc106.exit_crit_edge ], [ false, %lor.lhs.false.exit_crit_edge ]
  %err.3 = phi i32 [ 0, %sw.default.i169 ], [ -95, %sw.bb2.i168 ], [ -5, %sw.bb1.i167 ], [ -22, %if.then110.exit_crit_edge ], [ 0, %sw.default.i ], [ -95, %sw.bb2.i ], [ -5, %sw.bb1.i ], [ -22, %if.then52.exit_crit_edge ], [ 0, %if.end55.exit_crit_edge ], [ -12, %if.end72.exit_crit_edge ], [ 0, %for.inc106.exit_crit_edge ], [ 0, %lor.lhs.false.exit_crit_edge ]
  %aborted = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 2
  %frombool = zext i1 %tobool115 to i8
  %83 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %frombool, ptr %aborted, align 2
  call void @cfg80211_scan_done(ptr noundef nonnull %request, ptr noundef nonnull %info) #7
  %84 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %scan_request, align 4
  %85 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %msg2, align 4
  call void @kfree(ptr noundef %86) #7
  br label %cleanup118

cleanup118:                                       ; preds = %exit, %if.end7.cleanup118_crit_edge, %if.then6, %if.end.cleanup118_crit_edge, %wiphy_priv.exit.cleanup118_crit_edge
  %retval.0 = phi i32 [ -95, %if.then6 ], [ %err.3, %exit ], [ -22, %wiphy_priv.exit.cleanup118_crit_edge ], [ -16, %if.end.cleanup118_crit_edge ], [ -12, %if.end7.cleanup118_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 46, ptr nonnull %ie_buf) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg2) #7
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %msg1) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_connect(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr nocapture noundef readonly %sme) #0 align 64 {
entry:
  %msg.i145 = alloca %struct.p80211msg_dot11req_mibset, align 4
  %msg.i141 = alloca %struct.p80211msg_dot11req_mibset, align 4
  %msg.i137 = alloca %struct.p80211msg_dot11req_mibset, align 4
  %msg.i133 = alloca %struct.p80211msg_dot11req_mibset, align 4
  %msg.i129 = alloca %struct.p80211msg_dot11req_mibset, align 4
  %msg.i125 = alloca %struct.p80211msg_dot11req_mibset, align 4
  %msg.i = alloca %struct.p80211msg_dot11req_mibset, align 4
  %msg_join = alloca %struct.p80211msg_lnxreq_autojoin, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %2 = ptrtoint ptr %sme to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sme, align 4
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %msg_join) #7
  %4 = call ptr @memset(ptr %msg_join, i32 255, i32 92)
  %ssid_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 5
  %5 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ssid_len, align 4
  %cipher_group = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %cipher_group to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cipher_group, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %10, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #7
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i) #7
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 432)
  %data1.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 129, ptr %msg.i, align 4
  %14 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 268439875, ptr %data1.i, align 4
  %data3.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3, i32 8
  %15 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i, ptr %data3.i, align 4
  %call.i124 = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool6.not = icmp eq i32 %call.i124, 0
  br i1 %tobool6.not, label %if.then.if.end8_crit_edge, label %if.then.exit_crit_edge

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %auth_type = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 6
  %16 = ptrtoint ptr %auth_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %auth_type, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %17, label %if.else24 [
    i32 0, label %if.end8.if.then13_crit_edge
    i32 8, label %land.lhs.true
    i32 1, label %if.end8.if.then21_crit_edge
  ]

if.end8.if.then21_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.end8.if.then13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

land.lhs.true:                                    ; preds = %if.end8
  %19 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %8, label %land.lhs.true.if.then13_crit_edge [
    i32 1027077, label %land.lhs.true.if.then21_crit_edge
    i32 1027073, label %land.lhs.true.if.then21_crit_edge149
  ]

land.lhs.true.if.then21_crit_edge149:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.then13:                                        ; preds = %land.lhs.true.if.then13_crit_edge, %if.end8.if.then13_crit_edge
  %data = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, ptr %msg_join, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %data, align 4
  br label %if.end27

if.then21:                                        ; preds = %land.lhs.true.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge149, %if.end8.if.then21_crit_edge
  %data23 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, ptr %msg_join, i32 0, i32 5, i32 3
  %21 = ptrtoint ptr %data23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %data23, align 4
  br label %if.end27

if.else24:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %17) #10
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.then21, %if.then13
  %22 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %8, label %if.else59 [
    i32 1027077, label %if.end27.if.then29_crit_edge
    i32 1027073, label %if.end27.if.then29_crit_edge150
  ]

if.end27.if.then29_crit_edge150:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.end27.if.then29_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.then29:                                        ; preds = %if.end27.if.then29_crit_edge, %if.end27.if.then29_crit_edge150
  %key = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 12
  %23 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %key, align 4
  %tobool30.not = icmp eq ptr %24, null
  br i1 %tobool30.not, label %if.then29.if.end50_crit_edge, label %if.then31

if.then29.if.end50_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then31:                                        ; preds = %if.then29
  %key_idx = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 14
  %25 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %key_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp32 = icmp ugt i8 %26, 3
  br i1 %cmp32, label %if.then31.cleanup_crit_edge, label %if.end35

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.then31
  %conv = zext i8 %26 to i32
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i125) #7
  %27 = getelementptr inbounds i8, ptr %msg.i125, i32 4
  %28 = call ptr @memset(ptr %27, i32 255, i32 432)
  %data1.i126 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i125, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %msg.i125 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 129, ptr %msg.i125, align 4
  %30 = ptrtoint ptr %data1.i126 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 402661761, ptr %data1.i126, align 4
  %data3.i127 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i125, i32 0, i32 3, i32 3, i32 8
  %31 = ptrtoint ptr %data3.i127 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %data3.i127, align 4
  %call.i128 = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i125) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i125) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool39.not = icmp eq i32 %call.i128, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.exit_crit_edge

if.end35.exit_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end41:                                         ; preds = %if.end35
  %32 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %key_idx, align 1
  %34 = add i8 %33, 1
  %35 = and i8 %34, 63
  %and = zext i8 %35 to i32
  %shl = shl nuw nsw i32 %and, 12
  %or44 = or i32 %shl, 201326849
  %key_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 13
  %36 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %key_len, align 4
  %38 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %key, align 4
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i129) #7
  %40 = getelementptr inbounds i8, ptr %msg.i129, i32 4
  %41 = call ptr @memset(ptr %40, i32 255, i32 432)
  %data1.i130 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i129, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %msg.i129 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 129, ptr %msg.i129, align 4
  %43 = ptrtoint ptr %data1.i130 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or44, ptr %data1.i130, align 4
  %data3.i131 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i129, i32 0, i32 3, i32 3, i32 8
  %44 = ptrtoint ptr %data3.i131 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %37, ptr %data3.i131, align 4
  %data6.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i129, i32 0, i32 3, i32 3, i32 9
  %conv.i = zext i8 %37 to i32
  %45 = call ptr @memcpy(ptr %data6.i, ptr %39, i32 %conv.i)
  %call.i132 = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i129) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i129) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool47.not = icmp eq i32 %call.i132, 0
  br i1 %tobool47.not, label %if.end41.if.end50_crit_edge, label %if.end41.exit_crit_edge

if.end41.exit_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end50:                                         ; preds = %if.end41.if.end50_crit_edge, %if.then29.if.end50_crit_edge
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i133) #7
  %46 = getelementptr inbounds i8, ptr %msg.i133, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 432)
  %data1.i134 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i133, i32 0, i32 3, i32 3
  %48 = ptrtoint ptr %msg.i133 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 129, ptr %msg.i133, align 4
  %49 = ptrtoint ptr %data1.i134 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 402657665, ptr %data1.i134, align 4
  %data3.i135 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i133, i32 0, i32 3, i32 3, i32 8
  %50 = ptrtoint ptr %data3.i135 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %data3.i135, align 4
  %call.i136 = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i133) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i133) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool52.not = icmp eq i32 %call.i136, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.exit_crit_edge

if.end50.exit_crit_edge:                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end54:                                         ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i137) #7
  %51 = getelementptr inbounds i8, ptr %msg.i137, i32 4
  %52 = call ptr @memset(ptr %51, i32 255, i32 432)
  %data1.i138 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i137, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %msg.i137 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 129, ptr %msg.i137, align 4
  %54 = ptrtoint ptr %data1.i138 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 402669953, ptr %data1.i138, align 4
  %data3.i139 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i137, i32 0, i32 3, i32 3, i32 8
  %55 = ptrtoint ptr %data3.i139 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %data3.i139, align 4
  %call.i140 = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i137) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i137) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool56.not = icmp eq i32 %call.i140, 0
  br i1 %tobool56.not, label %if.end54.if.end68_crit_edge, label %if.end54.exit_crit_edge

if.end54.exit_crit_edge:                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end54.if.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.else59:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i141) #7
  %56 = getelementptr inbounds i8, ptr %msg.i141, i32 4
  %57 = call ptr @memset(ptr %56, i32 255, i32 432)
  %data1.i142 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i141, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %msg.i141 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 129, ptr %msg.i141, align 4
  %59 = ptrtoint ptr %data1.i142 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 402657665, ptr %data1.i142, align 4
  %data3.i143 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i141, i32 0, i32 3, i32 3, i32 8
  %60 = ptrtoint ptr %data3.i143 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %data3.i143, align 4
  %call.i144 = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i141) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i141) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool61.not = icmp eq i32 %call.i144, 0
  br i1 %tobool61.not, label %if.end63, label %if.else59.exit_crit_edge

if.else59.exit_crit_edge:                         ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end63:                                         ; preds = %if.else59
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i145) #7
  %61 = getelementptr inbounds i8, ptr %msg.i145, i32 4
  %62 = call ptr @memset(ptr %61, i32 255, i32 432)
  %data1.i146 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i145, i32 0, i32 3, i32 3
  %63 = ptrtoint ptr %msg.i145 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 129, ptr %msg.i145, align 4
  %64 = ptrtoint ptr %data1.i146 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 402669953, ptr %data1.i146, align 4
  %data3.i147 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i145, i32 0, i32 3, i32 3, i32 8
  %65 = ptrtoint ptr %data3.i147 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %data3.i147, align 4
  %call.i148 = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i145) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i145) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool65.not = icmp eq i32 %call.i148, 0
  br i1 %tobool65.not, label %if.end63.if.end68_crit_edge, label %if.end63.exit_crit_edge

if.end63.exit_crit_edge:                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.end68:                                         ; preds = %if.end63.if.end68_crit_edge, %if.end54.if.end68_crit_edge
  %66 = ptrtoint ptr %msg_join to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 323, ptr %msg_join, align 4
  %data69 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, ptr %msg_join, i32 0, i32 3, i32 3
  %data70 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, ptr %msg_join, i32 0, i32 3, i32 3, i32 1
  %ssid71 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 4
  %67 = ptrtoint ptr %ssid71 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ssid71, align 4
  %69 = call ptr @memcpy(ptr %data70, ptr %68, i32 %6)
  %conv72 = trunc i32 %6 to i8
  %70 = ptrtoint ptr %data69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv72, ptr %data69, align 4
  %call75 = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg_join) #7
  br label %exit

exit:                                             ; preds = %if.end68, %if.end63.exit_crit_edge, %if.else59.exit_crit_edge, %if.end54.exit_crit_edge, %if.end50.exit_crit_edge, %if.end41.exit_crit_edge, %if.end35.exit_crit_edge, %if.then.exit_crit_edge
  %result.0 = phi i32 [ %call.i124, %if.then.exit_crit_edge ], [ %call.i128, %if.end35.exit_crit_edge ], [ %call.i132, %if.end41.exit_crit_edge ], [ %call.i136, %if.end50.exit_crit_edge ], [ %call.i140, %if.end54.exit_crit_edge ], [ %call75, %if.end68 ], [ %call.i144, %if.else59.exit_crit_edge ], [ %call.i148, %if.end63.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %tobool76.not = icmp eq i32 %result.0, 0
  %spec.select = select i1 %tobool76.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then31.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %exit ], [ -22, %if.then31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %msg_join) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_disconnect(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i16 noundef zeroext %reason_code) #0 align 64 {
entry:
  %msg_join = alloca %struct.p80211msg_lnxreq_autojoin, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %msg_join) #7
  %2 = getelementptr inbounds i8, ptr %msg_join, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 88)
  %4 = ptrtoint ptr %msg_join to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 323, ptr %msg_join, align 4
  %data = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, ptr %msg_join, i32 0, i32 3, i32 3
  %data1 = getelementptr inbounds %struct.p80211msg_lnxreq_autojoin, ptr %msg_join, i32 0, i32 3, i32 3, i32 1
  %5 = call ptr @memcpy(ptr %data1, ptr @.str.27, i32 3)
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %data, align 4
  %call = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg_join) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %msg_join) #7
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prism2_join_ibss(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %params) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prism2_leave_ibss(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_set_wiphy_params(ptr noundef readonly %wiphy, i32 noundef %changed) #0 align 64 {
entry:
  %msg.i32 = alloca %struct.p80211msg_dot11req_mibset, align 4
  %msg.i = alloca %struct.p80211msg_dot11req_mibset, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !127

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !128
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %and = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %wiphy_priv.exit.if.end8_crit_edge, label %if.then

wiphy_priv.exit.if.end8_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %wiphy_priv.exit
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 36
  %2 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rts_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  %. = select i1 %cmp, i32 2347, i32 %3
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 432)
  %data1.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 129, ptr %msg.i, align 4
  %7 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 402661442, ptr %data1.i, align 4
  %data3.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3, i32 8
  %8 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %., ptr %data3.i, align 4
  %call.i = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.then.if.end8_crit_edge, label %if.then.exit_crit_edge

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %wiphy_priv.exit.if.end8_crit_edge
  %and9 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.exit_crit_edge, label %if.then11

if.end8.exit_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %frag_threshold = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 35
  %9 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frag_threshold, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp12 = icmp eq i32 %10, -1
  %.31 = select i1 %cmp12, i32 2346, i32 %10
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i32) #7
  %11 = getelementptr inbounds i8, ptr %msg.i32, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 432)
  %data1.i33 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i32, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %msg.i32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 129, ptr %msg.i32, align 4
  %14 = ptrtoint ptr %data1.i33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 402673730, ptr %data1.i33, align 4
  %data3.i34 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i32, i32 0, i32 3, i32 3, i32 8
  %15 = ptrtoint ptr %data3.i34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.31, ptr %data3.i34, align 4
  %call.i35 = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i32) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool18.not = icmp eq i32 %call.i35, 0
  %spec.select = select i1 %tobool18.not, i32 0, i32 -14
  br label %exit

exit:                                             ; preds = %if.then11, %if.end8.exit_crit_edge, %if.then.exit_crit_edge
  %err.0 = phi i32 [ 0, %if.end8.exit_crit_edge ], [ -14, %if.then.exit_crit_edge ], [ %spec.select, %if.then11 ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_set_tx_power(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %wdev, i32 noundef %type, i32 noundef %mbm) #0 align 64 {
entry:
  %msg.i = alloca %struct.p80211msg_dot11req_mibset, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !127

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !128
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %div = sdiv i32 %mbm, 100
  %data.0 = select i1 %cmp, i32 30, i32 %div
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 432)
  %data1.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 129, ptr %msg.i, align 4
  %5 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 402694339, ptr %data1.i, align 4
  %data3.i = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %msg.i, i32 0, i32 3, i32 3, i32 8
  %6 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %data.0, ptr %data3.i, align 4
  %call.i = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %err.0 = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_get_tx_power(ptr noundef readonly %wiphy, ptr nocapture noundef readnone %wdev, ptr nocapture noundef writeonly %dbm) #0 align 64 {
entry:
  %msg = alloca %struct.p80211msg_dot11req_mibget, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !127

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !128
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 432)
  %data = getelementptr inbounds %struct.p80211msg_dot11req_mibget, ptr %msg, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65, ptr %msg, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 402694339, ptr %data, align 4
  %call2 = call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef nonnull %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %wiphy_priv.exit.exit_crit_edge

wiphy_priv.exit.exit_crit_edge:                   ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %data3 = getelementptr inbounds %struct.p80211msg_dot11req_mibget, ptr %msg, i32 0, i32 3, i32 3, i32 8
  %6 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data3, align 4
  %8 = ptrtoint ptr %dbm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dbm, align 4
  br label %exit

exit:                                             ; preds = %if.end, %wiphy_priv.exit.exit_crit_edge
  %err.0 = phi i32 [ 0, %if.end ], [ -14, %wiphy_priv.exit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %msg) #7
  ret i32 %err.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p80211req_dorequest(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @p80211knetdev_init(ptr nocapture noundef readnone %netdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p80211knetdev_open(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %msdstate = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %msdstate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msdstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp.not = icmp eq i32 %3, 7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %open = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %open, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %call = tail call i32 %5(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %netdev5 = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %netdev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev5, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %state = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ %call, %if.then1.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p80211knetdev_stop(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %close = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %close, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %result.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %netdev2 = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev2, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %state = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state, align 4
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p80211knetdev_hard_start_xmit(ptr noundef %skb, ptr noundef %netdev) #0 align 64 {
entry:
  %p80211_hdr = alloca %struct.p80211_hdr, align 2
  %p80211_wep = alloca %struct.p80211_metawep, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %p80211_hdr) #7
  %2 = call ptr @memset(ptr %p80211_hdr, i32 255, i32 30)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %p80211_wep) #7
  %3 = getelementptr inbounds i8, ptr %p80211_wep, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %3, align 4
  %5 = ptrtoint ptr %p80211_wep to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %p80211_wep, align 4
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end2, label %if.end.failed_crit_edge

if.end.failed_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end2:                                          ; preds = %if.end
  %8 = call ptr @memset(ptr %p80211_hdr, i32 0, i32 30)
  %9 = call ptr @memset(ptr %p80211_wep, i32 0, i32 12)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end13, label %do.body4

do.body4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211knetdev_hard_start_xmit, %if.then9)) #7
          to label %failed [label %if.then9], !srcloc !126

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug354, ptr noundef %netdev, ptr noundef nonnull @.str.29) #7
  br label %failed

if.end13:                                         ; preds = %if.end2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %macmode = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %macmode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %macmode, align 4
  %.off = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end13.sw.epilog_crit_edge, label %sw.default

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %17)
  %cmp14.not = icmp eq i16 %17, 25
  br i1 %cmp14.not, label %sw.default.sw.epilog_crit_edge, label %if.then16

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then16:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %netdev17 = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 26
  %18 = ptrtoint ptr %netdev17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev17, align 4
  %_tx.i.i199 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i199 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i199, align 128
  %state.i.i200 = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i200) #7
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %netdev, ptr noundef nonnull @.str.30) #10
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %22 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %failed

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge
  %protocol19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %24 = ptrtoint ptr %protocol19 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %protocol19, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %25)
  %cmp21 = icmp eq i16 %25, 25
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %sw.epilog
  %call24 = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call24, label %if.end26, label %if.then23.failed_crit_edge

if.then23.failed_crit_edge:                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end26:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %data27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data27, align 4
  %28 = call ptr @memcpy(ptr %p80211_hdr, ptr %27, i32 30)
  %call28 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 30) #7
  br label %if.end54

if.else:                                          ; preds = %sw.epilog
  %ethconv = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %ethconv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ethconv, align 4
  %call29 = call i32 @skb_ether_to_p80211(ptr noundef %1, i32 noundef %30, ptr noundef nonnull %skb, ptr noundef nonnull %p80211_hdr, ptr noundef nonnull %p80211_wep) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.else.if.end54_crit_edge, label %do.body34

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.body34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211knetdev_hard_start_xmit, %if.then46)) #7
          to label %failed [label %if.then46], !srcloc !126

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %ethconv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ethconv, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug355, ptr noundef %netdev, ptr noundef nonnull @.str.31, i32 noundef %32) #7
  br label %failed

if.end54:                                         ; preds = %if.else.if.end54_crit_edge, %if.end26
  %txframe = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 14
  %33 = ptrtoint ptr %txframe to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %txframe, align 4
  %tobool55.not = icmp eq ptr %34, null
  br i1 %tobool55.not, label %if.end54.failed_crit_edge, label %if.end57

if.end54.failed_crit_edge:                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end57:                                         ; preds = %if.end54
  %35 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 12
  %38 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp.not.i.i = icmp eq i32 %39, %37
  br i1 %cmp.not.i.i, label %if.end57.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end57.netif_trans_update.exit_crit_edge:       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 %37, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end57.netif_trans_update.exit_crit_edge
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 1
  %41 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_packets, align 4
  %inc59 = add i32 %42, 1
  store i32 %inc59, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 3
  %45 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %46, %44
  store i32 %add, ptr %tx_bytes, align 4
  %47 = ptrtoint ptr %txframe to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %txframe, align 4
  %call62 = call i32 %48(ptr noundef %1, ptr noundef nonnull %skb, ptr noundef nonnull %p80211_hdr, ptr noundef nonnull %p80211_wep) #7
  %49 = zext i32 %call62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call62, label %do.body115 [
    i32 0, label %if.then65
    i32 1, label %do.body72
    i32 2, label %do.body95
  ]

if.then65:                                        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  %netdev66 = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 26
  %50 = ptrtoint ptr %netdev66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %netdev66, align 4
  %_tx.i.i202 = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 103
  %52 = ptrtoint ptr %_tx.i.i202 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %_tx.i.i202, align 128
  call void @netif_tx_wake_queue(ptr noundef %53) #7
  br label %failed

do.body72:                                        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211knetdev_hard_start_xmit, %if.then84)) #7
          to label %failed [label %if.then84], !srcloc !126

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug356, ptr noundef %netdev, ptr noundef nonnull @.str.32) #7
  br label %failed

do.body95:                                        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211knetdev_hard_start_xmit, %if.then107)) #7
          to label %failed [label %if.then107], !srcloc !126

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug357, ptr noundef %netdev, ptr noundef nonnull @.str.33) #7
  br label %failed

do.body115:                                       ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211knetdev_hard_start_xmit, %if.then127)) #7
          to label %failed [label %if.then127], !srcloc !126

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug358, ptr noundef %netdev, ptr noundef nonnull @.str.34) #7
  br label %failed

failed:                                           ; preds = %if.then127, %do.body115, %if.then107, %do.body95, %if.then84, %do.body72, %if.then65, %if.end54.failed_crit_edge, %if.then46, %do.body34, %if.then23.failed_crit_edge, %if.then16, %if.then9, %do.body4, %if.end.failed_crit_edge
  %tobool145.not = phi i1 [ true, %if.then65 ], [ true, %if.then16 ], [ false, %if.end.failed_crit_edge ], [ false, %if.then9 ], [ false, %if.then23.failed_crit_edge ], [ false, %if.then46 ], [ false, %if.end54.failed_crit_edge ], [ true, %if.then84 ], [ false, %if.then107 ], [ false, %if.then127 ], [ false, %do.body4 ], [ false, %do.body34 ], [ true, %do.body72 ], [ false, %do.body95 ], [ false, %do.body115 ]
  %result.0 = phi i32 [ 0, %if.then65 ], [ 0, %if.then16 ], [ 1, %if.end.failed_crit_edge ], [ 1, %if.then9 ], [ 1, %if.then23.failed_crit_edge ], [ 1, %if.then46 ], [ 1, %if.end54.failed_crit_edge ], [ 0, %if.then84 ], [ 16, %if.then107 ], [ 16, %if.then127 ], [ 1, %do.body4 ], [ 1, %do.body34 ], [ 0, %do.body72 ], [ 16, %do.body95 ], [ 16, %do.body115 ]
  %54 = ptrtoint ptr %p80211_wep to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %p80211_wep, align 4
  %tobool137.not = icmp eq ptr %55, null
  br i1 %tobool137.not, label %failed.if.end144_crit_edge, label %land.lhs.true

failed.if.end144_crit_edge:                       ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

land.lhs.true:                                    ; preds = %failed
  %data139 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %56 = ptrtoint ptr %data139 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data139, align 4
  %cmp140.not = icmp eq ptr %55, %57
  br i1 %cmp140.not, label %land.lhs.true.if.end144_crit_edge, label %if.then142

land.lhs.true.if.end144_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

if.then142:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_sensitive(ptr noundef nonnull %55) #7
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %land.lhs.true.if.end144_crit_edge, %failed.if.end144_crit_edge
  br i1 %tobool145.not, label %if.then146, label %if.end144.cleanup_crit_edge

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then146:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef nonnull %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then146, %if.end144.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %result.0, %if.then146 ], [ %result.0, %if.end144.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %p80211_wep) #7
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %p80211_hdr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p80211knetdev_set_multicast_list(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %set_multicast_list = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %set_multicast_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_multicast_list, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %1, ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p80211knetdev_set_mac_address(ptr noundef %dev, ptr noundef %addr) #0 align 64 {
entry:
  %dot11req = alloca %struct.p80211msg_dot11req_mibset, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 436, ptr nonnull %dot11req) #7
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mibattribute = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %dot11req, i32 0, i32 3
  %data = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %dot11req, i32 0, i32 3, i32 3
  %resultcode1 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %dot11req, i32 0, i32 4
  %2 = getelementptr inbounds i8, ptr %dot11req, i32 20
  %3 = call ptr @memset(ptr %2, i32 0, i32 404)
  %4 = ptrtoint ptr %dot11req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 129, ptr %dot11req, align 4
  %msglen = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %dot11req, i32 0, i32 1
  %5 = ptrtoint ptr %msglen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 436, ptr %msglen, align 4
  %devname = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %dot11req, i32 0, i32 2
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %6 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ml_priv, align 8
  %name = getelementptr inbounds %struct.wlandevice, ptr %7, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %devname, ptr %name, i32 15)
  %9 = ptrtoint ptr %mibattribute to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4225, ptr %mibattribute, align 4
  %len = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %dot11req, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 392, ptr %len, align 2
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 402657346, ptr %data, align 4
  %len5 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %dot11req, i32 0, i32 3, i32 3, i32 6
  %12 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 7, ptr %len5, align 2
  %data6 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %dot11req, i32 0, i32 3, i32 3, i32 8
  %13 = ptrtoint ptr %data6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 6, ptr %data6, align 4
  %data9 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %dot11req, i32 0, i32 3, i32 3, i32 9
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %data9, ptr %sa_data, i32 6)
  %15 = ptrtoint ptr %resultcode1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8321, ptr %resultcode1, align 4
  %status12 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %dot11req, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %status12 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %status12, align 4
  %len13 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %dot11req, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %len13 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 4, ptr %len13, align 2
  %data14 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, ptr %dot11req, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %data14, align 4
  %call16 = call i32 @p80211req_dorequest(ptr noundef %7, ptr noundef nonnull %dot11req) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp.not = icmp eq i32 %call16, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then19_crit_edge

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end
  %19 = ptrtoint ptr %data14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp18.not = icmp eq i32 %20, 1
  br i1 %cmp18.not, label %if.else, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.end.if.then19_crit_edge
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -99, %if.then19 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 436, ptr nonnull %dot11req) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p80211knetdev_siocdevprivate(ptr noundef %dev, ptr nocapture noundef readonly %ifr, ptr noundef %data, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @p80211knetdev_siocdevprivate.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@p80211knetdev_siocdevprivate, %if.then)) #7
          to label %do.end5 [label %if.then], !srcloc !126

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %len = getelementptr inbounds %struct.p80211ioctl_req, ptr %ifr, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %len, align 1
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @p80211knetdev_siocdevprivate.__UNIQUE_ID_ddebug359, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %cmd, i32 noundef %conv) #7
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %magic = getelementptr inbounds %struct.p80211ioctl_req, ptr %ifr, i32 0, i32 2
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %magic, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1244481101, i32 %5)
  %cmp.not = icmp eq i32 %5, 1244481101
  br i1 %cmp.not, label %if.end11, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %do.end5
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %cmd, label %if.then17 [
    i32 35312, label %if.end11.cleanup_crit_edge
    i32 35313, label %if.end19
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %len20 = getelementptr inbounds %struct.p80211ioctl_req, ptr %ifr, i32 0, i32 3
  %7 = ptrtoint ptr %len20 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %len20, align 1
  %conv21 = zext i16 %8 to i32
  %call22 = tail call ptr @memdup_user(ptr noundef %data, i32 noundef %conv21) #7
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %call27 = tail call i32 @p80211req_dorequest(ptr noundef %1, ptr noundef %call22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then30:                                        ; preds = %if.end26
  %10 = ptrtoint ptr %len20 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %len20, align 1
  %conv32 = zext i16 %11 to i32
  tail call void @__check_object_size(ptr noundef %call22, i32 noundef %conv32, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then30.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then30.copy_to_user.exit_crit_edge:            ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then30
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 %conv32, i32 -1226833920) #12, !srcloc !129
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %call22, i32 noundef %conv32) #7
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef %call22, i32 noundef %conv32) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then30.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %conv32, %if.then30.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %conv32, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool34.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool34.not, i32 0, i32 -14
  br label %if.end37

if.end37:                                         ; preds = %copy_to_user.exit, %if.end26.if.end37_crit_edge
  %result.0 = phi i32 [ %call27, %if.end26.if.end37_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @kfree(ptr noundef %call22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then24, %if.then17, %if.end11.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %result.1 = phi i32 [ -22, %if.then17 ], [ %9, %if.then24 ], [ %result.0, %if.end37 ], [ -22, %do.end5.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %result.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p80211knetdev_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %tx_timeout = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %tx_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_timeout, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %1) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %nsdname = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nsdname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsdname, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.41, ptr noundef %5) #10
  %netdev2 = getelementptr inbounds %struct.wlandevice, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev2, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %9) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ether_to_p80211(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !63, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !106, !107, !108, !110, !111, !113, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @wlan_watchdog, !1, !"wlan_watchdog", i1 false, i1 false}
!1 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 107, i32 5}
!2 = !{ptr @__param_wlan_watchdog, !3, !"__param_wlan_watchdog", i1 false, i1 false}
!3 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 108, i32 1}
!4 = !{ptr @__UNIQUE_ID_wlan_watchdogtype349, !3, !"__UNIQUE_ID_wlan_watchdogtype349", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_wlan_watchdog350, !6, !"__UNIQUE_ID_wlan_watchdog350", i1 false, i1 false}
!6 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 109, i32 1}
!7 = !{ptr @wlan_wext_write, !8, !"wlan_wext_write", i1 false, i1 false}
!8 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 111, i32 5}
!9 = !{ptr @__param_wlan_wext_write, !10, !"__param_wlan_wext_write", i1 false, i1 false}
!10 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 112, i32 1}
!11 = !{ptr @__UNIQUE_ID_wlan_wext_writetype351, !10, !"__UNIQUE_ID_wlan_wext_writetype351", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_wlan_wext_write352, !13, !"__UNIQUE_ID_wlan_wext_write352", i1 false, i1 false}
!13 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 113, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 680, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wlan_setup._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @wlan_setup._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 685, i32 11}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 688, i32 3}
!26 = !{ptr @wlan_setup._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wlan_setup._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__param_str_wlan_watchdog, !3, !"__param_str_wlan_watchdog", i1 false, i1 false}
!29 = !{ptr @__param_str_wlan_wext_write, !10, !"__param_str_wlan_wext_write", i1 false, i1 false}
!30 = !{ptr @skb_queue_head_init.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 262, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @p80211_convert_to_ether.__UNIQUE_ID_ddebug353, !34, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 880, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @p80211_rx_typedrop.__UNIQUE_ID_ddebug360, !39, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 942, i32 3}
!44 = !{ptr @p80211_rx_typedrop.__UNIQUE_ID_ddebug361, !43, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 994, i32 4}
!47 = !{ptr @p80211_rx_typedrop.__UNIQUE_ID_ddebug362, !46, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 998, i32 4}
!50 = !{ptr @p80211_rx_typedrop.__UNIQUE_ID_ddebug363, !49, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 1002, i32 4}
!53 = !{ptr @p80211_rx_typedrop.__UNIQUE_ID_ddebug364, !52, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 1006, i32 4}
!56 = !{ptr @p80211_rx_typedrop.__UNIQUE_ID_ddebug365, !55, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!57 = !{ptr @prism2_usb_cfg_ops, !58, !"prism2_usb_cfg_ops", i1 false, i1 false}
!58 = !{!"../drivers/staging/wlan-ng/cfg80211.c", i32 657, i32 34}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/wlan-ng/cfg80211.c", i32 127, i32 20}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/wlan-ng/cfg80211.c", i32 157, i32 3}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @prism2_add_key.__UNIQUE_ID_ddebug348, !62, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/wlan-ng/cfg80211.c", i32 221, i32 52}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/wlan-ng/cfg80211.c", i32 300, i32 19}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/wlan-ng/cfg80211.c", i32 469, i32 8}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/wlan-ng/cfg80211.c", i32 555, i32 34}
!74 = !{ptr @prism2_channels, !75, !"prism2_channels", i1 false, i1 false}
!75 = !{!"../drivers/staging/wlan-ng/cfg80211.c", i32 7, i32 39}
!76 = !{ptr @prism2_rates, !77, !"prism2_rates", i1 false, i1 false}
!77 = !{!"../drivers/staging/wlan-ng/cfg80211.c", i32 24, i32 36}
!78 = !{ptr @prism2_wiphy_privid, !79, !"prism2_wiphy_privid", i1 false, i1 false}
!79 = !{!"../drivers/staging/wlan-ng/cfg80211.c", i32 48, i32 27}
!80 = !{ptr @prism2_cipher_suites, !81, !"prism2_cipher_suites", i1 false, i1 false}
!81 = !{!"../drivers/staging/wlan-ng/cfg80211.c", i32 32, i32 18}
!82 = !{ptr @p80211_netdev_ops, !83, !"p80211_netdev_ops", i1 false, i1 false}
!83 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 625, i32 36}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 347, i32 3}
!86 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug354, !85, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 367, i32 26}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 389, i32 4}
!92 = !{ptr @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug355, !91, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 415, i32 3}
!95 = !{ptr @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug356, !94, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 421, i32 3}
!98 = !{ptr @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug357, !97, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 425, i32 3}
!101 = !{ptr @p80211knetdev_hard_start_xmit.__UNIQUE_ID_ddebug358, !100, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 615, i32 19}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 501, i32 2}
!106 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @p80211knetdev_siocdevprivate.__UNIQUE_ID_ddebug359, !105, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!110 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/staging/wlan-ng/p80211netdev.c", i32 1027, i32 23}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i64 2148980788, i64 2148980793, i64 2148980806, i64 2148980850, i64 2148980884, i64 2148980905}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{i64 2157083891, i64 2157084379, i64 2157083928, i64 2157083984, i64 2157084018, i64 2157084042, i64 2157084083, i64 2157084104, i64 2157084132, i64 2157084166}
!129 = !{i64 2152589688, i64 2152589713}
