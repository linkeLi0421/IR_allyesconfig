; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/virt_wifi.c_pt.bc'
source_filename = "../drivers/net/wireless/virt_wifi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.24 }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.132 = type { i8, i8, [8 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.122, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.possible_net_t = type { ptr }
%struct.anon.122 = type { i64, i64, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.125, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.125 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.123, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.123 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.124 }
%union.anon.124 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.virt_wifi_netdev_priv = type { %struct.delayed_work, ptr, ptr, i32, i32, [6 x i8], i8, i8, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.virt_wifi_wiphy_priv = type { %struct.delayed_work, ptr, i8 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }

@virt_wifi_link_ops = internal global { %struct.rtnl_link_ops, [52 x i8] } { %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 128, ptr null, ptr @virt_wifi_setup, i8 0, i32 0, ptr null, ptr null, ptr @virt_wifi_newlink, ptr null, ptr @virt_wifi_dellink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@common_wiphy = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@virt_wifi_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @virt_wifi_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_virt_wifi__349_691_virt_wifi_init_module6 = internal global ptr @virt_wifi_init_module, section ".initcall6.init", align 4
@__exitcall_virt_wifi_cleanup_module = internal global ptr @virt_wifi_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file350 = internal constant [46 x i8] c"virt_wifi.file=drivers/net/wireless/virt_wifi\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [25 x i8] c"virt_wifi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author352 = internal constant [57 x i8] c"virt_wifi.author=Cody Schuffelen <schuffelen@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description353 = internal constant [72 x i8] c"virt_wifi.description=Driver for a wireless wrapper of ethernet devices\00", section ".modinfo", align 1
@__UNIQUE_ID_alias354 = internal constant [36 x i8] c"virt_wifi.alias=rtnl-link-virt_wifi\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"virt_wifi\00", [22 x i8] zeroinitializer }, align 32
@virt_wifi_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @virt_wifi_net_device_open, ptr @virt_wifi_net_device_stop, ptr @virt_wifi_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virt_wifi_net_device_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@__const.virt_wifi_cancel_scan.scan_info = private unnamed_addr constant { i64, [6 x i8], i8, [1 x i8] } { i64 0, [6 x i8] zeroinitializer, i8 1, [1 x i8] zeroinitializer }, align 8
@virt_wifi_newlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 535, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can't netdev_rx_handler_register: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"virt_wifi_newlink\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/wireless/virt_wifi.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virt_wifi_newlink._entry_ptr = internal global ptr @virt_wifi_newlink._entry, section ".printk_index", align 4
@virt_wifi_newlink._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 556, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't register_netdevice: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@virt_wifi_newlink._entry_ptr.8 = internal global ptr @virt_wifi_newlink._entry.6, section ".printk_index", align 4
@virt_wifi_newlink._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 563, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't netdev_upper_dev_link: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@virt_wifi_newlink._entry_ptr.11 = internal global ptr @virt_wifi_newlink._entry.9, section ".printk_index", align 4
@virt_wifi_newlink.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&priv->connect)->work)\00", [53 x i8] zeroinitializer }, align 32
@virt_wifi_newlink.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&priv->connect)->timer\00", [39 x i8] zeroinitializer }, align 32
@virt_wifi_rx_handler.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@virt_wifi_rx_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't skb_share_check\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"virt_wifi_rx_handler\00", [43 x i8] zeroinitializer }, align 32
@virt_wifi_rx_handler._entry_ptr = internal global ptr @virt_wifi_rx_handler._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fake_router_bssid = internal global [6 x i8] zeroinitializer, section ".data..ro_after_init", align 1
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s called with null wiphy\00", [38 x i8] zeroinitializer }, align 32
@__func__.virt_wifi_destroy_wiphy = private unnamed_addr constant [24 x i8] c"virt_wifi_destroy_wiphy\00", align 1
@virt_wifi_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@virt_wifi_cfg80211_ops = internal constant { %struct.cfg80211_ops, [108 x i8] } { %struct.cfg80211_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virt_wifi_get_station, ptr @virt_wifi_dump_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virt_wifi_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virt_wifi_connect, ptr null, ptr @virt_wifi_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [108 x i8] zeroinitializer }, align 32
@virt_wifi_make_wiphy.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&priv->scan_result)->work)\00", [49 x i8] zeroinitializer }, align 32
@virt_wifi_make_wiphy.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&priv->scan_result)->timer\00", [35 x i8] zeroinitializer }, align 32
@virt_wifi_get_station._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 312, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_station\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"virt_wifi_get_station\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@virt_wifi_get_station._entry_ptr = internal global ptr @virt_wifi_get_station._entry, section ".printk_index", align 4
@virt_wifi_dump_station._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 337, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dump_station\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"virt_wifi_dump_station\00", [41 x i8] zeroinitializer }, align 32
@virt_wifi_dump_station._entry_ptr = internal global ptr @virt_wifi_dump_station._entry, section ".printk_index", align 4
@virt_wifi_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 168, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"scan\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"virt_wifi_scan\00", [17 x i8] zeroinitializer }, align 32
@virt_wifi_scan._entry_ptr = internal global ptr @virt_wifi_scan._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@virt_wifi_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 243, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"connect\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"virt_wifi_connect\00", [46 x i8] zeroinitializer }, align 32
@virt_wifi_connect._entry_ptr = internal global ptr @virt_wifi_connect._entry, section ".printk_index", align 4
@virt_wifi_inform_bss.ssid = internal constant { %struct.anon.132, [22 x i8] } { %struct.anon.132 { i8 0, i8 8, [8 x i8] c"VirtWifi" }, [22 x i8] zeroinitializer }, align 32
@channel_5ghz = internal global { %struct.ieee80211_channel, [40 x i8] } { %struct.ieee80211_channel { i32 1, i32 5240, i16 0, i16 5240, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@virt_wifi_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 296, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disconnect\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"virt_wifi_disconnect\00", [43 x i8] zeroinitializer }, align 32
@virt_wifi_disconnect._entry_ptr = internal global ptr @virt_wifi_disconnect._entry, section ".printk_index", align 4
@channel_2ghz = internal global { %struct.ieee80211_channel, [40 x i8] } { %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 2432, i32 0, i32 0, i32 20, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@bitrates_2ghz = internal global { [7 x %struct.ieee80211_rate], [44 x i8] } { [7 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 0, i16 0 }], [44 x i8] zeroinitializer }, align 32
@band_2ghz = internal global { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, [36 x i8] } { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr } { ptr @channel_2ghz, ptr @bitrates_2ghz, i32 0, i32 1, i32 7, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 4210, i8 1, i8 3, i8 6, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] } { <{ i8, i8, [8 x i8] }> <{ i8 -1, i8 -1, [8 x i8] zeroinitializer }>, i16 0, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@bitrates_5ghz = internal global { [3 x %struct.ieee80211_rate], [60 x i8] } { [3 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 60, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 0, i16 0 }], [60 x i8] zeroinitializer }, align 32
@band_5ghz = internal global { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, [36 x i8] } { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr } { ptr @channel_5ghz, ptr @bitrates_5ghz, i32 1, i32 1, i32 3, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 4210, i8 1, i8 3, i8 6, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] } { <{ i8, i8, [8 x i8] }> <{ i8 -1, i8 -1, [8 x i8] zeroinitializer }>, i16 0, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, %struct.ieee80211_sta_vht_cap { i8 1, i32 58722298, %struct.ieee80211_vht_mcs_info { i16 -21846, i16 0, i16 -21846, i16 0 } }, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"virt_wifi_link_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 608, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"common_wiphy\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 18, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"virt_wifi_notifier\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 648, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 609, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"virt_wifi_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 459, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 534, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 555, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 562, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 571, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 489, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 497, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 397, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 634, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant [23 x i8] c"virt_wifi_cfg80211_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 346, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 381, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 312, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 337, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 168, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 243, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [5 x i8] c"ssid\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 147, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant [13 x i8] c"channel_5ghz\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 65, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 296, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [13 x i8] c"channel_2ghz\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 26, i32 33 }
@___asan_gen_.184 = private unnamed_addr constant [14 x i8] c"bitrates_2ghz\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 33, i32 30 }
@___asan_gen_.187 = private unnamed_addr constant [10 x i8] c"band_2ghz\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 43, i32 40 }
@___asan_gen_.190 = private unnamed_addr constant [14 x i8] c"bitrates_5ghz\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 72, i32 30 }
@___asan_gen_.193 = private unnamed_addr constant [10 x i8] c"band_5ghz\00", align 1
@___asan_gen_.194 = private constant [36 x i8] c"../drivers/net/wireless/virt_wifi.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 96, i32 40 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_alias354, ptr @__UNIQUE_ID_author352, ptr @__UNIQUE_ID_description353, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_virt_wifi_cleanup_module, ptr @__initcall__kmod_virt_wifi__349_691_virt_wifi_init_module6, ptr @virt_wifi_cleanup_module, ptr @virt_wifi_connect._entry, ptr @virt_wifi_connect._entry_ptr, ptr @virt_wifi_disconnect._entry, ptr @virt_wifi_disconnect._entry_ptr, ptr @virt_wifi_dump_station._entry, ptr @virt_wifi_dump_station._entry_ptr, ptr @virt_wifi_get_station._entry, ptr @virt_wifi_get_station._entry_ptr, ptr @virt_wifi_newlink._entry, ptr @virt_wifi_newlink._entry.6, ptr @virt_wifi_newlink._entry.9, ptr @virt_wifi_newlink._entry_ptr, ptr @virt_wifi_newlink._entry_ptr.11, ptr @virt_wifi_newlink._entry_ptr.8, ptr @virt_wifi_rx_handler._entry, ptr @virt_wifi_rx_handler._entry_ptr, ptr @virt_wifi_scan._entry, ptr @virt_wifi_scan._entry_ptr, ptr @virt_wifi_link_ops, ptr @common_wiphy, ptr @virt_wifi_notifier, ptr @.str, ptr @virt_wifi_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @virt_wifi_newlink.__key, ptr @.str.12, ptr @virt_wifi_newlink.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @virt_wifi_cfg80211_ops, ptr @virt_wifi_make_wiphy.__key, ptr @.str.21, ptr @virt_wifi_make_wiphy.__key.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @virt_wifi_inform_bss.ssid, ptr @channel_5ghz, ptr @.str.33, ptr @.str.34, ptr @channel_2ghz, ptr @bitrates_2ghz, ptr @band_2ghz, ptr @bitrates_5ghz, ptr @band_5ghz], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_link_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @common_wiphy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_newlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_newlink._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_newlink._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_newlink.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_newlink.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_rx_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_cfg80211_ops to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_make_wiphy.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_make_wiphy.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_get_station._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_dump_station._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_inform_bss.ssid to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_5ghz to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_wifi_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_2ghz to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitrates_2ghz to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @band_2ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitrates_5ghz to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @band_5ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virt_wifi_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtnl_link_unregister(ptr noundef nonnull @virt_wifi_link_ops) #8
  %0 = load ptr, ptr @common_wiphy, align 4
  tail call fastcc void @virt_wifi_destroy_wiphy(ptr noundef %0)
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @virt_wifi_notifier) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virt_wifi_destroy_wiphy(ptr noundef %wiphy) unnamed_addr #2 align 64 {
entry:
  %scan_info.i = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wiphy, null
  br i1 %tobool.not, label %do.end, label %wiphy_priv.exit.i, !prof !118

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 397, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.virt_wifi_destroy_wiphy) #8
  br label %cleanup

wiphy_priv.exit.i:                                ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %being_deleted = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 3
  %0 = ptrtoint ptr %being_deleted to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %being_deleted, align 4
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %priv.i) #8
  %scan_request.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 2, i32 2
  %1 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %scan_request.i, align 4
  %tobool.not.i34 = icmp eq ptr %2, null
  br i1 %tobool.not.i34, label %wiphy_priv.exit.i.virt_wifi_cancel_scan.exit_crit_edge, label %if.then.i

wiphy_priv.exit.i.virt_wifi_cancel_scan.exit_crit_edge: ; preds = %wiphy_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %virt_wifi_cancel_scan.exit

if.then.i:                                        ; preds = %wiphy_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scan_info.i) #8
  %3 = call ptr @memcpy(ptr %scan_info.i, ptr @__const.virt_wifi_cancel_scan.scan_info, i32 16)
  call void @cfg80211_scan_done(ptr noundef nonnull %2, ptr noundef nonnull %scan_info.i) #8
  %4 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %scan_request.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scan_info.i) #8
  br label %virt_wifi_cancel_scan.exit

virt_wifi_cancel_scan.exit:                       ; preds = %if.then.i, %wiphy_priv.exit.i.virt_wifi_cancel_scan.exit_crit_edge
  %registered = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 57
  %5 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %registered, align 16, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool24.not = icmp eq i8 %6, 0
  br i1 %tobool24.not, label %virt_wifi_cancel_scan.exit.if.end26_crit_edge, label %if.then25

virt_wifi_cancel_scan.exit.if.end26_crit_edge:    ; preds = %virt_wifi_cancel_scan.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %virt_wifi_cancel_scan.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @wiphy_unregister(ptr noundef nonnull %wiphy) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %virt_wifi_cancel_scan.exit.if.end26_crit_edge
  call void @wiphy_free(ptr noundef nonnull %wiphy) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virt_wifi_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @get_random_bytes(ptr noundef nonnull @fake_router_bssid, i32 noundef 6) #8
  %0 = load i8, ptr @fake_router_bssid, align 1
  %1 = and i8 %0, -4
  %2 = or i8 %1, 2
  store i8 %2, ptr @fake_router_bssid, align 1
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @virt_wifi_notifier) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @wiphy_new_nm(ptr noundef nonnull @virt_wifi_cfg80211_ops, i32 noundef 108, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.virt_wifi_make_wiphy.exit.thread_crit_edge, label %wiphy_priv.exit.i

if.end.virt_wifi_make_wiphy.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %virt_wifi_make_wiphy.exit.thread

wiphy_priv.exit.i:                                ; preds = %if.end
  %max_scan_ssids.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 18
  %3 = ptrtoint ptr %max_scan_ssids.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %max_scan_ssids.i, align 32
  %max_scan_ie_len.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 22
  %4 = ptrtoint ptr %max_scan_ie_len.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1000, ptr %max_scan_ie_len.i, align 4
  %signal_type.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %signal_type.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %signal_type.i, align 8
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 53
  %6 = ptrtoint ptr %bands.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @band_2ghz, ptr %bands.i, align 16
  %arrayidx2.i = getelementptr %struct.wiphy, ptr %call.i.i, i32 0, i32 53, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @band_5ghz, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.wiphy, ptr %call.i.i, i32 0, i32 53, i32 2
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx4.i, align 8
  %interface_modes.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %interface_modes.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %interface_modes.i, align 4
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 0, i32 86
  %being_deleted.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 3
  %10 = ptrtoint ptr %being_deleted.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %being_deleted.i, align 4
  %scan_request.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 2, i32 2
  %11 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %scan_request.i, align 4
  tail call void @__init_work(ptr noundef %priv.i.i, i32 noundef 0) #8
  %12 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %priv.i.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @virt_wifi_make_wiphy.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry13.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %entry13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry13.i, ptr %entry13.i, align 4
  %prev.i.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry13.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @virt_wifi_scan_result, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.wiphy, ptr %call.i.i, i32 1, i32 0, i32 1, i32 4, i32 7
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.23, ptr noundef nonnull @virt_wifi_make_wiphy.__key.22) #8
  %call22.i = tail call i32 @wiphy_register(ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp.i = icmp slt i32 %call22.i, 0
  br i1 %cmp.i, label %if.then23.i, label %if.end4

if.then23.i:                                      ; preds = %wiphy_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wiphy_free(ptr noundef nonnull %call.i.i) #8
  br label %virt_wifi_make_wiphy.exit.thread

virt_wifi_make_wiphy.exit.thread:                 ; preds = %if.then23.i, %if.end.virt_wifi_make_wiphy.exit.thread_crit_edge
  store ptr null, ptr @common_wiphy, align 4
  br label %notifier

if.end4:                                          ; preds = %wiphy_priv.exit.i
  store ptr %call.i.i, ptr @common_wiphy, align 4
  %call5 = tail call i32 @rtnl_link_register(ptr noundef nonnull @virt_wifi_link_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %destroy_wiphy

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

destroy_wiphy:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load ptr, ptr @common_wiphy, align 4
  tail call fastcc void @virt_wifi_destroy_wiphy(ptr noundef %16)
  br label %notifier

notifier:                                         ; preds = %destroy_wiphy, %virt_wifi_make_wiphy.exit.thread
  %err.0 = phi i32 [ %call5, %destroy_wiphy ], [ -12, %virt_wifi_make_wiphy.exit.thread ]
  %call9 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @virt_wifi_notifier) #8
  br label %cleanup

cleanup:                                          ; preds = %notifier, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %notifier ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virt_wifi_setup(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @virt_wifi_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %1 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %needs_free_netdev, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virt_wifi_newlink(ptr noundef %src_net, ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr nocapture noundef readnone %data, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %arrayidx = getelementptr ptr, ptr %tb, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netif_carrier_off(ptr noundef %dev) #8
  %upperdev = getelementptr i8, ptr %dev, i32 2408
  %2 = ptrtoint ptr %upperdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %upperdev, align 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %call3 = tail call ptr @__dev_get_by_index(ptr noundef %src_net, i32 noundef %6) #8
  %lowerdev = getelementptr i8, ptr %dev, i32 2404
  %7 = ptrtoint ptr %lowerdev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %lowerdev, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx8 = getelementptr ptr, ptr %tb, i32 4
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %mtu = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 20
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu, align 4
  %mtu12 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %12 = ptrtoint ptr %mtu12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mtu12, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end7
  %mtu13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %13 = ptrtoint ptr %mtu13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mtu13, align 4
  %mtu15 = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 20
  %15 = ptrtoint ptr %mtu15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mtu15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp = icmp ugt i32 %14, %16
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.then10
  %17 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lowerdev, align 4
  %call20 = tail call i32 @netdev_rx_handler_register(ptr noundef %18, ptr noundef nonnull @virt_wifi_rx_handler, ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  %19 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lowerdev, align 4
  br i1 %tobool21.not, label %if.end25, label %do.end

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.1, i32 noundef %call20) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 55
  %21 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %addr_assign_type.i, align 4
  %addr_assign_type1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %23 = ptrtoint ptr %addr_assign_type1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %addr_assign_type1.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 86
  %24 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr.i, align 64
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %25, i32 noundef 6) #8
  %26 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lowerdev, align 4
  tail call void @netif_stacked_transfer_operstate(ptr noundef %27, ptr noundef %dev) #8
  %28 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lowerdev, align 4
  %dev29 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 133
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev29, ptr %parent, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 964) #12
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %32 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %ieee80211_ptr, align 16
  %tobool33.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool33.not, label %if.end25.remove_handler_crit_edge, label %if.end35

if.end25.remove_handler_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_handler

if.end35:                                         ; preds = %if.end25
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %iftype, align 4
  %34 = load ptr, ptr @common_wiphy, align 4
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %call7.i.i, align 8
  %call38 = tail call i32 @register_netdevice(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  %36 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lowerdev, align 4
  br i1 %tobool39.not, label %if.end46, label %do.end43

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %dev45 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.7, i32 noundef %call38) #11
  br label %free_wireless_dev

if.end46:                                         ; preds = %if.end35
  %call48 = tail call i32 @netdev_upper_dev_link(ptr noundef %37, ptr noundef %dev, ptr noundef %extack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end56, label %do.end53

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lowerdev, align 4
  %dev55 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.10, i32 noundef %call48) #11
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #8
  br label %free_wireless_dev

if.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %40 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @virt_wifi_net_device_destructor, ptr %priv_destructor, align 4
  %being_deleted = getelementptr i8, ptr %dev, i32 2428
  %41 = ptrtoint ptr %being_deleted to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %being_deleted, align 4
  %is_connected = getelementptr i8, ptr %dev, i32 2427
  %42 = ptrtoint ptr %is_connected to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %is_connected, align 1
  %is_up = getelementptr i8, ptr %dev, i32 2426
  %43 = ptrtoint ptr %is_up to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %is_up, align 2
  tail call void @__init_work(ptr noundef %add.ptr.i, i32 noundef 0) #8
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %add.ptr.i, align 4
  %lockdep_map = getelementptr i8, ptr %dev, i32 2320
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @virt_wifi_newlink.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry66 = getelementptr i8, ptr %dev, i32 2308
  %45 = ptrtoint ptr %entry66 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry66, ptr %entry66, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 2312
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry66, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %dev, i32 2316
  %47 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @virt_wifi_connect_complete, ptr %func, align 4
  %timer = getelementptr i8, ptr %dev, i32 2348
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @virt_wifi_newlink.__key.13) #8
  tail call void @__module_get(ptr noundef null) #8
  br label %cleanup

free_wireless_dev:                                ; preds = %do.end53, %do.end43
  %err.0 = phi i32 [ %call38, %do.end43 ], [ %call48, %do.end53 ]
  %48 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ieee80211_ptr, align 16
  tail call void @kfree(ptr noundef %49) #8
  %50 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %ieee80211_ptr, align 16
  br label %remove_handler

remove_handler:                                   ; preds = %free_wireless_dev, %if.end25.remove_handler_crit_edge
  %err.1 = phi i32 [ %err.0, %free_wireless_dev ], [ -12, %if.end25.remove_handler_crit_edge ]
  %51 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lowerdev, align 4
  tail call void @netdev_rx_handler_unregister(ptr noundef %52) #8
  br label %cleanup

cleanup:                                          ; preds = %remove_handler, %if.end56, %do.end, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end ], [ %err.1, %remove_handler ], [ 0, %if.end56 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virt_wifi_dellink(ptr noundef %dev, ptr noundef %head) #2 align 64 {
entry:
  %params.i.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  %scan_info.i = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wiphy_priv.exit.i, !prof !118

do.body4.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #8, !srcloc !120
  unreachable

wiphy_priv.exit.i:                                ; preds = %if.then
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 86
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %priv.i.i) #8
  %scan_request.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 1, i32 2, i32 2
  %4 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scan_request.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %wiphy_priv.exit.i.if.end_crit_edge, label %if.then.i

wiphy_priv.exit.i.if.end_crit_edge:               ; preds = %wiphy_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %wiphy_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scan_info.i) #8
  %6 = call ptr @memcpy(ptr %scan_info.i, ptr @__const.virt_wifi_cancel_scan.scan_info, i32 16)
  call void @cfg80211_scan_done(ptr noundef nonnull %5, ptr noundef nonnull %scan_info.i) #8
  %7 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %scan_request.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scan_info.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %wiphy_priv.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %being_deleted = getelementptr i8, ptr %dev, i32 2428
  %8 = ptrtoint ptr %being_deleted to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %being_deleted, align 4
  %call1.i11 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %add.ptr.i) #8
  br i1 %call1.i11, label %if.then.i12, label %if.end.virt_wifi_cancel_connect.exit_crit_edge

if.end.virt_wifi_cancel_connect.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %virt_wifi_cancel_connect.exit

if.then.i12:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %upperdev.i = getelementptr i8, ptr %dev, i32 2408
  %9 = ptrtoint ptr %upperdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %upperdev.i, align 4
  %connect_requested_bss.i = getelementptr i8, ptr %dev, i32 2420
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i.i) #8
  %11 = getelementptr inbounds i8, ptr %params.i.i.i, i32 28
  %12 = call ptr @memset(ptr %11, i32 0, i32 24)
  %13 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %params.i.i.i, align 4
  %bssid2.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %bssid2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %connect_requested_bss.i, ptr %bssid2.i.i.i, align 4
  %bss3.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 2
  %timeout_reason8.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %timeout_reason8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %timeout_reason8.i.i.i, align 4
  %16 = call ptr @memset(ptr %bss3.i.i.i, i32 0, i32 20)
  call void @cfg80211_connect_done(ptr noundef %10, ptr noundef nonnull %params.i.i.i, i32 noundef 3264) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i.i) #8
  br label %virt_wifi_cancel_connect.exit

virt_wifi_cancel_connect.exit:                    ; preds = %if.then.i12, %if.end.virt_wifi_cancel_connect.exit_crit_edge
  call void @netif_carrier_off(ptr noundef %dev) #8
  %lowerdev = getelementptr i8, ptr %dev, i32 2404
  %17 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lowerdev, align 4
  call void @netdev_rx_handler_unregister(ptr noundef %18) #8
  %19 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lowerdev, align 4
  call void @netdev_upper_dev_unlink(ptr noundef %20, ptr noundef %dev) #8
  call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #8
  call void @module_put(ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @virt_wifi_net_device_open(ptr nocapture noundef writeonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_up = getelementptr i8, ptr %dev, i32 2426
  %0 = ptrtoint ptr %is_up to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %is_up, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virt_wifi_net_device_stop(ptr noundef %dev) #2 align 64 {
entry:
  %params.i.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  %scan_info.i = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %is_up = getelementptr i8, ptr %dev, i32 2426
  %0 = ptrtoint ptr %is_up to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %is_up, align 2
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %1 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ieee80211_ptr, align 16
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wiphy_priv.exit.i, !prof !118

do.body4.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #8, !srcloc !120
  unreachable

wiphy_priv.exit.i:                                ; preds = %if.end
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %4, i32 0, i32 86
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %priv.i.i) #8
  %scan_request.i = getelementptr inbounds %struct.wiphy, ptr %4, i32 1, i32 2, i32 2
  %5 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scan_request.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %wiphy_priv.exit.i.virt_wifi_cancel_scan.exit_crit_edge, label %if.then.i

wiphy_priv.exit.i.virt_wifi_cancel_scan.exit_crit_edge: ; preds = %wiphy_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %virt_wifi_cancel_scan.exit

if.then.i:                                        ; preds = %wiphy_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scan_info.i) #8
  %7 = call ptr @memcpy(ptr %scan_info.i, ptr @__const.virt_wifi_cancel_scan.scan_info, i32 16)
  call void @cfg80211_scan_done(ptr noundef nonnull %6, ptr noundef nonnull %scan_info.i) #8
  %8 = ptrtoint ptr %scan_request.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %scan_request.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scan_info.i) #8
  br label %virt_wifi_cancel_scan.exit

virt_wifi_cancel_scan.exit:                       ; preds = %if.then.i, %wiphy_priv.exit.i.virt_wifi_cancel_scan.exit_crit_edge
  %call1.i6 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %add.ptr.i) #8
  br i1 %call1.i6, label %if.then.i7, label %virt_wifi_cancel_scan.exit.virt_wifi_cancel_connect.exit_crit_edge

virt_wifi_cancel_scan.exit.virt_wifi_cancel_connect.exit_crit_edge: ; preds = %virt_wifi_cancel_scan.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %virt_wifi_cancel_connect.exit

if.then.i7:                                       ; preds = %virt_wifi_cancel_scan.exit
  call void @__sanitizer_cov_trace_pc() #10
  %upperdev.i = getelementptr i8, ptr %dev, i32 2408
  %9 = ptrtoint ptr %upperdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %upperdev.i, align 4
  %connect_requested_bss.i = getelementptr i8, ptr %dev, i32 2420
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i.i) #8
  %11 = getelementptr inbounds i8, ptr %params.i.i.i, i32 28
  %12 = call ptr @memset(ptr %11, i32 0, i32 24)
  %13 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %params.i.i.i, align 4
  %bssid2.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %bssid2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %connect_requested_bss.i, ptr %bssid2.i.i.i, align 4
  %bss3.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 2
  %timeout_reason8.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %timeout_reason8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %timeout_reason8.i.i.i, align 4
  %16 = call ptr @memset(ptr %bss3.i.i.i, i32 0, i32 20)
  call void @cfg80211_connect_done(ptr noundef %10, ptr noundef nonnull %params.i.i.i, i32 noundef 3264) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i.i) #8
  br label %virt_wifi_cancel_connect.exit

virt_wifi_cancel_connect.exit:                    ; preds = %if.then.i7, %virt_wifi_cancel_scan.exit.virt_wifi_cancel_connect.exit_crit_edge
  call void @netif_carrier_off(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %virt_wifi_cancel_connect.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virt_wifi_start_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_packets = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_packets, align 4
  %is_connected = getelementptr i8, ptr %dev, i32 2427
  %2 = ptrtoint ptr %is_connected to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_connected, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_failed = getelementptr i8, ptr %dev, i32 2416
  %4 = ptrtoint ptr %tx_failed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_failed, align 4
  %inc1 = add i32 %5, 1
  store i32 %inc1, ptr %tx_failed, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lowerdev = getelementptr i8, ptr %dev, i32 2404
  %6 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lowerdev, align 4
  %8 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 8
  %call2 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virt_wifi_net_device_get_iflink(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lowerdev = getelementptr i8, ptr %dev, i32 2404
  %0 = ptrtoint ptr %lowerdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lowerdev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_connect_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_rx_handler_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virt_wifi_rx_handler(ptr nocapture noundef %pskb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pskb, align 4
  %2 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %rx_handler_data = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 95
  %5 = ptrtoint ptr %rx_handler_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %rx_handler_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b29 = load i1, ptr @virt_wifi_rx_handler.__warned, align 1
  br i1 %.b29, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @virt_wifi_rx_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 489, ptr noundef nonnull @.str.15) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %is_connected = getelementptr inbounds %struct.virt_wifi_netdev_priv, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %is_connected to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_connected, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %do.end7.cleanup_crit_edge, label %if.end11

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #8
  %9 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end11
  %call7.i = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #8
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread32, !prof !118

skb_share_check.exit.thread32:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef %1) #8
  br label %if.end18

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #8
  br label %do.end17

skb_share_check.exit:                             ; preds = %if.end11
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %skb_share_check.exit.do.end17_crit_edge, label %skb_share_check.exit.if.end18_crit_edge

skb_share_check.exit.if.end18_crit_edge:          ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

skb_share_check.exit.do.end17_crit_edge:          ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.end17:                                         ; preds = %skb_share_check.exit.do.end17_crit_edge, %skb_share_check.exit.thread
  %upperdev = getelementptr inbounds %struct.virt_wifi_netdev_priv, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %upperdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %upperdev, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end18:                                         ; preds = %skb_share_check.exit.if.end18_crit_edge, %skb_share_check.exit.thread32
  %skb.addr.0.i35 = phi ptr [ %call7.i, %skb_share_check.exit.thread32 ], [ %1, %skb_share_check.exit.if.end18_crit_edge ]
  %13 = ptrtoint ptr %pskb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %skb.addr.0.i35, ptr %pskb, align 4
  %upperdev19 = getelementptr inbounds %struct.virt_wifi_netdev_priv, ptr %6, i32 0, i32 2
  %14 = ptrtoint ptr %upperdev19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %upperdev19, align 4
  %16 = getelementptr inbounds %struct.anon.0, ptr %skb.addr.0.i35, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %16, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i35, i32 0, i32 15
  %18 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  store i16 %bf.clear, ptr %pkt_type, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end17, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end18 ], [ 0, %do.end17 ], [ 3, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_stacked_transfer_operstate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_upper_dev_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virt_wifi_net_device_destructor(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ieee80211_ptr, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virt_wifi_connect_complete(ptr noundef %work) #2 align 64 {
entry:
  %params.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %connect_requested_bss = getelementptr inbounds %struct.virt_wifi_netdev_priv, ptr %work, i32 0, i32 5
  %0 = ptrtoint ptr %connect_requested_bss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connect_requested_bss, align 4
  %2 = load i32, ptr @fake_router_bssid, align 4
  %xor.i = xor i32 %2, %1
  %add.ptr.i = getelementptr %struct.virt_wifi_netdev_priv, ptr %work, i32 0, i32 5, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i, align 2
  %5 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @fake_router_bssid, i32 0, i32 4), align 2
  %xor31.i = xor i16 %5, %4
  %xor3.i = zext i16 %xor31.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %conv.i = zext i16 %4 to i32
  %or.i15 = or i32 %1, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i15)
  %cmp.i16 = icmp eq i32 %or.i15, 0
  %spec.select = select i1 %cmp.i16, ptr null, ptr %connect_requested_bss
  %is_up = getelementptr inbounds %struct.virt_wifi_netdev_priv, ptr %work, i32 0, i32 6
  %6 = ptrtoint ptr %is_up to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_up, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp ne i8 %7, 0
  %tobool2.not = icmp eq ptr %spec.select, null
  %brmerge = select i1 %tobool2.not, i1 true, i1 %cmp.i
  %or.cond = select i1 %tobool.not, i1 %brmerge, i1 false
  br i1 %or.cond, label %if.else, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %is_connected = getelementptr inbounds %struct.virt_wifi_netdev_priv, ptr %work, i32 0, i32 7
  %8 = ptrtoint ptr %is_connected to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %is_connected, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.else, %entry.if.end5_crit_edge
  %status.0 = phi i32 [ 0, %if.else ], [ 1, %entry.if.end5_crit_edge ]
  %upperdev = getelementptr inbounds %struct.virt_wifi_netdev_priv, ptr %work, i32 0, i32 2
  %9 = ptrtoint ptr %upperdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %upperdev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i) #8
  %11 = getelementptr inbounds i8, ptr %params.i.i, i32 28
  %12 = call ptr @memset(ptr %11, i32 0, i32 24)
  %13 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %status.0, ptr %params.i.i, align 4
  %bssid2.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %bssid2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select, ptr %bssid2.i.i, align 4
  %bss3.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 2
  %timeout_reason8.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %timeout_reason8.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %timeout_reason8.i.i, align 4
  %16 = call ptr @memset(ptr %bss3.i.i, i32 0, i32 20)
  call void @cfg80211_connect_done(ptr noundef %10, ptr noundef nonnull %params.i.i, i32 noundef 3264) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i) #8
  %17 = ptrtoint ptr %upperdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %upperdev, align 4
  call void @netif_carrier_on(ptr noundef %18) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virt_wifi_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  %list_kill = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list_kill) #8
  %2 = getelementptr inbounds %struct.list_head, ptr %list_kill, i32 0, i32 1
  %3 = ptrtoint ptr %list_kill to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list_kill, ptr %list_kill, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list_kill, ptr %2, align 4
  %rx_handler.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 94
  %5 = ptrtoint ptr %rx_handler.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %rx_handler.i, align 32
  %cmp.i = icmp eq ptr %6, @virt_wifi_rx_handler
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cond = icmp eq i32 %event, 6
  %or.cond = and i1 %cond, %cmp.i
  br i1 %or.cond, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %call2 = call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call2, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call3 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @virt_wifi_event.__warned, align 1
  br i1 %.b17, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @virt_wifi_event.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 634, ptr noundef nonnull @.str.20) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %rx_handler_data = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 95
  %7 = ptrtoint ptr %rx_handler_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_handler_data, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %upperdev = getelementptr inbounds %struct.virt_wifi_netdev_priv, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %upperdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %upperdev, align 4
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 136
  %11 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtnl_link_ops, align 4
  %dellink = getelementptr inbounds %struct.rtnl_link_ops, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %dellink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dellink, align 4
  call void %14(ptr noundef %10, ptr noundef nonnull %list_kill) #8
  call void @unregister_netdevice_many(ptr noundef nonnull %list_kill) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list_kill) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virt_wifi_scan_result(ptr noundef %work) #2 align 64 {
entry:
  %data.i.i = alloca %struct.cfg80211_inform_bss, align 8
  %scan_info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %work, null
  br i1 %tobool.not.i, label %do.body4.i, label %priv_to_wiphy.exit, !prof !118

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #8, !srcloc !121
  unreachable

priv_to_wiphy.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %work, i32 -1408
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scan_info) #8
  %0 = call ptr @memset(ptr %scan_info, i32 0, i32 16)
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #8
  %1 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %call.i.i.i, i32 0) #13, !srcloc !122
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %1, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %1, 1
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %call.i.i.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !123
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %2, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i.i) #8
  %3 = getelementptr inbounds i8, ptr %data.i.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @channel_5ghz, ptr %data.i.i, align 8
  %scan_width.i.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %scan_width.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %scan_width.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -5000, ptr %3, align 8
  %call.i.i = call ptr @cfg80211_inform_bss_data(ptr noundef %add.ptr.i, ptr noundef nonnull %data.i.i, i32 noundef 2, ptr noundef nonnull @fake_router_bssid, i64 noundef %div1581.i.i.i, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull @virt_wifi_inform_bss.ssid, i32 noundef 10, i32 noundef 3264) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i.i) #8
  call void @cfg80211_put_bss(ptr noundef %add.ptr.i, ptr noundef %call.i.i) #8
  %scan_request = getelementptr inbounds %struct.virt_wifi_wiphy_priv, ptr %work, i32 0, i32 1
  %8 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scan_request, align 4
  call void @cfg80211_scan_done(ptr noundef %9, ptr noundef nonnull %scan_info) #8
  %10 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %scan_request, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scan_info) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virt_wifi_get_station(ptr noundef %wiphy, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %mac, ptr nocapture noundef writeonly %sinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev1, ptr noundef nonnull @.str.24) #11
  %is_connected = getelementptr i8, ptr %dev, i32 2427
  %0 = ptrtoint ptr %is_connected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_connected, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac, align 4
  %4 = load i32, ptr @fake_router_bssid, align 4
  %xor.i = xor i32 %4, %3
  %add.ptr.i11 = getelementptr i8, ptr %mac, i32 4
  %5 = ptrtoint ptr %add.ptr.i11 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i11, align 2
  %7 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @fake_router_bssid, i32 0, i32 4), align 2
  %xor31.i = xor i16 %7, %6
  %xor3.i = zext i16 %xor31.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 5504, ptr %sinfo, align 8
  %tx_packets = getelementptr i8, ptr %dev, i32 2412
  %9 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_packets, align 4
  %tx_packets3 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 17
  %11 = ptrtoint ptr %tx_packets3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_packets3, align 8
  %tx_failed = getelementptr i8, ptr %dev, i32 2416
  %12 = ptrtoint ptr %tx_failed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_failed, align 4
  %tx_failed4 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 19
  %14 = ptrtoint ptr %tx_failed4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_failed4, align 8
  %signal = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %15 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -50, ptr %signal, align 1
  %txrate = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  %16 = ptrtoint ptr %txrate to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %txrate, align 8
  %.compoundliteral.sroa.2.0.txrate.sroa_idx = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 1
  %17 = ptrtoint ptr %.compoundliteral.sroa.2.0.txrate.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %.compoundliteral.sroa.2.0.txrate.sroa_idx, align 1
  %.compoundliteral.sroa.3.0.txrate.sroa_idx = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %18 = ptrtoint ptr %.compoundliteral.sroa.3.0.txrate.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 10, ptr %.compoundliteral.sroa.3.0.txrate.sroa_idx, align 2
  %.compoundliteral.sroa.4.0.txrate.sroa_idx = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 3
  %19 = call ptr @memset(ptr %.compoundliteral.sroa.4.0.txrate.sroa_idx, i32 0, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virt_wifi_dump_station(ptr noundef %wiphy, ptr nocapture noundef readonly %dev, i32 noundef %idx, ptr nocapture noundef writeonly %mac, ptr nocapture noundef writeonly %sinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev1, ptr noundef nonnull @.str.27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp.not = icmp eq i32 %idx, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %is_connected = getelementptr i8, ptr %dev, i32 2427
  %0 = ptrtoint ptr %is_connected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_connected, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr @fake_router_bssid, align 4
  %3 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %mac, align 4
  %4 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @fake_router_bssid, i32 0, i32 4), align 2
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  %5 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %add.ptr1.i, align 2
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev1, ptr noundef nonnull @.str.24) #11
  %6 = ptrtoint ptr %is_connected to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_connected, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 5504, ptr %sinfo, align 8
  %tx_packets.i = getelementptr i8, ptr %dev, i32 2412
  %9 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_packets.i, align 4
  %tx_packets3.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 17
  %11 = ptrtoint ptr %tx_packets3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_packets3.i, align 8
  %tx_failed.i = getelementptr i8, ptr %dev, i32 2416
  %12 = ptrtoint ptr %tx_failed.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_failed.i, align 4
  %tx_failed4.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 19
  %14 = ptrtoint ptr %tx_failed4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_failed4.i, align 8
  %signal.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %15 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -50, ptr %signal.i, align 1
  %txrate.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  %16 = ptrtoint ptr %txrate.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %txrate.i, align 8
  %.compoundliteral.sroa.2.0.txrate.sroa_idx.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 1
  %17 = ptrtoint ptr %.compoundliteral.sroa.2.0.txrate.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %.compoundliteral.sroa.2.0.txrate.sroa_idx.i, align 1
  %.compoundliteral.sroa.3.0.txrate.sroa_idx.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %18 = ptrtoint ptr %.compoundliteral.sroa.3.0.txrate.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 10, ptr %.compoundliteral.sroa.3.0.txrate.sroa_idx.i, align 2
  %.compoundliteral.sroa.4.0.txrate.sroa_idx.i = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 3
  %19 = call ptr @memset(ptr %.compoundliteral.sroa.4.0.txrate.sroa_idx.i, i32 0, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virt_wifi_scan(ptr noundef %wiphy, ptr noundef %request) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !118

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #8, !srcloc !120
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev, ptr noundef nonnull @.str.29) #11
  %scan_request = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 2, i32 2
  %0 = ptrtoint ptr %scan_request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_request, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %wiphy_priv.exit.cleanup_crit_edge

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %wiphy_priv.exit
  %being_deleted = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 3
  %2 = ptrtoint ptr %being_deleted to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %being_deleted, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %request, ptr %scan_request, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %priv.i, i32 noundef 200) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %wiphy_priv.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virt_wifi_connect(ptr noundef %wiphy, ptr noundef %netdev, ptr nocapture noundef readonly %sme) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %being_deleted = getelementptr i8, ptr %netdev, i32 2428
  %0 = ptrtoint ptr %being_deleted to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %being_deleted, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %is_up = getelementptr i8, ptr %netdev, i32 2426
  %2 = ptrtoint ptr %is_up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_up, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %add.ptr.i, i32 noundef 200) #8
  br i1 %call.i.i, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %bssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 2
  %5 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bssid, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %connect_requested_bss = getelementptr i8, ptr %netdev, i32 2420
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = ptrtoint ptr %connect_requested_bss to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %connect_requested_bss, align 4
  %add.ptr.i19 = getelementptr i8, ptr %6, i32 4
  %10 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i19, align 2
  %add.ptr1.i = getelementptr i8, ptr %netdev, i32 2424
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr1.i, align 2
  br label %do.end

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @virt_wifi_inform_bss(ptr noundef %wiphy)
  %connect_requested_bss9 = getelementptr i8, ptr %netdev, i32 2420
  %13 = call ptr @memset(ptr %connect_requested_bss9, i32 0, i32 6)
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then7
  %dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev, ptr noundef nonnull @.str.31) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virt_wifi_disconnect(ptr noundef %wiphy, ptr noundef %netdev, i16 noundef zeroext %reason_code) #2 align 64 {
entry:
  %params.i.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %being_deleted = getelementptr i8, ptr %netdev, i32 2428
  %0 = ptrtoint ptr %being_deleted to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %being_deleted, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %dev, ptr noundef nonnull @.str.33) #11
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %add.ptr.i) #8
  br i1 %call1.i, label %if.then.i, label %do.end.virt_wifi_cancel_connect.exit_crit_edge

do.end.virt_wifi_cancel_connect.exit_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %virt_wifi_cancel_connect.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %upperdev.i = getelementptr i8, ptr %netdev, i32 2408
  %2 = ptrtoint ptr %upperdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upperdev.i, align 4
  %connect_requested_bss.i = getelementptr i8, ptr %netdev, i32 2420
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i.i) #8
  %4 = getelementptr inbounds i8, ptr %params.i.i.i, i32 28
  %5 = call ptr @memset(ptr %4, i32 0, i32 24)
  %6 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %params.i.i.i, align 4
  %bssid2.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %bssid2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %connect_requested_bss.i, ptr %bssid2.i.i.i, align 4
  %bss3.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 2
  %timeout_reason8.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %timeout_reason8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %timeout_reason8.i.i.i, align 4
  %9 = call ptr @memset(ptr %bss3.i.i.i, i32 0, i32 20)
  call void @cfg80211_connect_done(ptr noundef %3, ptr noundef nonnull %params.i.i.i, i32 noundef 3264) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i.i) #8
  br label %virt_wifi_cancel_connect.exit

virt_wifi_cancel_connect.exit:                    ; preds = %if.then.i, %do.end.virt_wifi_cancel_connect.exit_crit_edge
  call void @cfg80211_disconnected(ptr noundef %netdev, i16 noundef zeroext %reason_code, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i32 noundef 3264) #8
  %is_connected = getelementptr i8, ptr %netdev, i32 2427
  %10 = ptrtoint ptr %is_connected to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %is_connected, align 1
  call void @netif_carrier_off(ptr noundef %netdev) #8
  br label %cleanup

cleanup:                                          ; preds = %virt_wifi_cancel_connect.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %virt_wifi_cancel_connect.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virt_wifi_inform_bss(ptr noundef %wiphy) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca %struct.cfg80211_inform_bss, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #8
  %0 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %call.i.i, i32 0) #13, !srcloc !122
  %asmresult.i.i.i = extractvalue { i64, i32 } %0, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %0, 1
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %call.i.i, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #13, !srcloc !123
  %asmresult10.i.i.i = extractvalue { i64, i32 } %1, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #8
  %2 = getelementptr inbounds i8, ptr %data.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @channel_5ghz, ptr %data.i, align 8
  %scan_width.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i, i32 0, i32 1
  %5 = ptrtoint ptr %scan_width.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %scan_width.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -5000, ptr %2, align 8
  %call.i = call ptr @cfg80211_inform_bss_data(ptr noundef %wiphy, ptr noundef nonnull %data.i, i32 noundef 2, ptr noundef nonnull @fake_router_bssid, i64 noundef %div1581.i.i, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull @virt_wifi_inform_bss.ssid, i32 noundef 10, i32 noundef 3264) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #8
  call void @cfg80211_put_bss(ptr noundef %wiphy, ptr noundef %call.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !54, !56, !57, !59, !61, !62, !64, !65, !66, !67, !69, !71, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !103, !105, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_virt_wifi__349_691_virt_wifi_init_module6, !1, !"__initcall__kmod_virt_wifi__349_691_virt_wifi_init_module6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/virt_wifi.c", i32 691, i32 1}
!2 = !{ptr @__exitcall_virt_wifi_cleanup_module, !3, !"__exitcall_virt_wifi_cleanup_module", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/virt_wifi.c", i32 692, i32 1}
!4 = !{ptr @__UNIQUE_ID_file350, !5, !"__UNIQUE_ID_file350", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/virt_wifi.c", i32 694, i32 1}
!6 = !{ptr @__UNIQUE_ID_license351, !5, !"__UNIQUE_ID_license351", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author352, !8, !"__UNIQUE_ID_author352", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/virt_wifi.c", i32 695, i32 1}
!9 = !{ptr @__UNIQUE_ID_description353, !10, !"__UNIQUE_ID_description353", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/virt_wifi.c", i32 696, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias354, !12, !"__UNIQUE_ID_alias354", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/virt_wifi.c", i32 697, i32 1}
!13 = !{ptr @common_wiphy, !14, !"common_wiphy", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/virt_wifi.c", i32 18, i32 22}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/virt_wifi.c", i32 609, i32 11}
!17 = !{ptr @virt_wifi_link_ops, !18, !"virt_wifi_link_ops", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/virt_wifi.c", i32 608, i32 29}
!19 = !{ptr @virt_wifi_ops, !20, !"virt_wifi_ops", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/virt_wifi.c", i32 459, i32 36}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/virt_wifi.c", i32 534, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @virt_wifi_newlink._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @virt_wifi_newlink._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/virt_wifi.c", i32 555, i32 3}
!31 = !{ptr @virt_wifi_newlink._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @virt_wifi_newlink._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/virt_wifi.c", i32 562, i32 3}
!35 = !{ptr @virt_wifi_newlink._entry.9, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @virt_wifi_newlink._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @virt_wifi_newlink.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/virt_wifi.c", i32 571, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @virt_wifi_newlink.__key.13, !38, !"__key", i1 false, i1 false}
!41 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/virt_wifi.c", i32 489, i32 3}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/virt_wifi.c", i32 497, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @virt_wifi_rx_handler._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @virt_wifi_rx_handler._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!52 = !{ptr @fake_router_bssid, !53, !"fake_router_bssid", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/virt_wifi.c", i32 137, i32 11}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/virt_wifi.c", i32 397, i32 2}
!56 = !{ptr @__func__.virt_wifi_destroy_wiphy, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @virt_wifi_notifier, !58, !"virt_wifi_notifier", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/virt_wifi.c", i32 648, i32 30}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/virt_wifi.c", i32 634, i32 10}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @virt_wifi_make_wiphy.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/virt_wifi.c", i32 381, i32 2}
!64 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @virt_wifi_make_wiphy.__key.22, !63, !"__key", i1 false, i1 false}
!66 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @virt_wifi_cfg80211_ops, !68, !"virt_wifi_cfg80211_ops", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/virt_wifi.c", i32 346, i32 34}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/virt_wifi.c", i32 312, i32 2}
!71 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @virt_wifi_get_station._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @virt_wifi_get_station._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/virt_wifi.c", i32 337, i32 2}
!77 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @virt_wifi_dump_station._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @virt_wifi_dump_station._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/virt_wifi.c", i32 168, i32 2}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @virt_wifi_scan._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @virt_wifi_scan._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/virt_wifi.c", i32 243, i32 2}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @virt_wifi_connect._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @virt_wifi_connect._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @virt_wifi_inform_bss.ssid, !91, !"ssid", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/virt_wifi.c", i32 147, i32 13}
!92 = !{ptr @channel_5ghz, !93, !"channel_5ghz", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/virt_wifi.c", i32 65, i32 33}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/virt_wifi.c", i32 296, i32 2}
!96 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @virt_wifi_disconnect._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @virt_wifi_disconnect._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @band_2ghz, !100, !"band_2ghz", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/virt_wifi.c", i32 43, i32 40}
!101 = !{ptr @channel_2ghz, !102, !"channel_2ghz", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/virt_wifi.c", i32 26, i32 33}
!103 = !{ptr @bitrates_2ghz, !104, !"bitrates_2ghz", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/virt_wifi.c", i32 33, i32 30}
!105 = !{ptr @band_5ghz, !106, !"band_5ghz", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/virt_wifi.c", i32 96, i32 40}
!107 = !{ptr @bitrates_5ghz, !108, !"bitrates_5ghz", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/virt_wifi.c", i32 72, i32 30}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{i8 0, i8 2}
!120 = !{i64 2156986928, i64 2156987416, i64 2156986965, i64 2156987021, i64 2156987055, i64 2156987079, i64 2156987120, i64 2156987141, i64 2156987169, i64 2156987203}
!121 = !{i64 2156988675, i64 2156989163, i64 2156988712, i64 2156988768, i64 2156988802, i64 2156988826, i64 2156988867, i64 2156988888, i64 2156988916, i64 2156988950}
!122 = !{i64 1516533, i64 1516560, i64 1516582, i64 1516610}
!123 = !{i64 1516941, i64 1516968, i64 1517001, i64 1517022, i64 1517049, i64 1517075}
