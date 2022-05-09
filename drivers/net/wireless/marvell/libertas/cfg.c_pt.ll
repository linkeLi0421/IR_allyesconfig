; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas/cfg.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas/cfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.region_code_mapping = type { ptr, i32 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.lbs_private = type { ptr, i32, %struct.work_struct, i32, [32 x [6 x i8]], ptr, i8, ptr, [6 x i8], [3 x i8], i8, ptr, %struct.lbs_mesh_stats, i16, i8, ptr, ptr, [6 x ptr], ptr, [6 x ptr], ptr, [6 x ptr], i32, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.timer_list, i32, i32, %struct.wait_queue_head, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, [6 x i8], i8, i8, i16, ptr, ptr, %struct.list_head, %struct.list_head, %struct.timer_list, i32, i8, [2 x [2312 x i8]], [2 x i32], %struct.kfifo, ptr, %struct.wait_queue_head, ptr, i8, i8, [4 x [13 x i8]], [4 x i8], i32, i8, i8, i8, i32, [2312 x i8], i8, ptr, %struct.timer_list, %struct.mutex, %struct.spinlock, i16, i8, i8, i8, i16, i16, i16, %struct.delayed_work, i32, %struct.wait_queue_head, i8, i32, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lbs_mesh_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kfifo = type { %union.anon.124, [0 x i8] }
%union.anon.124 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cmd_ds_802_11_deauthenticate = type { %struct.cmd_header, [6 x i8], i16 }
%struct.cmd_header = type { i16, i16, i16, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.120, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.120 = type { i64, i64, i8 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.123 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.cmd_ds_802_11_scan = type <{ %struct.cmd_header, i8, [6 x i8], [0 x i8] }>
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.mrvl_ie_header = type { i16, i16 }
%struct.chanscanparamset = type <{ i8, i8, %struct.chanscanmode, i16, i16 }>
%struct.chanscanmode = type { i8 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.121, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.121 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.122 }
%union.anon.122 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.cmd_key_material = type { %struct.cmd_header, i16, %struct.MrvlIEtype_keyParamSet }
%struct.MrvlIEtype_keyParamSet = type { i16, i16, i16, i16, i16, [32 x i8] }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.cmd_ds_802_11_authenticate = type <{ %struct.cmd_header, [6 x i8], i8, [10 x i8] }>
%struct.cmd_ds_802_11_enable_rsn = type { %struct.cmd_header, i16, i16 }
%struct.cmd_ds_802_11_set_wep = type { %struct.cmd_header, i16, i16, [4 x i8], [4 x [16 x i8]] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.cmd_ds_802_11_associate = type <{ %struct.cmd_header, [6 x i8], i16, i16, i16, i8, [512 x i8] }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mrvl_ie_ds_param_set = type <{ %struct.mrvl_ie_header, i8 }>
%struct.mrvl_ie_auth_type = type { %struct.mrvl_ie_header, i16 }
%struct.cmd_ds_802_11_associate_response = type { %struct.cmd_header, i16, i16, i16, [512 x i8] }
%struct.cmd_ds_802_11_ad_hoc_start = type <{ %struct.cmd_header, [32 x i8], i8, i16, i8, %struct.ieee_ie_ibss_param_set, [4 x i8], %struct.ieee_ie_ds_param_set, [4 x i8], i16, i16, [14 x i8], [100 x i8] }>
%struct.ieee_ie_ibss_param_set = type { %struct.ieee_ie_header, i16 }
%struct.ieee_ie_header = type { i8, i8 }
%struct.ieee_ie_ds_param_set = type { %struct.ieee_ie_header, i8 }
%struct.cmd_ds_802_11_ad_hoc_join = type <{ %struct.cmd_header, %struct.adhoc_bssdesc, i16, i16 }>
%struct.adhoc_bssdesc = type <{ [6 x i8], [32 x i8], i8, i16, i8, i64, i64, %struct.ieee_ie_ds_param_set, [4 x i8], %struct.ieee_ie_ibss_param_set, [4 x i8], i16, [14 x i8] }>
%struct.cmd_ds_802_11_ad_hoc_result = type <{ %struct.cmd_header, [3 x i8], [6 x i8] }>
%struct.cmd_ds_802_11_ad_hoc_stop = type { %struct.cmd_header }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.cmd_ds_802_11_scan_rsp = type <{ %struct.cmd_header, i16, i8, [0 x i8] }>

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/marvell/libertas/cfg.c\00", [52 x i8] zeroinitializer }, align 32
@lbs_cfg80211_ops = internal constant { %struct.cfg80211_ops, [108 x i8] } { %struct.cfg80211_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lbs_change_intf, ptr @lbs_cfg_add_key, ptr null, ptr @lbs_cfg_del_key, ptr @lbs_cfg_set_default_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lbs_cfg_get_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lbs_cfg_set_mesh_channel, ptr @lbs_cfg_set_monitor_channel, ptr @lbs_cfg_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lbs_cfg_connect, ptr null, ptr @lbs_cfg_disconnect, ptr @lbs_join_ibss, ptr @lbs_leave_ibss, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lbs_set_power_mgmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [108 x i8] zeroinitializer }, align 32
@lbs_cfg_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 2051, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot allocate wiphy\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lbs_cfg_alloc\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lbs_cfg_alloc._entry_ptr = internal global ptr @lbs_cfg_alloc._entry, section ".printk_index", align 4
@lbs_band_2ghz = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @lbs_2ghz_channels, ptr @lbs_rates, i32 0, i32 14, i32 12, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@cipher_suites = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1027073, i32 1027077, i32 1027074, i32 1027076], [16 x i8] zeroinitializer }, align 32
@lbs_cfg_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 2132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013libertas: cannot register wiphy device\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lbs_cfg_register\00", [47 x i8] zeroinitializer }, align 32
@lbs_cfg_register._entry_ptr = internal global ptr @lbs_cfg_register._entry, section ".printk_index", align 4
@lbs_cfg_register._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 2138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013libertas: cannot register network device\0A\00", [52 x i8] zeroinitializer }, align 32
@lbs_cfg_register._entry_ptr.9 = internal global ptr @lbs_cfg_register._entry.7, section ".printk_index", align 4
@lbs_cfg_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&priv->scan_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@lbs_cfg_register.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&priv->scan_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lbs_debug = external dso_local local_unnamed_addr global i32, align 4
@lbs_cfg_add_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017libertas assoc: add_key: cipher 0x%x, mac_addr %pM\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lbs_cfg_add_key\00", [16 x i8] zeroinitializer }, align 32
@lbs_cfg_add_key._entry_ptr = internal global ptr @lbs_cfg_add_key._entry, section ".printk_index", align 4
@lbs_cfg_add_key._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str, i32 1474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017libertas assoc: add_key: key index %d, key len %d\0A\00", [43 x i8] zeroinitializer }, align 32
@lbs_cfg_add_key._entry_ptr.17 = internal global ptr @lbs_cfg_add_key._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KEY\00", [28 x i8] zeroinitializer }, align 32
@lbs_cfg_add_key._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str, i32 1479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017libertas assoc: add_key: seq len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@lbs_cfg_add_key._entry_ptr.21 = internal global ptr @lbs_cfg_add_key._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SEQ\00", [28 x i8] zeroinitializer }, align 32
@lbs_cfg_add_key._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.14, ptr @.str, i32 1511, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unhandled cipher 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@lbs_cfg_add_key._entry_ptr.25 = internal global ptr @lbs_cfg_add_key._entry.23, section ".printk_index", align 4
@lbs_deb_hex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.28, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lbs_deb_hex\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/marvell/libertas/defs.h\00", [51 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr = internal global ptr @lbs_deb_hex._entry, section ".printk_index", align 4
@lbs_deb_hex._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.28, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"libertas %s: \00", [18 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.31 = internal global ptr @lbs_deb_hex._entry.29, section ".printk_index", align 4
@lbs_deb_hex._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.28, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.34 = internal global ptr @lbs_deb_hex._entry.32, section ".printk_index", align 4
@lbs_deb_hex._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.28, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.36 = internal global ptr @lbs_deb_hex._entry.35, section ".printk_index", align 4
@lbs_cfg_del_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str, i32 1525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017libertas assoc: del_key: key_idx %d, mac_addr %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lbs_cfg_del_key\00", [16 x i8] zeroinitializer }, align 32
@lbs_cfg_del_key._entry_ptr = internal global ptr @lbs_cfg_del_key._entry, section ".printk_index", align 4
@lbs_cfg_set_default_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str, i32 1450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libertas assoc: set_default_key: to %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lbs_cfg_set_default_key\00", [40 x i8] zeroinitializer }, align 32
@lbs_cfg_set_default_key._entry_ptr = internal global ptr @lbs_cfg_set_default_key._entry, section ".printk_index", align 4
@lbs_rates = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 1, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 3, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 7, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 11, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 12, i16 0 }], [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@_internal_start_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017libertas scan: scan: ssids %d, channels %d, ie_len %zd\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_internal_start_scan\00", [43 x i8] zeroinitializer }, align 32
@_internal_start_scan._entry_ptr = internal global ptr @_internal_start_scan._entry, section ".printk_index", align 4
@lbs_cfg_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017libertas assoc: assoc: waiting for existing scans\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lbs_cfg_connect\00", [16 x i8] zeroinitializer }, align 32
@lbs_cfg_connect._entry_ptr = internal global ptr @lbs_cfg_connect._entry, section ".printk_index", align 4
@lbs_cfg_connect._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017libertas assoc: assoc: scanning for compatible AP\0A\00", [43 x i8] zeroinitializer }, align 32
@lbs_cfg_connect._entry_ptr.48 = internal global ptr @lbs_cfg_connect._entry.46, section ".printk_index", align 4
@lbs_cfg_connect._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017libertas assoc: assoc: waiting for scan to complete\0A\00", [41 x i8] zeroinitializer }, align 32
@lbs_cfg_connect._entry_ptr.51 = internal global ptr @lbs_cfg_connect._entry.49, section ".printk_index", align 4
@lbs_cfg_connect._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017libertas assoc: assoc: scanning completed\0A\00", [51 x i8] zeroinitializer }, align 32
@lbs_cfg_connect._entry_ptr.54 = internal global ptr @lbs_cfg_connect._entry.52, section ".printk_index", align 4
@lbs_cfg_connect._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str, i32 1321, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"assoc: bss %pM not in scan results\0A\00", [60 x i8] zeroinitializer }, align 32
@lbs_cfg_connect._entry_ptr.57 = internal global ptr @lbs_cfg_connect._entry.55, section ".printk_index", align 4
@lbs_cfg_connect._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str, i32 1325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017libertas assoc: trying %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@lbs_cfg_connect._entry_ptr.60 = internal global ptr @lbs_cfg_connect._entry.58, section ".printk_index", align 4
@lbs_cfg_connect._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.45, ptr @.str, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017libertas assoc: cipher 0x%x, key index %d, key len %d\0A\00", [39 x i8] zeroinitializer }, align 32
@lbs_cfg_connect._entry_ptr.63 = internal global ptr @lbs_cfg_connect._entry.61, section ".printk_index", align 4
@lbs_cfg_connect._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.45, ptr @.str, i32 1379, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported cipher group 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@lbs_cfg_connect._entry_ptr.66 = internal global ptr @lbs_cfg_connect._entry.64, section ".printk_index", align 4
@lbs_cfg_connect._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.45, ptr @.str, i32 1386, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported authtype 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lbs_cfg_connect._entry_ptr.69 = internal global ptr @lbs_cfg_connect._entry.67, section ".printk_index", align 4
@lbs_associate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017libertas assoc: no SSID\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lbs_associate\00", [18 x i8] zeroinitializer }, align 32
@lbs_associate._entry_ptr = internal global ptr @lbs_associate._entry, section ".printk_index", align 4
@lbs_associate._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017libertas assoc: no channel\0A\00", [34 x i8] zeroinitializer }, align 32
@lbs_associate._entry_ptr.74 = internal global ptr @lbs_associate._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Common Rates\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASSOC_CMD\00", [22 x i8] zeroinitializer }, align 32
@lbs_associate._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.71, ptr @.str, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017libertas assoc: invalid association parameters\0A\00", [46 x i8] zeroinitializer }, align 32
@lbs_associate._entry_ptr.79 = internal global ptr @lbs_associate._entry.77, section ".printk_index", align 4
@lbs_associate._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.71, ptr @.str, i32 1177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017libertas assoc: timer expired while waiting for AP\0A\00", [42 x i8] zeroinitializer }, align 32
@lbs_associate._entry_ptr.82 = internal global ptr @lbs_associate._entry.80, section ".printk_index", align 4
@lbs_associate._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.71, ptr @.str, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017libertas assoc: association refused by AP\0A\00", [51 x i8] zeroinitializer }, align 32
@lbs_associate._entry_ptr.85 = internal global ptr @lbs_associate._entry.83, section ".printk_index", align 4
@lbs_associate._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.71, ptr @.str, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017libertas assoc: authentication refused by AP\0A\00", [48 x i8] zeroinitializer }, align 32
@lbs_associate._entry_ptr.88 = internal global ptr @lbs_associate._entry.86, section ".printk_index", align 4
@lbs_associate._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.71, ptr @.str, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libertas assoc: association failure %d\0A\00", [54 x i8] zeroinitializer }, align 32
@lbs_associate._entry_ptr.91 = internal global ptr @lbs_associate._entry.89, section ".printk_index", align 4
@lbs_associate._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.71, ptr @.str, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\017libertas assoc: status %d, statuscode 0x%04x, capability 0x%04x, aid 0x%04x\0A\00", [49 x i8] zeroinitializer }, align 32
@lbs_associate._entry_ptr.94 = internal global ptr @lbs_associate._entry.92, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.97 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@lbs_add_common_rates_tlv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017libertas assoc: assoc: bss had no basic rate IE\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lbs_add_common_rates_tlv\00", [39 x i8] zeroinitializer }, align 32
@lbs_add_common_rates_tlv._entry_ptr = internal global ptr @lbs_add_common_rates_tlv._entry, section ".printk_index", align 4
@add_ie_rates._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017libertas assoc: invalid rates\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"add_ie_rates\00", [19 x i8] zeroinitializer }, align 32
@add_ie_rates._entry_ptr = internal global ptr @add_ie_rates._entry, section ".printk_index", align 4
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AP IE Rates\00", [20 x i8] zeroinitializer }, align 32
@lbs_ibss_join_existing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str, i32 1787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017libertas join: invalid rates\00", [33 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lbs_ibss_join_existing\00", [41 x i8] zeroinitializer }, align 32
@lbs_ibss_join_existing._entry_ptr = internal global ptr @lbs_ibss_join_existing._entry, section ".printk_index", align 4
@.str.105 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IE\00", [29 x i8] zeroinitializer }, align 32
@lbs_2ghz_channels = internal global { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 30, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SCAN_CMD\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SCAN_TLV\00", [23 x i8] zeroinitializer }, align 32
@lbs_scan_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libertas scan: scan: waking up waiters\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lbs_scan_worker\00", [16 x i8] zeroinitializer }, align 32
@lbs_scan_worker._entry_ptr = internal global ptr @lbs_scan_worker._entry, section ".printk_index", align 4
@lbs_ret_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017libertas scan: scan response: %d BSSs (%d bytes); resp size %d bytes\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lbs_ret_scan\00", [19 x i8] zeroinitializer }, align 32
@lbs_ret_scan._entry_ptr = internal global ptr @lbs_ret_scan._entry, section ".printk_index", align 4
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SCAN_RSP\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SCAN_TSF\00", [23 x i8] zeroinitializer }, align 32
@lbs_ret_scan._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.111, ptr @.str, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017libertas scan: scan response: invalid TSF Timestamp %d\0A\00", [38 x i8] zeroinitializer }, align 32
@lbs_ret_scan._entry_ptr.116 = internal global ptr @lbs_ret_scan._entry.114, section ".printk_index", align 4
@lbs_ret_scan._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.111, ptr @.str, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\017libertas scan: scan response: invalid number of TSF timestamp sets (expected %d got %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@lbs_ret_scan._entry_ptr.119 = internal global ptr @lbs_ret_scan._entry.117, section ".printk_index", align 4
@lbs_ret_scan._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.111, ptr @.str, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017libertas scan: scan response: invalid IE fmt\0A\00", [48 x i8] zeroinitializer }, align 32
@lbs_ret_scan._entry_ptr.122 = internal global ptr @lbs_ret_scan._entry.120, section ".printk_index", align 4
@lbs_ret_scan._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.111, ptr @.str, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017libertas scan: scan: %pM, capa %04x, chan %2d, %*pE, %d dBm\0A\00", [33 x i8] zeroinitializer }, align 32
@lbs_ret_scan._entry_ptr.125 = internal global ptr @lbs_ret_scan._entry.123, section ".printk_index", align 4
@lbs_ret_scan._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.111, ptr @.str, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017libertas scan: scan response: missing BSS channel IE\0A\00", [40 x i8] zeroinitializer }, align 32
@lbs_ret_scan._entry_ptr.128 = internal global ptr @lbs_ret_scan._entry.126, section ".printk_index", align 4
@lbs_cfg_set_regulatory_hint.regmap = internal constant { [6 x %struct.region_code_mapping], [48 x i8] } { [6 x %struct.region_code_mapping] [%struct.region_code_mapping { ptr @.str.129, i32 16 }, %struct.region_code_mapping { ptr @.str.130, i32 32 }, %struct.region_code_mapping { ptr @.str.131, i32 48 }, %struct.region_code_mapping { ptr @.str.132, i32 49 }, %struct.region_code_mapping { ptr @.str.133, i32 50 }, %struct.region_code_mapping { ptr @.str.134, i32 64 }], [48 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"US \00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CA \00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EU \00", [28 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ES \00", [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FR \00", [28 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"JP \00", [28 x i8] zeroinitializer }, align 32
@switch.table.lbs_cfg_connect = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 0, i32 128, i32 0, i32 0, i32 0, i32 0, i32 0], [60 x i8] zeroinitializer }, align 32
@switch.table.lbs_cfg_connect.135 = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 0, i16 1, i16 -524, i16 128, i16 -524, i16 -524, i16 -524, i16 -524, i16 0], [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 16, i64 32, i64 48, i64 49, i64 50, i64 64]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.137 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.139 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.140 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.141 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@__sancov_gen_cov_switch_values.143 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.144 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.145 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.146 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.147 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.148 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.149 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.150 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.151 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.152 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.153 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 11, i64 22]
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 781, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"lbs_cfg80211_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 2017, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 2051, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [14 x i8] c"lbs_band_2ghz\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 75, i32 40 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"cipher_suites\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 83, i32 18 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 2132, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 2138, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 2140, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1471, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1473, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1476, i32 33 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1479, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1481, i32 33 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1511, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 96, i32 6 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 97, i32 5 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 99, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/marvell/libertas/defs.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 102, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1524, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1450, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [10 x i8] c"lbs_rates\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 60, i32 30 }
@___asan_gen_.291 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 778, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 765, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1294, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1305, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1308, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1312, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1320, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1325, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1326, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1378, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1386, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1108, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1115, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1123, i32 29 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1137, i32 29 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1173, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1177, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1181, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1185, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1189, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1197, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 695, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 723, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 326, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 277, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 283, i32 29 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1787, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1693, i32 32 }
@___asan_gen_.458 = private unnamed_addr constant [18 x i8] c"lbs_2ghz_channels\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 35, i32 33 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 732, i32 28 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 734, i32 28 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 757, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 513, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 548, i32 28 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 553, i32 28 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 559, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 570, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 618, i32 5 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 640, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 655, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant [7 x i8] c"regmap\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 2072, i32 42 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 2073, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 2074, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 2075, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 2076, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 2077, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.540 = private constant [47 x i8] c"../drivers/net/wireless/marvell/libertas/cfg.c\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 2078, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant [29 x i8] c"switch.table.lbs_cfg_connect\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [33 x i8] c"switch.table.lbs_cfg_connect.135\00", align 1
@llvm.compiler.used = appending global [172 x ptr] [ptr @_internal_start_scan._entry, ptr @_internal_start_scan._entry_ptr, ptr @add_ie_rates._entry, ptr @add_ie_rates._entry_ptr, ptr @lbs_add_common_rates_tlv._entry, ptr @lbs_add_common_rates_tlv._entry_ptr, ptr @lbs_associate._entry, ptr @lbs_associate._entry.72, ptr @lbs_associate._entry.77, ptr @lbs_associate._entry.80, ptr @lbs_associate._entry.83, ptr @lbs_associate._entry.86, ptr @lbs_associate._entry.89, ptr @lbs_associate._entry.92, ptr @lbs_associate._entry_ptr, ptr @lbs_associate._entry_ptr.74, ptr @lbs_associate._entry_ptr.79, ptr @lbs_associate._entry_ptr.82, ptr @lbs_associate._entry_ptr.85, ptr @lbs_associate._entry_ptr.88, ptr @lbs_associate._entry_ptr.91, ptr @lbs_associate._entry_ptr.94, ptr @lbs_cfg_add_key._entry, ptr @lbs_cfg_add_key._entry.15, ptr @lbs_cfg_add_key._entry.19, ptr @lbs_cfg_add_key._entry.23, ptr @lbs_cfg_add_key._entry_ptr, ptr @lbs_cfg_add_key._entry_ptr.17, ptr @lbs_cfg_add_key._entry_ptr.21, ptr @lbs_cfg_add_key._entry_ptr.25, ptr @lbs_cfg_alloc._entry, ptr @lbs_cfg_alloc._entry_ptr, ptr @lbs_cfg_connect._entry, ptr @lbs_cfg_connect._entry.46, ptr @lbs_cfg_connect._entry.49, ptr @lbs_cfg_connect._entry.52, ptr @lbs_cfg_connect._entry.55, ptr @lbs_cfg_connect._entry.58, ptr @lbs_cfg_connect._entry.61, ptr @lbs_cfg_connect._entry.64, ptr @lbs_cfg_connect._entry.67, ptr @lbs_cfg_connect._entry_ptr, ptr @lbs_cfg_connect._entry_ptr.48, ptr @lbs_cfg_connect._entry_ptr.51, ptr @lbs_cfg_connect._entry_ptr.54, ptr @lbs_cfg_connect._entry_ptr.57, ptr @lbs_cfg_connect._entry_ptr.60, ptr @lbs_cfg_connect._entry_ptr.63, ptr @lbs_cfg_connect._entry_ptr.66, ptr @lbs_cfg_connect._entry_ptr.69, ptr @lbs_cfg_del_key._entry, ptr @lbs_cfg_del_key._entry_ptr, ptr @lbs_cfg_register._entry, ptr @lbs_cfg_register._entry.7, ptr @lbs_cfg_register._entry_ptr, ptr @lbs_cfg_register._entry_ptr.9, ptr @lbs_cfg_set_default_key._entry, ptr @lbs_cfg_set_default_key._entry_ptr, ptr @lbs_deb_hex._entry, ptr @lbs_deb_hex._entry.29, ptr @lbs_deb_hex._entry.32, ptr @lbs_deb_hex._entry.35, ptr @lbs_deb_hex._entry_ptr, ptr @lbs_deb_hex._entry_ptr.31, ptr @lbs_deb_hex._entry_ptr.34, ptr @lbs_deb_hex._entry_ptr.36, ptr @lbs_ibss_join_existing._entry, ptr @lbs_ibss_join_existing._entry_ptr, ptr @lbs_ret_scan._entry, ptr @lbs_ret_scan._entry.114, ptr @lbs_ret_scan._entry.117, ptr @lbs_ret_scan._entry.120, ptr @lbs_ret_scan._entry.123, ptr @lbs_ret_scan._entry.126, ptr @lbs_ret_scan._entry_ptr, ptr @lbs_ret_scan._entry_ptr.116, ptr @lbs_ret_scan._entry_ptr.119, ptr @lbs_ret_scan._entry_ptr.122, ptr @lbs_ret_scan._entry_ptr.125, ptr @lbs_ret_scan._entry_ptr.128, ptr @lbs_scan_worker._entry, ptr @lbs_scan_worker._entry_ptr, ptr @.str, ptr @lbs_cfg80211_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @lbs_band_2ghz, ptr @cipher_suites, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @lbs_cfg_register.__key, ptr @.str.10, ptr @lbs_cfg_register.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @lbs_rates, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @lbs_2ghz_channels, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @lbs_cfg_set_regulatory_hint.regmap, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @switch.table.lbs_cfg_connect, ptr @switch.table.lbs_cfg_connect.135], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg80211_ops to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_band_2ghz to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cipher_suites to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_register._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_register.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_add_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_add_key._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_add_key._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_add_key._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_del_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_set_default_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_internal_start_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_connect._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_connect._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_connect._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_connect._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_connect._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_connect._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_connect._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_connect._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_associate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_associate._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_associate._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_associate._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_associate._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_associate._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_associate._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_associate._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_add_common_rates_tlv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_ie_rates._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_ibss_join_existing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_2ghz_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_scan_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_ret_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_ret_scan._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_ret_scan._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_ret_scan._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_ret_scan._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_ret_scan._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cfg_set_regulatory_hint.regmap to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lbs_cfg_connect to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lbs_cfg_connect.135 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_scan_done(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_req = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_req, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !250

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 781, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %internal_scan = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 98
  %2 = ptrtoint ptr %internal_scan to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %internal_scan, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool21.not = icmp eq i8 %3, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scan_req, align 4
  tail call void @kfree(ptr noundef %5) #11
  br label %if.end25

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #11
  %6 = call ptr @memset(ptr %info, i32 0, i32 16)
  %7 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scan_req, align 4
  call void @cfg80211_scan_done(ptr noundef %8, ptr noundef nonnull %info) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #11
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22
  %9 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %scan_req, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_send_disconnect_notification(ptr nocapture noundef readonly %priv, i1 noundef zeroext %locally_generated) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @cfg80211_disconnected(ptr noundef %1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext %locally_generated, i32 noundef 3264) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_send_mic_failureevent(ptr noundef %priv, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %assoc_bss = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %event)
  %cmp = icmp ne i32 %event, 13
  %cond = zext i1 %cmp to i32
  tail call void @cfg80211_michael_mic_failure(ptr noundef %1, ptr noundef %assoc_bss, i32 noundef %cond, i32 noundef -1, ptr noundef null, i32 noundef 3264) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_michael_mic_failure(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_disconnect(ptr noundef %priv, i16 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_deauthenticate, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_802_11_deauthenticate, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_802_11_deauthenticate, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %cmd, align 8
  %assoc_bss = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 8
  %4 = call ptr @memcpy(ptr %1, ptr %assoc_bss, i32 6)
  %5 = tail call i16 @llvm.bswap.i16(i16 %reason)
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %2, align 2
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4096, ptr %0, align 2
  %8 = ptrtoint ptr %cmd to i32
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 36, ptr noundef nonnull %cmd, i32 noundef 16, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  call void @cfg80211_disconnected(ptr noundef %10, i16 noundef zeroext %reason, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i32 noundef 3264) #11
  %connect_status = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %connect_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %connect_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #11
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__lbs_cmd(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_cmd_copyback(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lbs_cfg_alloc(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 964) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @wiphy_new_nm(ptr noundef nonnull @lbs_cfg80211_ops, i32 noundef 8284, ptr noundef null) #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %call7.i.i, align 8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_cfg_register(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wdev1 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %wdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %max_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %max_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %max_scan_ssids, align 32
  %5 = load ptr, ptr %1, align 4
  %signal_type = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %signal_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %signal_type, align 8
  %7 = load ptr, ptr %1, align 4
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 6, ptr %interface_modes, align 4
  %call = tail call i32 @lbs_rtap_supported(ptr noundef %priv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %interface_modes5 = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %interface_modes5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %interface_modes5, align 4
  %13 = or i16 %12, 64
  store i16 %13, ptr %interface_modes5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mesh_tlv.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 13
  %14 = ptrtoint ptr %mesh_tlv.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mesh_tlv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.i.not = icmp eq i16 %15, 0
  br i1 %tobool.i.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %interface_modes10 = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %interface_modes10 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %interface_modes10, align 4
  %20 = or i16 %19, 128
  store i16 %20, ptr %interface_modes10, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.if.end14_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %bands = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 53
  %23 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @lbs_band_2ghz, ptr %bands, align 16
  %24 = load ptr, ptr %1, align 4
  %cipher_suites = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 28
  %25 = ptrtoint ptr %cipher_suites to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @cipher_suites, ptr %cipher_suites, align 8
  %26 = load ptr, ptr %1, align 4
  %n_cipher_suites = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %n_cipher_suites to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %n_cipher_suites, align 4
  %28 = load ptr, ptr %1, align 4
  %reg_notifier = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 54
  %29 = ptrtoint ptr %reg_notifier to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @lbs_reg_notifier, ptr %reg_notifier, align 8
  %30 = load ptr, ptr %1, align 4
  %call20 = tail call i32 @wiphy_register(ptr noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end, label %if.end14.if.end24_crit_edge

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.end14.if.end24_crit_edge
  %wiphy_registered = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 6
  %31 = ptrtoint ptr %wiphy_registered to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %wiphy_registered, align 4
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  %call25 = tail call i32 @register_netdev(ptr noundef %33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.do.body35_crit_edge, label %do.end30

if.end24.do.body35_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #15
  br label %do.body35

do.body35:                                        ; preds = %do.end30, %if.end24.do.body35_crit_edge
  %scan_work = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 95
  tail call void @__init_work(ptr noundef %scan_work, i32 noundef 0) #11
  %34 = ptrtoint ptr %scan_work to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %scan_work, align 4
  %lockdep_map = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 95, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @lbs_cfg_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry42 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 95, i32 0, i32 1
  %35 = ptrtoint ptr %entry42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry42, ptr %entry42, align 4
  %prev.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 95, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry42, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 95, i32 0, i32 2
  %37 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @lbs_scan_worker, ptr %func, align 4
  %timer = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 95, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.12, ptr noundef nonnull @lbs_cfg_register.__key.11) #11
  %regioncode.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 55
  %38 = ptrtoint ptr %regioncode.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %regioncode.i, align 4
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i16 %39, label %do.body35.lbs_cfg_set_regulatory_hint.exit_crit_edge [
    i16 16, label %do.body35.if.then.i_crit_edge
    i16 32, label %if.then.fold.split.i
    i16 48, label %if.then.fold.split11.i
    i16 49, label %if.then.fold.split12.i
    i16 50, label %if.then.fold.split13.i
    i16 64, label %if.then.fold.split14.i
  ]

do.body35.if.then.i_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.body35.lbs_cfg_set_regulatory_hint.exit_crit_edge: ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_cfg_set_regulatory_hint.exit

if.then.fold.split.i:                             ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.fold.split11.i:                           ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.fold.split12.i:                           ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.fold.split13.i:                           ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.fold.split14.i:                           ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split.i, %do.body35.if.then.i_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %do.body35.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split11.i ], [ 3, %if.then.fold.split12.i ], [ 4, %if.then.fold.split13.i ], [ 5, %if.then.fold.split14.i ]
  %arrayidx.i = getelementptr [6 x %struct.region_code_mapping], ptr @lbs_cfg_set_regulatory_hint.regmap, i32 0, i32 %i.09.lcssa.i
  %41 = ptrtoint ptr %wdev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wdev1, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @regulatory_hint(ptr noundef %44, ptr noundef %46) #11
  br label %lbs_cfg_set_regulatory_hint.exit

lbs_cfg_set_regulatory_hint.exit:                 ; preds = %if.then.i, %do.body35.lbs_cfg_set_regulatory_hint.exit_crit_edge
  ret i32 %call25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_rtap_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lbs_reg_notifier(ptr noundef %wiphy, ptr nocapture noundef readonly %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !250

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #11, !srcloc !252
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %country_code = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 43
  %alpha2 = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %country_code, ptr %alpha2, i32 3)
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i.i, align 4
  %mesh_dev.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 45
  %5 = ptrtoint ptr %mesh_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mesh_dev.i, align 4
  %tobool.not.i6 = icmp eq ptr %6, null
  br i1 %tobool.not.i6, label %wiphy_priv.exit.lbs_iface_active.exit_crit_edge, label %if.then.i

wiphy_priv.exit.lbs_iface_active.exit_crit_edge:  ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_iface_active.exit

if.then.i:                                        ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  %state.i8.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %state.i8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i8.i, align 4
  %9 = or i32 %8, %4
  br label %lbs_iface_active.exit

lbs_iface_active.exit:                            ; preds = %if.then.i, %wiphy_priv.exit.lbs_iface_active.exit_crit_edge
  %r.0.in.in.in.i = phi i32 [ %9, %if.then.i ], [ %4, %wiphy_priv.exit.lbs_iface_active.exit_crit_edge ]
  %r.0.in.in.i = and i32 %r.0.in.in.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.in.in.i)
  %tobool.not = icmp eq i32 %r.0.in.in.i, 0
  br i1 %tobool.not, label %lbs_iface_active.exit.if.end_crit_edge, label %if.then

lbs_iface_active.exit.if.end_crit_edge:           ; preds = %lbs_iface_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %lbs_iface_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @lbs_set_11d_domain_info(ptr noundef %priv.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %lbs_iface_active.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lbs_scan_worker(ptr noundef %work) #0 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8048
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 99) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bsstype = getelementptr inbounds %struct.cmd_ds_802_11_scan, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %bsstype to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %bsstype, align 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.i.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  br i1 %tobool.not.i, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void @netif_carrier_off(ptr noundef %12) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %tlvbuffer = getelementptr inbounds %struct.cmd_ds_802_11_scan, ptr %call7.i.i, i32 0, i32 3
  %scan_req = getelementptr i8, ptr %work, i32 -7792
  %13 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scan_req, align 4
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %if.end10.if.end28_crit_edge, label %land.lhs.true

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end10
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 8
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ssid_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp14.not = icmp eq i8 %20, 0
  br i1 %cmp14.not, label %land.lhs.true.if.end28_crit_edge, label %if.then16

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %conv13 = zext i8 %20 to i32
  %21 = ptrtoint ptr %tlvbuffer to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 0, ptr %tlvbuffer, align 1
  %conv.i = zext i8 %20 to i16
  %22 = shl nuw i16 %conv.i, 8
  %len.i = getelementptr inbounds %struct.cmd_ds_802_11_scan, ptr %call7.i.i, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %len.i, align 1
  %ssid2.i = getelementptr inbounds %struct.cmd_ds_802_11_scan, ptr %call7.i.i, i32 1, i32 0, i32 2
  %24 = call ptr @memcpy(ptr %ssid2.i, ptr %18, i32 %conv13)
  %add.i = add nuw nsw i32 %conv13, 4
  %add.ptr27 = getelementptr i8, ptr %tlvbuffer, i32 %add.i
  br label %if.end28

if.end28:                                         ; preds = %if.then16, %land.lhs.true.if.end28_crit_edge, %if.end10.if.end28_crit_edge
  %tlv.0 = phi ptr [ %add.ptr27, %if.then16 ], [ %tlvbuffer, %land.lhs.true.if.end28_crit_edge ], [ %tlvbuffer, %if.end10.if.end28_crit_edge ]
  %scan_channel = getelementptr i8, ptr %work, i32 100
  %25 = ptrtoint ptr %scan_channel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_channel, align 4
  %add = add i32 %26, 4
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %14, i32 0, i32 2
  %27 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_channels, align 8
  %29 = tail call i32 @llvm.umin.i32(i32 %add, i32 %28)
  %30 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_ssids, align 4
  %sub.i = sub i32 %29, %26
  %mul.i = mul i32 %sub.i, 7
  %32 = ptrtoint ptr %tlv.0 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 257, ptr %tlv.0, align 1
  %conv.i158 = trunc i32 %mul.i to i16
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv.i158) #11
  %len.i159 = getelementptr inbounds %struct.mrvl_ie_header, ptr %tlv.0, i32 0, i32 1
  %34 = ptrtoint ptr %len.i159 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %len.i159, align 1
  %add.ptr.i = getelementptr i8, ptr %tlv.0, i32 4
  %35 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %mul.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %26)
  %cmp24.i = icmp sgt i32 %29, %26
  br i1 %cmp24.i, label %while.body.lr.ph.i, label %if.end28.lbs_add_channel_list_tlv.exit_crit_edge

if.end28.lbs_add_channel_list_tlv.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_add_channel_list_tlv.exit

while.body.lr.ph.i:                               ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i160 = icmp eq i32 %31, 0
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %tlv.addr.025.i = phi ptr [ %add.ptr.i, %while.body.lr.ph.i ], [ %add.ptr6.i, %if.end.i.while.body.i_crit_edge ]
  %36 = ptrtoint ptr %tlv.addr.025.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %tlv.addr.025.i, align 1
  %37 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %scan_req, align 4
  %39 = ptrtoint ptr %scan_channel to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scan_channel, align 4
  %arrayidx.i = getelementptr %struct.cfg80211_scan_request, ptr %38, i32 0, i32 22, i32 %40
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hw_value.i, align 2
  %conv4.i = trunc i16 %44 to i8
  %channumber.i = getelementptr inbounds %struct.chanscanparamset, ptr %tlv.addr.025.i, i32 0, i32 1
  %45 = ptrtoint ptr %channumber.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv4.i, ptr %channumber.i, align 1
  br i1 %tobool.not.i160, label %if.else.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %chanscanmode.i = getelementptr inbounds %struct.chanscanparamset, ptr %tlv.addr.025.i, i32 0, i32 2
  %46 = ptrtoint ptr %chanscanmode.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i = load i8, ptr %chanscanmode.i, align 1
  %bf.set.i = or i8 %bf.load.i, 1
  store i8 %bf.set.i, ptr %chanscanmode.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %while.body.i.if.end.i_crit_edge
  %.sink.i = phi i16 [ 25600, %if.else.i ], [ 10240, %while.body.i.if.end.i_crit_edge ]
  %47 = getelementptr inbounds %struct.chanscanparamset, ptr %tlv.addr.025.i, i32 0, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %.sink.i, ptr %47, align 1
  %add.ptr6.i = getelementptr i8, ptr %tlv.addr.025.i, i32 7
  %49 = ptrtoint ptr %scan_channel to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scan_channel, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %scan_channel, align 4
  %cmp.i = icmp slt i32 %inc.i, %29
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.lbs_add_channel_list_tlv.exit_crit_edge

if.end.i.lbs_add_channel_list_tlv.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_add_channel_list_tlv.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

lbs_add_channel_list_tlv.exit:                    ; preds = %if.end.i.lbs_add_channel_list_tlv.exit_crit_edge, %if.end28.lbs_add_channel_list_tlv.exit_crit_edge
  %add.i161 = add i32 %mul.i, 4
  %add.ptr39 = getelementptr i8, ptr %tlv.0, i32 %add.i161
  %51 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 256, ptr %add.ptr39, align 1
  %add.ptr.i162 = getelementptr i8, ptr %add.ptr39, i32 4
  tail call fastcc void @lbs_add_rates(ptr noundef %add.ptr.i162) #11
  %len.i163 = getelementptr inbounds %struct.mrvl_ie_header, ptr %add.ptr39, i32 0, i32 1
  %52 = ptrtoint ptr %len.i163 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 3072, ptr %len.i163, align 1
  %add.ptr41 = getelementptr i8, ptr %add.ptr39, i32 16
  %53 = ptrtoint ptr %scan_channel to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %scan_channel, align 4
  %55 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %scan_req, align 4
  %n_channels44 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %n_channels44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %n_channels44, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %58)
  %cmp45 = icmp ult i32 %54, %58
  br i1 %cmp45, label %if.then47, label %lbs_add_channel_list_tlv.exit.if.end56_crit_edge

lbs_add_channel_list_tlv.exit.if.end56_crit_edge: ; preds = %lbs_add_channel_list_tlv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then47:                                        ; preds = %lbs_add_channel_list_tlv.exit
  %call48 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #11
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr, align 4
  %state.i164 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %state.i164 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %state.i164, align 4
  %and1.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then47.if.end56_crit_edge, label %if.then51

if.then47.if.end56_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  %work_thread = getelementptr i8, ptr %work, i32 -2592
  %63 = ptrtoint ptr %work_thread to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %work_thread, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %64, ptr noundef %work, i32 noundef 30) #11
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.then47.if.end56_crit_edge, %lbs_add_channel_list_tlv.exit.if.end56_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr41 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call7.i.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv57 = trunc i32 %sub.ptr.sub to i16
  %65 = tail call i16 @llvm.bswap.i16(i16 %conv57)
  %size = getelementptr inbounds %struct.cmd_header, ptr %call7.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %size, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %67 = load i32, ptr @lbs_debug, align 4
  %68 = and i32 %67, 2097280
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097280, i32 %68)
  %.not = icmp eq i32 %68, 2097280
  br i1 %.not, label %for.body.i.peel.next, label %if.end56.lbs_deb_hex.exit_crit_edge

if.end56.lbs_deb_hex.exit_crit_edge:              ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_deb_hex.exit

for.body.i.peel.next:                             ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.106) #15
  %69 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %call7.i.i, align 8
  %conv.i166.peel = zext i8 %70 to i32
  %call20.i.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.peel) #15
  %buf.addr.035.i = getelementptr i8, ptr %call7.i.i, i32 1
  %71 = ptrtoint ptr %buf.addr.035.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %buf.addr.035.i, align 1
  %conv.i166 = zext i8 %72 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166) #15
  %buf.addr.035.i.1 = getelementptr i8, ptr %call7.i.i, i32 2
  %73 = ptrtoint ptr %buf.addr.035.i.1 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %buf.addr.035.i.1, align 2
  %conv.i166.1 = zext i8 %74 to i32
  %call20.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.1) #15
  %buf.addr.035.i.2 = getelementptr i8, ptr %call7.i.i, i32 3
  %75 = ptrtoint ptr %buf.addr.035.i.2 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %buf.addr.035.i.2, align 1
  %conv.i166.2 = zext i8 %76 to i32
  %call20.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.2) #15
  %buf.addr.035.i.3 = getelementptr i8, ptr %call7.i.i, i32 4
  %77 = ptrtoint ptr %buf.addr.035.i.3 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %buf.addr.035.i.3, align 4
  %conv.i166.3 = zext i8 %78 to i32
  %call20.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.3) #15
  %buf.addr.035.i.4 = getelementptr i8, ptr %call7.i.i, i32 5
  %79 = ptrtoint ptr %buf.addr.035.i.4 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %buf.addr.035.i.4, align 1
  %conv.i166.4 = zext i8 %80 to i32
  %call20.i.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.4) #15
  %buf.addr.035.i.5 = getelementptr i8, ptr %call7.i.i, i32 6
  %81 = ptrtoint ptr %buf.addr.035.i.5 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %buf.addr.035.i.5, align 2
  %conv.i166.5 = zext i8 %82 to i32
  %call20.i.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.5) #15
  %buf.addr.035.i.6 = getelementptr i8, ptr %call7.i.i, i32 7
  %83 = ptrtoint ptr %buf.addr.035.i.6 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %buf.addr.035.i.6, align 1
  %conv.i166.6 = zext i8 %84 to i32
  %call20.i.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.6) #15
  %buf.addr.035.i.7 = getelementptr i8, ptr %call7.i.i, i32 8
  %85 = ptrtoint ptr %buf.addr.035.i.7 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %buf.addr.035.i.7, align 8
  %conv.i166.7 = zext i8 %86 to i32
  %call20.i.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.7) #15
  %buf.addr.035.i.8 = getelementptr i8, ptr %call7.i.i, i32 9
  %87 = ptrtoint ptr %buf.addr.035.i.8 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %buf.addr.035.i.8, align 1
  %conv.i166.8 = zext i8 %88 to i32
  %call20.i.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.8) #15
  %buf.addr.035.i.9 = getelementptr i8, ptr %call7.i.i, i32 10
  %89 = ptrtoint ptr %buf.addr.035.i.9 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %buf.addr.035.i.9, align 2
  %conv.i166.9 = zext i8 %90 to i32
  %call20.i.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.9) #15
  %buf.addr.035.i.10 = getelementptr i8, ptr %call7.i.i, i32 11
  %91 = ptrtoint ptr %buf.addr.035.i.10 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %buf.addr.035.i.10, align 1
  %conv.i166.10 = zext i8 %92 to i32
  %call20.i.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.10) #15
  %buf.addr.035.i.11 = getelementptr i8, ptr %call7.i.i, i32 12
  %93 = ptrtoint ptr %buf.addr.035.i.11 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %buf.addr.035.i.11, align 4
  %conv.i166.11 = zext i8 %94 to i32
  %call20.i.11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.11) #15
  %buf.addr.035.i.12 = getelementptr i8, ptr %call7.i.i, i32 13
  %95 = ptrtoint ptr %buf.addr.035.i.12 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %buf.addr.035.i.12, align 1
  %conv.i166.12 = zext i8 %96 to i32
  %call20.i.12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.12) #15
  %buf.addr.035.i.13 = getelementptr i8, ptr %call7.i.i, i32 14
  %97 = ptrtoint ptr %buf.addr.035.i.13 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %buf.addr.035.i.13, align 2
  %conv.i166.13 = zext i8 %98 to i32
  %call20.i.13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i166.13) #15
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %lbs_deb_hex.exit

lbs_deb_hex.exit:                                 ; preds = %for.body.i.peel.next, %if.end56.lbs_deb_hex.exit_crit_edge
  %sub.ptr.rhs.cast63 = ptrtoint ptr %tlvbuffer to i32
  %sub.ptr.sub64 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast63
  %tobool.not.i168 = icmp eq ptr %add.ptr41, %tlvbuffer
  br i1 %tobool.not.i168, label %lbs_deb_hex.exit.lbs_deb_hex.exit194_crit_edge, label %land.lhs.true.i

lbs_deb_hex.exit.lbs_deb_hex.exit194_crit_edge:   ; preds = %lbs_deb_hex.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_deb_hex.exit194

land.lhs.true.i:                                  ; preds = %lbs_deb_hex.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %99 = load i32, ptr @lbs_debug, align 4
  %100 = and i32 %99, 2097280
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097280, i32 %100)
  %.not201 = icmp eq i32 %100, 2097280
  br i1 %.not201, label %for.cond.preheader.i174, label %land.lhs.true.i.lbs_deb_hex.exit194_crit_edge

land.lhs.true.i.lbs_deb_hex.exit194_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_deb_hex.exit194

for.cond.preheader.i174:                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub64)
  %cmp.not32.i = icmp slt i32 %sub.ptr.sub64, 1
  br i1 %cmp.not32.i, label %for.cond.preheader.i174.do.end23.i193_crit_edge, label %for.cond.preheader.i174.for.body.i179_crit_edge

for.cond.preheader.i174.for.body.i179_crit_edge:  ; preds = %for.cond.preheader.i174
  br label %for.body.i179

for.cond.preheader.i174.do.end23.i193_crit_edge:  ; preds = %for.cond.preheader.i174
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i193

for.body.i179:                                    ; preds = %do.end18.i191.for.body.i179_crit_edge, %for.cond.preheader.i174.for.body.i179_crit_edge
  %buf.addr.035.i175 = phi ptr [ %incdec.ptr.i188, %do.end18.i191.for.body.i179_crit_edge ], [ %tlvbuffer, %for.cond.preheader.i174.for.body.i179_crit_edge ]
  %i.033.i176 = phi i32 [ %inc.i189, %do.end18.i191.for.body.i179_crit_edge ], [ 1, %for.cond.preheader.i174.for.body.i179_crit_edge ]
  %and5.i177 = and i32 %i.033.i176, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i177)
  %cmp6.i178 = icmp eq i32 %and5.i177, 1
  br i1 %cmp6.i178, label %if.then7.i181, label %for.body.i179.do.end18.i191_crit_edge

for.body.i179.do.end18.i191_crit_edge:            ; preds = %for.body.i179
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i191

if.then7.i181:                                    ; preds = %for.body.i179
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.033.i176)
  %cmp8.not.i180 = icmp eq i32 %i.033.i176, 1
  br i1 %cmp8.not.i180, label %if.then7.i181.do.end12.i185_crit_edge, label %do.end.i183

if.then7.i181.do.end12.i185_crit_edge:            ; preds = %if.then7.i181
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i185

do.end.i183:                                      ; preds = %if.then7.i181
  call void @__sanitizer_cov_trace_pc() #13
  %call.i182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %do.end12.i185

do.end12.i185:                                    ; preds = %do.end.i183, %if.then7.i181.do.end12.i185_crit_edge
  %call14.i184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.107) #15
  br label %do.end18.i191

do.end18.i191:                                    ; preds = %do.end12.i185, %for.body.i179.do.end18.i191_crit_edge
  %101 = ptrtoint ptr %buf.addr.035.i175 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %buf.addr.035.i175, align 1
  %conv.i186 = zext i8 %102 to i32
  %call20.i187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i186) #15
  %incdec.ptr.i188 = getelementptr i8, ptr %buf.addr.035.i175, i32 1
  %inc.i189 = add i32 %i.033.i176, 1
  %cmp.not.i190 = icmp sgt i32 %inc.i189, %sub.ptr.sub64
  br i1 %cmp.not.i190, label %do.end18.i191.do.end23.i193_crit_edge, label %do.end18.i191.for.body.i179_crit_edge

do.end18.i191.for.body.i179_crit_edge:            ; preds = %do.end18.i191
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i179

do.end18.i191.do.end23.i193_crit_edge:            ; preds = %do.end18.i191
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i193

do.end23.i193:                                    ; preds = %do.end18.i191.do.end23.i193_crit_edge, %for.cond.preheader.i174.do.end23.i193_crit_edge
  %call25.i192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %lbs_deb_hex.exit194

lbs_deb_hex.exit194:                              ; preds = %do.end23.i193, %land.lhs.true.i.lbs_deb_hex.exit194_crit_edge, %lbs_deb_hex.exit.lbs_deb_hex.exit194_crit_edge
  %103 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %size, align 2
  %105 = tail call i16 @llvm.bswap.i16(i16 %104)
  %conv68 = zext i16 %105 to i32
  %call69 = tail call i32 @__lbs_cmd(ptr noundef %add.ptr, i16 noundef zeroext 6, ptr noundef nonnull %call7.i.i, i32 noundef %conv68, ptr noundef nonnull @lbs_ret_scan, i32 noundef 0) #11
  %106 = ptrtoint ptr %scan_channel to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %scan_channel, align 4
  %108 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %scan_req, align 4
  %n_channels72 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %n_channels72 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %n_channels72, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %111)
  %cmp73.not = icmp ult i32 %107, %111
  br i1 %cmp73.not, label %lbs_deb_hex.exit194.if.end78_crit_edge, label %if.then75

lbs_deb_hex.exit194.if.end78_crit_edge:           ; preds = %lbs_deb_hex.exit194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then75:                                        ; preds = %lbs_deb_hex.exit194
  %call77 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #11
  %112 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %scan_req, align 4
  %tobool.not.i196 = icmp eq ptr %113, null
  br i1 %tobool.not.i196, label %do.end.i197, label %if.then75.if.end.i198_crit_edge, !prof !250

if.then75.if.end.i198_crit_edge:                  ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i198

do.end.i197:                                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 781, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i198

if.end.i198:                                      ; preds = %do.end.i197, %if.then75.if.end.i198_crit_edge
  %internal_scan.i = getelementptr i8, ptr %work, i32 156
  %114 = ptrtoint ptr %internal_scan.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %internal_scan.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool21.not.i = icmp eq i8 %115, 0
  br i1 %tobool21.not.i, label %if.else.i199, label %if.then22.i

if.then22.i:                                      ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %scan_req, align 4
  tail call void @kfree(ptr noundef %117) #11
  br label %lbs_scan_done.exit

if.else.i199:                                     ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #11
  %118 = call ptr @memset(ptr %info.i, i32 0, i32 16)
  %119 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %scan_req, align 4
  call void @cfg80211_scan_done(ptr noundef %120, ptr noundef nonnull %info.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #11
  br label %lbs_scan_done.exit

lbs_scan_done.exit:                               ; preds = %if.else.i199, %if.then22.i
  %121 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %scan_req, align 4
  br label %if.end78

if.end78:                                         ; preds = %lbs_scan_done.exit, %lbs_deb_hex.exit194.if.end78_crit_edge
  br i1 %tobool.not.i, label %if.then80, label %if.end78.if.end82_crit_edge

if.end78.if.end82_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr, align 4
  call void @netif_carrier_on(ptr noundef %123) #11
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end78.if.end82_crit_edge
  br i1 %tobool.i.i.not, label %land.lhs.true84, label %if.end82.if.end88_crit_edge

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

land.lhs.true84:                                  ; preds = %if.end82
  %tx_pending_len = getelementptr i8, ptr %work, i32 -2520
  %124 = ptrtoint ptr %tx_pending_len to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx_pending_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool85.not = icmp eq i32 %125, 0
  br i1 %tobool85.not, label %if.then86, label %land.lhs.true84.if.end88_crit_edge

land.lhs.true84.if.end88_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then86:                                        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr, align 4
  %_tx.i.i200 = getelementptr inbounds %struct.net_device, ptr %127, i32 0, i32 103
  %128 = ptrtoint ptr %_tx.i.i200 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %_tx.i.i200, align 128
  call void @netif_tx_wake_queue(ptr noundef %129) #11
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %land.lhs.true84.if.end88_crit_edge, %if.end82.if.end88_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %130 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %scan_req, align 4
  %cmp90 = icmp eq ptr %131, null
  br i1 %cmp90, label %do.body, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %132 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %132, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp93.not = icmp eq i32 %and, 0
  br i1 %cmp93.not, label %do.body.do.end101_crit_edge, label %do.end

do.body.do.end101_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end101

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #15
  br label %do.end101

do.end101:                                        ; preds = %do.end, %do.body.do.end101_crit_edge
  %scan_q = getelementptr i8, ptr %work, i32 104
  call void @__wake_up(ptr noundef %scan_q, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end101, %if.end88.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_scan_deinit(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_work = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 95
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scan_work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_cfg_free(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wdev1 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %wdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %wiphy_registered = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 6
  %2 = ptrtoint ptr %wiphy_registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wiphy_registered, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @wiphy_unregister(ptr noundef %5) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wiphy_free(ptr noundef nonnull %7) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_change_intf(ptr noundef %wiphy, ptr noundef readnone %dev, i32 noundef %type, ptr nocapture noundef readnone %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !250

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #11, !srcloc !252
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %mesh_dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 45
  %0 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh_dev, align 4
  %cmp = icmp eq ptr %1, %dev
  br i1 %cmp, label %wiphy_priv.exit.cleanup_crit_edge, label %if.end

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 6, label %if.end.sw.epilog_crit_edge
    i32 2, label %if.end.sw.epilog_crit_edge17
    i32 1, label %if.end.sw.epilog_crit_edge18
  ]

if.end.sw.epilog_crit_edge18:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.epilog_crit_edge17:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge17, %if.end.sw.epilog_crit_edge18
  %iface_running = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 10, i32 1, i32 3
  %3 = ptrtoint ptr %iface_running to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iface_running, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.epilog.if.then5_crit_edge, label %if.end3

sw.epilog.if.then5_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.end3:                                          ; preds = %sw.epilog
  %call2 = tail call i32 @lbs_set_iface_type(ptr noundef %priv.i, i32 noundef %type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.end3.if.then5_crit_edge, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.then5:                                         ; preds = %if.end3.if.then5_crit_edge, %sw.epilog.if.then5_crit_edge
  %wdev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 38, i32 31
  %5 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wdev, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type, ptr %iftype, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %wiphy_priv.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.then5 ], [ %call2, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_cfg_add_key(ptr noundef %wiphy, ptr noundef readnone %netdev, i8 noundef zeroext %idx, i1 noundef zeroext %pairwise, ptr noundef %mac_addr, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_key_material, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !250

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #11, !srcloc !252
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %mesh_dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 45
  %0 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh_dev, align 4
  %cmp = icmp eq ptr %1, %netdev
  br i1 %cmp, label %wiphy_priv.exit.cleanup_crit_edge, label %do.body

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %wiphy_priv.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %2 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %do.body.do.body8_crit_edge, label %do.end

do.body.do.body8_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %cipher = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 5
  %3 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef %mac_addr) #15
  br label %do.body8

do.body8:                                         ; preds = %do.end, %do.body.do.body8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %5 = load i32, ptr @lbs_debug, align 4
  %and9 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10.not = icmp eq i32 %and9, 0
  br i1 %cmp10.not, label %do.body8.do.end19_crit_edge, label %do.end14

do.body8.do.end19_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %idx to i32
  %key_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_len, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %7) #15
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %do.body8.do.end19_crit_edge
  %key_len20 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %key_len20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_len20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end19.do.body24_crit_edge, label %land.lhs.true.i

do.end19.do.body24_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

land.lhs.true.i:                                  ; preds = %do.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %10 = load i32, ptr @lbs_debug, align 4
  %11 = and i32 %10, 35651584
  call void @__sanitizer_cov_trace_const_cmp4(i32 35651584, i32 %11)
  %.not = icmp eq i32 %11, 35651584
  br i1 %.not, label %for.cond.preheader.i, label %land.lhs.true.i.do.body24_crit_edge

land.lhs.true.i.do.body24_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not32.i = icmp slt i32 %9, 1
  br i1 %cmp.not32.i, label %for.cond.preheader.i.do.end23.i_crit_edge, label %for.body.i.preheader

for.cond.preheader.i.do.end23.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %params, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %do.end18.i.for.body.i_crit_edge, %for.body.i.preheader
  %buf.addr.035.i = phi ptr [ %incdec.ptr.i, %do.end18.i.for.body.i_crit_edge ], [ %13, %for.body.i.preheader ]
  %i.033.i = phi i32 [ %inc.i, %do.end18.i.for.body.i_crit_edge ], [ 1, %for.body.i.preheader ]
  %and5.i = and i32 %i.033.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 1
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i.do.end18.i_crit_edge

for.body.i.do.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.033.i)
  %cmp8.not.i = icmp eq i32 %i.033.i, 1
  br i1 %cmp8.not.i, label %if.then7.i.do.end12.i_crit_edge, label %do.end.i

if.then7.i.do.end12.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

do.end.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %if.then7.i.do.end12.i_crit_edge
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.18) #15
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end12.i, %for.body.i.do.end18.i_crit_edge
  %14 = ptrtoint ptr %buf.addr.035.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf.addr.035.i, align 1
  %conv.i = zext i8 %15 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i) #15
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.035.i, i32 1
  %inc.i = add i32 %i.033.i, 1
  %cmp.not.i = icmp sgt i32 %inc.i, %9
  br i1 %cmp.not.i, label %do.end18.i.do.end23.i_crit_edge, label %do.end18.i.for.body.i_crit_edge

do.end18.i.for.body.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end18.i.do.end23.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end18.i.do.end23.i_crit_edge, %for.cond.preheader.i.do.end23.i_crit_edge
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %do.body24

do.body24:                                        ; preds = %do.end23.i, %land.lhs.true.i.do.body24_crit_edge, %do.end19.do.body24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %16 = load i32, ptr @lbs_debug, align 4
  %and25 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp26.not = icmp eq i32 %and25, 0
  br i1 %cmp26.not, label %do.body24.do.end36_crit_edge, label %do.end31

do.body24.do.end36_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

do.end31:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  %seq_len = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 3
  %17 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seq_len, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %18) #15
  br label %do.end36

do.end36:                                         ; preds = %do.end31, %do.body24.do.end36_crit_edge
  %seq_len37 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 3
  %19 = ptrtoint ptr %seq_len37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seq_len37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool38.not = icmp eq i32 %20, 0
  br i1 %tobool38.not, label %do.end36.if.end41_crit_edge, label %land.lhs.true.i131

do.end36.if.end41_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

land.lhs.true.i131:                               ; preds = %do.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %21 = load i32, ptr @lbs_debug, align 4
  %22 = and i32 %21, 35651584
  call void @__sanitizer_cov_trace_const_cmp4(i32 35651584, i32 %22)
  %.not158 = icmp eq i32 %22, 35651584
  br i1 %.not158, label %for.cond.preheader.i133, label %land.lhs.true.i131.if.end41_crit_edge

land.lhs.true.i131.if.end41_crit_edge:            ; preds = %land.lhs.true.i131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

for.cond.preheader.i133:                          ; preds = %land.lhs.true.i131
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.not32.i132 = icmp slt i32 %20, 1
  br i1 %cmp.not32.i132, label %for.cond.preheader.i133.do.end23.i152_crit_edge, label %for.body.i138.preheader

for.cond.preheader.i133.do.end23.i152_crit_edge:  ; preds = %for.cond.preheader.i133
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i152

for.body.i138.preheader:                          ; preds = %for.cond.preheader.i133
  %seq = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 1
  %23 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %seq, align 4
  br label %for.body.i138

for.body.i138:                                    ; preds = %do.end18.i150.for.body.i138_crit_edge, %for.body.i138.preheader
  %buf.addr.035.i134 = phi ptr [ %incdec.ptr.i147, %do.end18.i150.for.body.i138_crit_edge ], [ %24, %for.body.i138.preheader ]
  %i.033.i135 = phi i32 [ %inc.i148, %do.end18.i150.for.body.i138_crit_edge ], [ 1, %for.body.i138.preheader ]
  %and5.i136 = and i32 %i.033.i135, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i136)
  %cmp6.i137 = icmp eq i32 %and5.i136, 1
  br i1 %cmp6.i137, label %if.then7.i140, label %for.body.i138.do.end18.i150_crit_edge

for.body.i138.do.end18.i150_crit_edge:            ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i150

if.then7.i140:                                    ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.033.i135)
  %cmp8.not.i139 = icmp eq i32 %i.033.i135, 1
  br i1 %cmp8.not.i139, label %if.then7.i140.do.end12.i144_crit_edge, label %do.end.i142

if.then7.i140.do.end12.i144_crit_edge:            ; preds = %if.then7.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i144

do.end.i142:                                      ; preds = %if.then7.i140
  call void @__sanitizer_cov_trace_pc() #13
  %call.i141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %do.end12.i144

do.end12.i144:                                    ; preds = %do.end.i142, %if.then7.i140.do.end12.i144_crit_edge
  %call14.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.22) #15
  br label %do.end18.i150

do.end18.i150:                                    ; preds = %do.end12.i144, %for.body.i138.do.end18.i150_crit_edge
  %25 = ptrtoint ptr %buf.addr.035.i134 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf.addr.035.i134, align 1
  %conv.i145 = zext i8 %26 to i32
  %call20.i146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i145) #15
  %incdec.ptr.i147 = getelementptr i8, ptr %buf.addr.035.i134, i32 1
  %inc.i148 = add i32 %i.033.i135, 1
  %cmp.not.i149 = icmp sgt i32 %inc.i148, %20
  br i1 %cmp.not.i149, label %do.end18.i150.do.end23.i152_crit_edge, label %do.end18.i150.for.body.i138_crit_edge

do.end18.i150.for.body.i138_crit_edge:            ; preds = %do.end18.i150
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i138

do.end18.i150.do.end23.i152_crit_edge:            ; preds = %do.end18.i150
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i152

do.end23.i152:                                    ; preds = %do.end18.i150.do.end23.i152_crit_edge, %for.cond.preheader.i133.do.end23.i152_crit_edge
  %call25.i151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %if.end41

if.end41:                                         ; preds = %do.end23.i152, %land.lhs.true.i131.if.end41_crit_edge, %do.end36.if.end41_crit_edge
  %cipher42 = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 5
  %27 = ptrtoint ptr %cipher42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cipher42, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %28, label %do.end86 [
    i32 1027073, label %if.end41.sw.bb_crit_edge
    i32 1027077, label %if.end41.sw.bb_crit_edge159
    i32 1027074, label %if.end41.sw.bb68_crit_edge
    i32 1027076, label %if.end41.sw.bb68_crit_edge160
  ]

if.end41.sw.bb68_crit_edge160:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb68

if.end41.sw.bb68_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb68

if.end41.sw.bb_crit_edge159:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end41.sw.bb_crit_edge:                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end41.sw.bb_crit_edge, %if.end41.sw.bb_crit_edge159
  %idxprom = zext i8 %idx to i32
  %arrayidx = getelementptr %struct.lbs_private, ptr %priv.i, i32 0, i32 76, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv43 = zext i8 %31 to i32
  %32 = ptrtoint ptr %key_len20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %key_len20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv43)
  %cmp45.not = icmp eq i32 %33, %conv43
  br i1 %cmp45.not, label %lor.lhs.false, label %sw.bb.if.then54_crit_edge

sw.bb.if.then54_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54

lor.lhs.false:                                    ; preds = %sw.bb
  %arrayidx48 = getelementptr %struct.lbs_private, ptr %priv.i, i32 0, i32 75, i32 %idxprom
  %34 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %params, align 4
  %bcmp = tail call i32 @bcmp(ptr %arrayidx48, ptr %35, i32 %conv43) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp52.not = icmp eq i32 %bcmp, 0
  br i1 %cmp52.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then54_crit_edge

lor.lhs.false.if.then54_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then54:                                        ; preds = %lor.lhs.false.if.then54_crit_edge, %sw.bb.if.then54_crit_edge
  %conv56 = trunc i32 %33 to i8
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv56, ptr %arrayidx, align 1
  %arrayidx62 = getelementptr %struct.lbs_private, ptr %priv.i, i32 0, i32 75, i32 %idxprom
  %37 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %params, align 4
  %39 = ptrtoint ptr %key_len20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %key_len20, align 4
  %41 = call ptr @memcpy(ptr %arrayidx62, ptr %38, i32 %40)
  tail call fastcc void @lbs_set_wep_keys(ptr noundef %priv.i)
  br label %cleanup

sw.bb68:                                          ; preds = %if.end41.sw.bb68_crit_edge, %if.end41.sw.bb68_crit_edge160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %idx)
  %cmp70 = icmp eq i8 %idx, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %28)
  %cmp74 = icmp eq i32 %28, 1027074
  %42 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %params, align 4
  %44 = ptrtoint ptr %key_len20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %key_len20, align 4
  %conv82 = trunc i32 %45 to i16
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cmd.i) #11
  %46 = call ptr @memset(ptr %cmd.i, i32 0, i32 52)
  %action.i = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i, i32 0, i32 1
  %47 = ptrtoint ptr %action.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 256, ptr %action.i, align 1
  %param.i = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i, i32 0, i32 2
  %48 = ptrtoint ptr %param.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 1, ptr %param.i, align 1
  %length.i = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 9728, ptr %length.i, align 1
  %conv.i154 = select i1 %cmp74, i16 256, i16 512
  %keytypeid.i = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %keytypeid.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %conv.i154, ptr %keytypeid.i, align 1
  %conv3.i = select i1 %cmp70, i16 1536, i16 1280
  %keyinfo.i = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i, i32 0, i32 2, i32 3
  %51 = ptrtoint ptr %keyinfo.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %conv3.i, ptr %keyinfo.i, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv82) #11
  %keylen.i = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %keylen.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %52, ptr %keylen.i, align 1
  %tobool.not.i155 = icmp eq ptr %43, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv82)
  %tobool7.not.i = icmp eq i16 %conv82, 0
  %or.cond.i156 = or i1 %tobool.not.i155, %tobool7.not.i
  br i1 %or.cond.i156, label %sw.bb68.lbs_set_key_material.exit_crit_edge, label %if.then.i

sw.bb68.lbs_set_key_material.exit_crit_edge:      ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_set_key_material.exit

if.then.i:                                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #13
  %conv6.i = and i32 %45, 65535
  %key9.i = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i, i32 0, i32 2, i32 5
  %54 = call ptr @memcpy(ptr %key9.i, ptr %43, i32 %conv6.i)
  br label %lbs_set_key_material.exit

lbs_set_key_material.exit:                        ; preds = %if.then.i, %sw.bb68.lbs_set_key_material.exit_crit_edge
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %55 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 13312, ptr %size.i, align 1
  %56 = ptrtoint ptr %cmd.i to i32
  %call.i157 = call i32 @__lbs_cmd(ptr noundef %priv.i, i16 noundef zeroext 94, ptr noundef nonnull %cmd.i, i32 noundef 52, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %56) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cmd.i) #11
  br label %cleanup

do.end86:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %28) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %lbs_set_key_material.exit, %if.then54, %lor.lhs.false.cleanup_crit_edge, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %wiphy_priv.exit.cleanup_crit_edge ], [ -524, %do.end86 ], [ 0, %lbs_set_key_material.exit ], [ 0, %if.then54 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_cfg_del_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readnone %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %0 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %key_index to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv, ptr noundef %mac_addr) #15
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_cfg_set_default_key(ptr noundef %wiphy, ptr noundef readnone %netdev, i8 noundef zeroext %key_index, i1 noundef zeroext %unicast, i1 noundef zeroext %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !250

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #11, !srcloc !252
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %mesh_dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 45
  %0 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh_dev, align 4
  %cmp = icmp eq ptr %1, %netdev
  br i1 %cmp, label %wiphy_priv.exit.cleanup_crit_edge, label %if.end

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %conv = zext i8 %key_index to i32
  %wep_tx_key = getelementptr inbounds %struct.lbs_private, ptr %priv.i, i32 0, i32 74
  %2 = ptrtoint ptr %wep_tx_key to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wep_tx_key, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %key_index)
  %cmp3.not = icmp eq i8 %3, %key_index
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %4 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6.not = icmp eq i32 %and, 0
  br i1 %cmp6.not, label %do.body.do.end14_crit_edge, label %do.end

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv) #15
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body.do.end14_crit_edge
  %5 = ptrtoint ptr %wep_tx_key to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %key_index, ptr %wep_tx_key, align 1
  tail call fastcc void @lbs_set_wep_keys(ptr noundef %priv.i)
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end.cleanup_crit_edge, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %wiphy_priv.exit.cleanup_crit_edge ], [ 0, %do.end14 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_cfg_get_station(ptr noundef %wiphy, ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %mac, ptr nocapture noundef %sinfo) #0 align 64 {
entry:
  %signal = alloca i8, align 1
  %noise = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !250

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #11, !srcloc !252
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %signal) #11
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %signal, align 1, !annotation !253
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %noise) #11
  %1 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %noise, align 1, !annotation !253
  %2 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sinfo, align 8
  %or = or i64 %3, 1548
  store i64 %or, ptr %sinfo, align 8
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 3
  %6 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bytes, align 4
  %conv = zext i32 %7 to i64
  %tx_bytes2 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 5
  %8 = ptrtoint ptr %tx_bytes2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %tx_bytes2, align 8
  %9 = load ptr, ptr %priv.i, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 1
  %10 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_packets, align 4
  %tx_packets5 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 17
  %12 = ptrtoint ptr %tx_packets5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tx_packets5, align 8
  %13 = load ptr, ptr %priv.i, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 2
  %14 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_bytes, align 8
  %conv8 = zext i32 %15 to i64
  %rx_bytes9 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 4
  %16 = ptrtoint ptr %rx_bytes9 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv8, ptr %rx_bytes9, align 8
  %17 = load ptr, ptr %priv.i, align 4
  %stats11 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36
  %18 = ptrtoint ptr %stats11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stats11, align 8
  %rx_packets12 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 16
  %20 = ptrtoint ptr %rx_packets12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rx_packets12, align 4
  %call13 = call i32 @lbs_get_rssi(ptr noundef %priv.i, ptr noundef nonnull %signal, ptr noundef nonnull %noise) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp eq i32 %call13, 0
  br i1 %cmp, label %if.then, label %wiphy_priv.exit.if.end_crit_edge

wiphy_priv.exit.if.end_crit_edge:                 ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %signal, align 1
  %signal15 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 9
  %23 = ptrtoint ptr %signal15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %signal15, align 1
  %24 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sinfo, align 8
  %or17 = or i64 %25, 128
  store i64 %or17, ptr %sinfo, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %wiphy_priv.exit.if.end_crit_edge
  %cur_rate = getelementptr inbounds %struct.lbs_private, ptr %priv.i, i32 0, i32 90
  %26 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cur_rate, align 1
  %28 = zext i8 %27 to i16
  %29 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %28)
  %cmp22 = icmp eq i16 %29, %28
  br i1 %cmp22, label %if.end.if.then24_crit_edge, label %for.inc

if.end.if.then24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then24:                                        ; preds = %for.inc.10.if.then24_crit_edge, %for.inc.9.if.then24_crit_edge, %for.inc.8.if.then24_crit_edge, %for.inc.7.if.then24_crit_edge, %for.inc.6.if.then24_crit_edge, %for.inc.5.if.then24_crit_edge, %for.inc.4.if.then24_crit_edge, %for.inc.3.if.then24_crit_edge, %for.inc.2.if.then24_crit_edge, %for.inc.1.if.then24_crit_edge, %for.inc.if.then24_crit_edge, %if.end.if.then24_crit_edge
  %i.046.lcssa = phi i32 [ 0, %if.end.if.then24_crit_edge ], [ 1, %for.inc.if.then24_crit_edge ], [ 2, %for.inc.1.if.then24_crit_edge ], [ 3, %for.inc.2.if.then24_crit_edge ], [ 4, %for.inc.3.if.then24_crit_edge ], [ 5, %for.inc.4.if.then24_crit_edge ], [ 6, %for.inc.5.if.then24_crit_edge ], [ 7, %for.inc.6.if.then24_crit_edge ], [ 8, %for.inc.7.if.then24_crit_edge ], [ 9, %for.inc.8.if.then24_crit_edge ], [ 10, %for.inc.9.if.then24_crit_edge ], [ 11, %for.inc.10.if.then24_crit_edge ]
  %bitrate = getelementptr [12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 %i.046.lcssa, i32 1
  %30 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %bitrate, align 4
  %legacy = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14, i32 2
  %32 = ptrtoint ptr %legacy to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %legacy, align 2
  %33 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %sinfo, align 8
  %or27 = or i64 %34, 256
  store i64 %or27, ptr %sinfo, align 8
  br label %for.end

for.inc:                                          ; preds = %if.end
  %35 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 1, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %28)
  %cmp22.1 = icmp eq i16 %35, %28
  br i1 %cmp22.1, label %for.inc.if.then24_crit_edge, label %for.inc.1

for.inc.if.then24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

for.inc.1:                                        ; preds = %for.inc
  %36 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 2, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %28)
  %cmp22.2 = icmp eq i16 %36, %28
  br i1 %cmp22.2, label %for.inc.1.if.then24_crit_edge, label %for.inc.2

for.inc.1.if.then24_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

for.inc.2:                                        ; preds = %for.inc.1
  %37 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 3, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %28)
  %cmp22.3 = icmp eq i16 %37, %28
  br i1 %cmp22.3, label %for.inc.2.if.then24_crit_edge, label %for.inc.3

for.inc.2.if.then24_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

for.inc.3:                                        ; preds = %for.inc.2
  %38 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 4, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %28)
  %cmp22.4 = icmp eq i16 %38, %28
  br i1 %cmp22.4, label %for.inc.3.if.then24_crit_edge, label %for.inc.4

for.inc.3.if.then24_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

for.inc.4:                                        ; preds = %for.inc.3
  %39 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 5, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %28)
  %cmp22.5 = icmp eq i16 %39, %28
  br i1 %cmp22.5, label %for.inc.4.if.then24_crit_edge, label %for.inc.5

for.inc.4.if.then24_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

for.inc.5:                                        ; preds = %for.inc.4
  %40 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 6, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %28)
  %cmp22.6 = icmp eq i16 %40, %28
  br i1 %cmp22.6, label %for.inc.5.if.then24_crit_edge, label %for.inc.6

for.inc.5.if.then24_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

for.inc.6:                                        ; preds = %for.inc.5
  %41 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 7, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %28)
  %cmp22.7 = icmp eq i16 %41, %28
  br i1 %cmp22.7, label %for.inc.6.if.then24_crit_edge, label %for.inc.7

for.inc.6.if.then24_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

for.inc.7:                                        ; preds = %for.inc.6
  %42 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 8, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %28)
  %cmp22.8 = icmp eq i16 %42, %28
  br i1 %cmp22.8, label %for.inc.7.if.then24_crit_edge, label %for.inc.8

for.inc.7.if.then24_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

for.inc.8:                                        ; preds = %for.inc.7
  %43 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 9, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %28)
  %cmp22.9 = icmp eq i16 %43, %28
  br i1 %cmp22.9, label %for.inc.8.if.then24_crit_edge, label %for.inc.9

for.inc.8.if.then24_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

for.inc.9:                                        ; preds = %for.inc.8
  %44 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 10, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %28)
  %cmp22.10 = icmp eq i16 %44, %28
  br i1 %cmp22.10, label %for.inc.9.if.then24_crit_edge, label %for.inc.10

for.inc.9.if.then24_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

for.inc.10:                                       ; preds = %for.inc.9
  %45 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 11, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %28)
  %cmp22.11 = icmp eq i16 %45, %28
  br i1 %cmp22.11, label %for.inc.10.if.then24_crit_edge, label %for.inc.10.for.end_crit_edge

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.10.if.then24_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

for.end:                                          ; preds = %for.inc.10.for.end_crit_edge, %if.then24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %noise) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %signal) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_cfg_set_mesh_channel(ptr noundef %wiphy, ptr noundef readnone %netdev, ptr nocapture noundef readonly %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !250

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #11, !srcloc !252
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %mesh_dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 45
  %0 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh_dev, align 4
  %cmp.not = icmp eq ptr %1, %netdev
  br i1 %cmp.not, label %if.end, label %wiphy_priv.exit.out_crit_edge

wiphy_priv.exit.out_crit_edge:                    ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  %conv = trunc i16 %3 to i8
  %call1 = tail call i32 @lbs_mesh_set_channel(ptr noundef %priv.i, i8 noundef zeroext %conv) #11
  br label %out

out:                                              ; preds = %if.end, %wiphy_priv.exit.out_crit_edge
  %ret.0 = phi i32 [ -524, %wiphy_priv.exit.out_crit_edge ], [ %call1, %if.end ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_cfg_set_monitor_channel(ptr noundef %wiphy, ptr nocapture noundef readonly %chandef) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !250

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #11, !srcloc !252
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %0 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %1, label %do.end.i [
    i32 0, label %wiphy_priv.exit.if.end_crit_edge
    i32 1, label %wiphy_priv.exit.out_crit_edge
    i32 2, label %wiphy_priv.exit.out_crit_edge6
  ]

wiphy_priv.exit.out_crit_edge6:                   ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

wiphy_priv.exit.out_crit_edge:                    ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

wiphy_priv.exit.if.end_crit_edge:                 ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end.i:                                         ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 778, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %wiphy_priv.exit.if.end_crit_edge
  %3 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hw_value, align 2
  %conv = trunc i16 %6 to i8
  %call2 = tail call i32 @lbs_set_channel(ptr noundef %priv.i, i8 noundef zeroext %conv) #11
  br label %out

out:                                              ; preds = %if.end, %wiphy_priv.exit.out_crit_edge, %wiphy_priv.exit.out_crit_edge6
  %ret.0 = phi i32 [ %call2, %if.end ], [ -524, %wiphy_priv.exit.out_crit_edge ], [ -524, %wiphy_priv.exit.out_crit_edge6 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_cfg_scan(ptr noundef %wiphy, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !250

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #11, !srcloc !252
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %scan_req = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 40
  %0 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_req, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %wiphy_priv.exit.out_crit_edge

wiphy_priv.exit.out_crit_edge:                    ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %wiphy_priv.exit
  %scan_work = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 6, i32 56, i32 12, i32 14
  %2 = ptrtoint ptr %scan_work to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %scan_work, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %4 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end._internal_start_scan.exit_crit_edge, label %do.end.i

if.end._internal_start_scan.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %_internal_start_scan.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %n_ssids.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 1
  %5 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_ssids.i, align 4
  %n_channels.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 2
  %7 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_channels.i, align 8
  %ie_len.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 5
  %9 = ptrtoint ptr %ie_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ie_len.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %6, i32 noundef %8, i32 noundef %10) #15
  br label %_internal_start_scan.exit

_internal_start_scan.exit:                        ; preds = %do.end.i, %if.end._internal_start_scan.exit_crit_edge
  %scan_channel.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 6, i32 56, i32 17
  %11 = ptrtoint ptr %scan_channel.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %scan_channel.i, align 4
  %12 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %request, ptr %scan_req, align 4
  %internal_scan.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 6, i32 56, i32 26, i32 1
  %13 = ptrtoint ptr %internal_scan.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %internal_scan.i, align 4
  %work_thread.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 4, i32 56, i32 32, i32 1
  %14 = ptrtoint ptr %work_thread.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %work_thread.i, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %scan_work, i32 noundef 5) #11
  %surpriseremoved = getelementptr inbounds %struct.lbs_private, ptr %priv.i, i32 0, i32 43
  %16 = ptrtoint ptr %surpriseremoved to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %surpriseremoved, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not = icmp eq i8 %17, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 -5
  br label %out

out:                                              ; preds = %_internal_start_scan.exit, %lor.lhs.false.out_crit_edge, %wiphy_priv.exit.out_crit_edge
  %ret.0 = phi i32 [ -11, %lor.lhs.false.out_crit_edge ], [ -11, %wiphy_priv.exit.out_crit_edge ], [ %spec.select, %_internal_start_scan.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_cfg_connect(ptr noundef %wiphy, ptr noundef readnone %dev, ptr nocapture noundef readonly %sme) #0 align 64 {
entry:
  %params.i.i.i = alloca %struct.cfg80211_connect_resp_params, align 4
  %n.i.i = alloca i32, align 4
  %cmd.i362 = alloca %struct.cmd_ds_802_11_authenticate, align 2
  %cmd.i359 = alloca %struct.cmd_ds_802_11_enable_rsn, align 8
  %cmd.i349 = alloca %struct.cmd_key_material, align 1
  %cmd.i344 = alloca %struct.cmd_key_material, align 1
  %cmd.i341 = alloca %struct.cmd_ds_802_11_set_wep, align 1
  %cmd.i = alloca %struct.cmd_ds_802_11_enable_rsn, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry107 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !250

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #11, !srcloc !252
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %mesh_dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 45
  %0 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh_dev, align 4
  %cmp = icmp eq ptr %1, %dev
  br i1 %cmp, label %wiphy_priv.exit.cleanup250_crit_edge, label %if.end

wiphy_priv.exit.cleanup250_crit_edge:             ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup250

if.end:                                           ; preds = %wiphy_priv.exit
  %bssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 2
  %2 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bssid, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then1, label %if.end.if.end160_crit_edge

if.end.if.end160_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

if.then1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %4 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %if.then1.do.end8_crit_edge, label %do.end

if.then1.do.end8_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.then1.do.end8_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1297) #11
  %scan_req = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 40
  %5 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scan_req, align 4
  %cmp15 = icmp eq ptr %6, null
  br i1 %cmp15, label %do.end8.if.end52_crit_edge, label %if.then24

do.end8.if.end52_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then24:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %scan_q = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 6, i32 56, i32 18
  %call26411 = call i32 @prepare_to_wait_event(ptr noundef %scan_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %8 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scan_req, align 4
  %cmp29412 = icmp eq ptr %9, null
  br i1 %cmp29412, label %if.then24.for.end_crit_edge, label %if.then24.if.end45_crit_edge

if.then24.if.end45_crit_edge:                     ; preds = %if.then24
  br label %if.end45

if.then24.for.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end45:                                         ; preds = %cleanup.if.end45_crit_edge, %if.then24.if.end45_crit_edge
  %__ret25.1414 = phi i32 [ %__ret25.1, %cleanup.if.end45_crit_edge ], [ 1500, %if.then24.if.end45_crit_edge ]
  %call26413 = phi i32 [ %call26, %cleanup.if.end45_crit_edge ], [ %call26411, %if.then24.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26413)
  %tobool46.not = icmp eq i32 %call26413, 0
  br i1 %tobool46.not, label %cleanup, label %if.end45.__out_crit_edge

if.end45.__out_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end45
  %call49 = call i32 @schedule_timeout(i32 noundef %__ret25.1414) #11
  %call26 = call i32 @prepare_to_wait_event(ptr noundef %scan_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %10 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scan_req, align 4
  %cmp29 = icmp eq ptr %11, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool33.not = icmp eq i32 %call49, 0
  %12 = select i1 %cmp29, i1 %tobool33.not, i1 false
  %__ret25.1 = select i1 %12, i32 1, i32 %call49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.1)
  %tobool39.not = icmp eq i32 %__ret25.1, 0
  %13 = select i1 %cmp29, i1 true, i1 %tobool39.not
  br i1 %13, label %cleanup.for.end_crit_edge, label %cleanup.if.end45_crit_edge

cleanup.if.end45_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then24.for.end_crit_edge
  call void @finish_wait(ptr noundef %scan_q, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end45.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end52

if.end52:                                         ; preds = %__out, %do.end8.if.end52_crit_edge
  %call.i = call i32 @ieee80211_get_num_supported_channels(ptr noundef nonnull %wiphy) #11
  %mul.i = shl i32 %call.i, 2
  %add.i = add i32 %mul.i, 153
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2848) #17
  %tobool.not.i336 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i336, label %if.end52.cleanup250_crit_edge, label %if.end.i

if.end52.cleanup250_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup250

if.end.i:                                         ; preds = %if.end52
  %arrayidx.i = getelementptr %struct.cfg80211_scan_request, ptr %call9.i.i.i, i32 0, i32 22, i32 %call.i
  %14 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.i, ptr %call9.i.i.i, align 128
  %n_channels2.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %call9.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %n_channels2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i, ptr %n_channels2.i, align 8
  %n_ssids.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %call9.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %n_ssids.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.i
  %band.079.i = phi i32 [ 0, %if.end.i ], [ %inc28.i, %cleanup.i.for.body.i_crit_edge ]
  %i.078.i = phi i32 [ 0, %if.end.i ], [ %i.3.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 %band.079.i
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3.i, align 4
  %tobool4.not.i = icmp eq ptr %18, null
  br i1 %tobool4.not.i, label %for.body.i.cleanup.i_crit_edge, label %for.cond7.preheader.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

for.cond7.preheader.i:                            ; preds = %for.body.i
  %n_channels10.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %n_channels10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_channels10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1174.i = icmp sgt i32 %20, 0
  br i1 %cmp1174.i, label %for.cond7.preheader.i.for.body12.i_crit_edge, label %for.cond7.preheader.i.cleanup.i_crit_edge

for.cond7.preheader.i.cleanup.i_crit_edge:        ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

for.cond7.preheader.i.for.body12.i_crit_edge:     ; preds = %for.cond7.preheader.i
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %for.cond7.preheader.i.for.body12.i_crit_edge
  %j.076.i = phi i32 [ %inc26.i, %for.inc.i.for.body12.i_crit_edge ], [ 0, %for.cond7.preheader.i.for.body12.i_crit_edge ]
  %i.175.i = phi i32 [ %i.2.i, %for.inc.i.for.body12.i_crit_edge ], [ %i.078.i, %for.cond7.preheader.i.for.body12.i_crit_edge ]
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %22, i32 %j.076.i, i32 4
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %for.body12.i.for.inc.i_crit_edge

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end19.i:                                       ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx16.i = getelementptr %struct.ieee80211_channel, ptr %22, i32 %j.076.i
  %arrayidx25.i = getelementptr %struct.cfg80211_scan_request, ptr %call9.i.i.i, i32 0, i32 22, i32 %i.175.i
  %25 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx16.i, ptr %arrayidx25.i, align 4
  %inc.i = add i32 %i.175.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end19.i, %for.body12.i.for.inc.i_crit_edge
  %i.2.i = phi i32 [ %i.175.i, %for.body12.i.for.inc.i_crit_edge ], [ %inc.i, %if.end19.i ]
  %inc26.i = add nuw nsw i32 %j.076.i, 1
  %26 = ptrtoint ptr %n_channels10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_channels10.i, align 4
  %cmp11.i = icmp slt i32 %inc26.i, %27
  br i1 %cmp11.i, label %for.inc.i.for.body12.i_crit_edge, label %for.inc.i.cleanup.i_crit_edge

for.inc.i.cleanup.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12.i

cleanup.i:                                        ; preds = %for.inc.i.cleanup.i_crit_edge, %for.cond7.preheader.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %i.3.i = phi i32 [ %i.078.i, %for.body.i.cleanup.i_crit_edge ], [ %i.078.i, %for.cond7.preheader.i.cleanup.i_crit_edge ], [ %i.2.i, %for.inc.i.cleanup.i_crit_edge ]
  %inc28.i = add nuw nsw i32 %band.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, 6
  br i1 %exitcond.not.i, label %for.end29.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end29.i:                                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3.i)
  %tobool30.not.i = icmp eq i32 %i.3.i, 0
  br i1 %tobool30.not.i, label %if.else.i, label %_new_connect_scan_req.exit

if.else.i:                                        ; preds = %for.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %cleanup250

_new_connect_scan_req.exit:                       ; preds = %for.end29.i
  %28 = ptrtoint ptr %n_channels2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.3.i, ptr %n_channels2.i, align 8
  %29 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call9.i.i.i, align 128
  %ssid35.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 4
  %31 = ptrtoint ptr %ssid35.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ssid35.i, align 4
  %ssid_len.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 5
  %33 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ssid_len.i, align 4
  %35 = call ptr @memcpy(ptr %30, ptr %32, i32 %34)
  %36 = load i32, ptr %ssid_len.i, align 4
  %conv.i = trunc i32 %36 to i8
  %37 = load ptr, ptr %call9.i.i.i, align 128
  %ssid_len39.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ssid_len39.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i, ptr %ssid_len39.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %39 = load i32, ptr @lbs_debug, align 4
  %and59 = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %cmp60.not = icmp eq i32 %and59, 0
  br i1 %cmp60.not, label %_new_connect_scan_req.exit.do.end69_crit_edge, label %do.end64

_new_connect_scan_req.exit.do.end69_crit_edge:    ; preds = %_new_connect_scan_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

do.end64:                                         ; preds = %_new_connect_scan_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #15
  br label %do.end69

do.end69:                                         ; preds = %do.end64, %_new_connect_scan_req.exit.do.end69_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %40 = load i32, ptr @lbs_debug, align 4
  %and.i337 = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i337)
  %cmp.not.i = icmp eq i32 %and.i337, 0
  br i1 %cmp.not.i, label %do.end69._internal_start_scan.exit_crit_edge, label %do.end.i

do.end69._internal_start_scan.exit_crit_edge:     ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %_internal_start_scan.exit

do.end.i:                                         ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_ssids.i, align 4
  %43 = ptrtoint ptr %n_channels2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_channels2.i, align 8
  %ie_len.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %call9.i.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %ie_len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ie_len.i, align 4
  %call.i339 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %42, i32 noundef %44, i32 noundef %46) #15
  br label %_internal_start_scan.exit

_internal_start_scan.exit:                        ; preds = %do.end.i, %do.end69._internal_start_scan.exit_crit_edge
  %scan_channel.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 6, i32 56, i32 17
  %47 = ptrtoint ptr %scan_channel.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %scan_channel.i, align 4
  %48 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call9.i.i.i, ptr %scan_req, align 4
  %internal_scan.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 6, i32 56, i32 26, i32 1
  %49 = ptrtoint ptr %internal_scan.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %internal_scan.i, align 4
  %work_thread.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 4, i32 56, i32 32, i32 1
  %50 = ptrtoint ptr %work_thread.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %work_thread.i, align 4
  %scan_work.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 6, i32 56, i32 12, i32 14
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %51, ptr noundef %scan_work.i, i32 noundef 5) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %52 = load i32, ptr @lbs_debug, align 4
  %and71 = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %cmp72.not = icmp eq i32 %and71, 0
  br i1 %cmp72.not, label %_internal_start_scan.exit.do.end81_crit_edge, label %do.end76

_internal_start_scan.exit.do.end81_crit_edge:     ; preds = %_internal_start_scan.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end81

do.end76:                                         ; preds = %_internal_start_scan.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  br label %do.end81

do.end81:                                         ; preds = %do.end76, %_internal_start_scan.exit.do.end81_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1311) #11
  %53 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %scan_req, align 4
  %cmp91 = icmp eq ptr %54, null
  br i1 %cmp91, label %do.end81.if.end143_crit_edge, label %if.then106

do.end81.if.end143_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

if.then106:                                       ; preds = %do.end81
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry107) #11
  %55 = call ptr @memset(ptr %__wq_entry107, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry107, i32 noundef 0) #11
  %scan_q111 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 6, i32 56, i32 18
  %call112415 = call i32 @prepare_to_wait_event(ptr noundef %scan_q111, ptr noundef nonnull %__wq_entry107, i32 noundef 1) #11
  %56 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %scan_req, align 4
  %cmp115416 = icmp eq ptr %57, null
  br i1 %cmp115416, label %if.then106.for.end139_crit_edge, label %if.then106.if.end131_crit_edge

if.then106.if.end131_crit_edge:                   ; preds = %if.then106
  br label %if.end131

if.then106.for.end139_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end139

if.end131:                                        ; preds = %cleanup136.if.end131_crit_edge, %if.then106.if.end131_crit_edge
  %__ret108.1418 = phi i32 [ %__ret108.1, %cleanup136.if.end131_crit_edge ], [ 1500, %if.then106.if.end131_crit_edge ]
  %call112417 = phi i32 [ %call112, %cleanup136.if.end131_crit_edge ], [ %call112415, %if.then106.if.end131_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112417)
  %tobool132.not = icmp eq i32 %call112417, 0
  br i1 %tobool132.not, label %cleanup136, label %if.end131.__out141_crit_edge

if.end131.__out141_crit_edge:                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out141

cleanup136:                                       ; preds = %if.end131
  %call135 = call i32 @schedule_timeout(i32 noundef %__ret108.1418) #11
  %call112 = call i32 @prepare_to_wait_event(ptr noundef %scan_q111, ptr noundef nonnull %__wq_entry107, i32 noundef 1) #11
  %58 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %scan_req, align 4
  %cmp115 = icmp eq ptr %59, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool119.not = icmp eq i32 %call135, 0
  %60 = select i1 %cmp115, i1 %tobool119.not, i1 false
  %__ret108.1 = select i1 %60, i32 1, i32 %call135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret108.1)
  %tobool125.not = icmp eq i32 %__ret108.1, 0
  %61 = select i1 %cmp115, i1 true, i1 %tobool125.not
  br i1 %61, label %cleanup136.for.end139_crit_edge, label %cleanup136.if.end131_crit_edge

cleanup136.if.end131_crit_edge:                   ; preds = %cleanup136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

cleanup136.for.end139_crit_edge:                  ; preds = %cleanup136
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end139

for.end139:                                       ; preds = %cleanup136.for.end139_crit_edge, %if.then106.for.end139_crit_edge
  call void @finish_wait(ptr noundef %scan_q111, ptr noundef nonnull %__wq_entry107) #11
  br label %__out141

__out141:                                         ; preds = %for.end139, %if.end131.__out141_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry107) #11
  br label %if.end143

if.end143:                                        ; preds = %__out141, %do.end81.if.end143_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %62 = load i32, ptr @lbs_debug, align 4
  %and146 = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %cmp147.not = icmp eq i32 %and146, 0
  br i1 %cmp147.not, label %if.end143.if.end160_crit_edge, label %do.end151

if.end143.if.end160_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

do.end151:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #15
  br label %if.end160

if.end160:                                        ; preds = %do.end151, %if.end143.if.end160_crit_edge, %if.end.if.end160_crit_edge
  %63 = ptrtoint ptr %sme to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sme, align 4
  %65 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bssid, align 4
  %ssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 4
  %67 = ptrtoint ptr %ssid to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ssid, align 4
  %ssid_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 5
  %69 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ssid_len, align 4
  %call162 = call ptr @cfg80211_get_bss(ptr noundef nonnull %wiphy, ptr noundef %64, ptr noundef %66, ptr noundef %68, i32 noundef %70, i32 noundef 0, i32 noundef 2) #11
  %tobool163.not = icmp eq ptr %call162, null
  br i1 %tobool163.not, label %do.end167, label %do.body171

do.end167:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  %dev168 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  %71 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bssid, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev168, ptr noundef nonnull @.str.56, ptr noundef %72) #15
  br label %cleanup250

do.body171:                                       ; preds = %if.end160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %73 = load i32, ptr @lbs_debug, align 4
  %and172 = and i32 %73, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %cmp173.not = icmp eq i32 %and172, 0
  br i1 %cmp173.not, label %do.body171.do.body184_crit_edge, label %do.end177

do.body171.do.body184_crit_edge:                  ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body184

do.end177:                                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #13
  %bssid179 = getelementptr inbounds %struct.cfg80211_bss, ptr %call162, i32 0, i32 11
  %call180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %bssid179) #15
  br label %do.body184

do.body184:                                       ; preds = %do.end177, %do.body171.do.body184_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %74 = load i32, ptr @lbs_debug, align 4
  %and185 = and i32 %74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %cmp186.not = icmp eq i32 %and185, 0
  br i1 %cmp186.not, label %do.body184.do.end196_crit_edge, label %do.end190

do.body184.do.end196_crit_edge:                   ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end196

do.end190:                                        ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #13
  %cipher_group = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 1
  %75 = ptrtoint ptr %cipher_group to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cipher_group, align 4
  %key_idx = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 14
  %77 = ptrtoint ptr %key_idx to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %key_idx, align 1
  %conv = zext i8 %78 to i32
  %key_len = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 13
  %79 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %key_len, align 4
  %conv192 = zext i8 %80 to i32
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %76, i32 noundef %conv, i32 noundef %conv192) #15
  br label %do.end196

do.end196:                                        ; preds = %do.end190, %do.body184.do.end196_crit_edge
  %wep_tx_key = getelementptr inbounds %struct.lbs_private, ptr %priv.i, i32 0, i32 74
  %cipher_group200 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 11, i32 1
  %81 = call ptr @memset(ptr %wep_tx_key, i32 0, i32 57)
  %82 = ptrtoint ptr %cipher_group200 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cipher_group200, align 4
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %83, label %do.end232 [
    i32 1027073, label %do.end196.sw.bb_crit_edge
    i32 1027077, label %do.end196.sw.bb_crit_edge423
    i32 0, label %do.end196.sw.bb217_crit_edge
    i32 1027074, label %do.end196.sw.bb217_crit_edge424
    i32 1027076, label %do.end196.sw.bb217_crit_edge425
  ]

do.end196.sw.bb217_crit_edge425:                  ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb217

do.end196.sw.bb217_crit_edge424:                  ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb217

do.end196.sw.bb217_crit_edge:                     ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb217

do.end196.sw.bb_crit_edge423:                     ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end196.sw.bb_crit_edge:                        ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %do.end196.sw.bb_crit_edge, %do.end196.sw.bb_crit_edge423
  %key_idx201 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 14
  %85 = ptrtoint ptr %key_idx201 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %key_idx201, align 1
  %87 = ptrtoint ptr %wep_tx_key to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %wep_tx_key, align 1
  %key_len203 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 13
  %88 = ptrtoint ptr %key_len203 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %key_len203, align 4
  %90 = load i8, ptr %key_idx201, align 1
  %idxprom = zext i8 %90 to i32
  %arrayidx = getelementptr %struct.lbs_private, ptr %priv.i, i32 0, i32 76, i32 %idxprom
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %89, ptr %arrayidx, align 1
  %92 = load i8, ptr %key_idx201, align 1
  %idxprom208 = zext i8 %92 to i32
  %arrayidx209 = getelementptr %struct.lbs_private, ptr %priv.i, i32 0, i32 75, i32 %idxprom208
  %key = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 12
  %93 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %key, align 4
  %95 = load i8, ptr %key_len203, align 4
  %conv212 = zext i8 %95 to i32
  %96 = call ptr @memcpy(ptr %arrayidx209, ptr %94, i32 %conv212)
  call fastcc void @lbs_set_wep_keys(ptr noundef %priv.i)
  %mac_control = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 6, i32 56, i32 12, i32 11, i32 1, i32 1
  %97 = ptrtoint ptr %mac_control to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %mac_control, align 4
  %99 = or i16 %98, 8
  store i16 %99, ptr %mac_control, align 4
  call void @lbs_set_mac_control(ptr noundef %priv.i) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #11
  %100 = getelementptr inbounds %struct.cmd_ds_802_11_enable_rsn, ptr %cmd.i, i32 0, i32 1
  %101 = getelementptr inbounds %struct.cmd_ds_802_11_enable_rsn, ptr %cmd.i, i32 0, i32 2
  %102 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 13194139533312, ptr %cmd.i, align 8
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 256, ptr %100, align 8
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %101, align 2
  %105 = ptrtoint ptr %cmd.i to i32
  %call.i340 = call i32 @__lbs_cmd(ptr noundef %priv.i, i16 noundef zeroext 47, ptr noundef nonnull %cmd.i, i32 noundef 12, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %105) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #11
  br label %sw.epilog

sw.bb217:                                         ; preds = %do.end196.sw.bb217_crit_edge, %do.end196.sw.bb217_crit_edge424, %do.end196.sw.bb217_crit_edge425
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cmd.i341) #11
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i341, i32 0, i32 1
  %action.i = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, ptr %cmd.i341, i32 0, i32 1
  %106 = call ptr @memset(ptr %cmd.i341, i32 0, i32 80)
  %107 = ptrtoint ptr %action.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 1024, ptr %action.i, align 1
  %108 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 20480, ptr %size.i, align 1
  %109 = ptrtoint ptr %cmd.i341 to i32
  %call.i343 = call i32 @__lbs_cmd(ptr noundef %priv.i, i16 noundef zeroext 19, ptr noundef nonnull %cmd.i341, i32 noundef 80, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %109) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cmd.i341) #11
  %mac_control219 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 6, i32 56, i32 12, i32 11, i32 1, i32 1
  %110 = ptrtoint ptr %mac_control219 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %mac_control219, align 4
  %112 = and i16 %111, -9
  store i16 %112, ptr %mac_control219, align 4
  call void @lbs_set_mac_control(ptr noundef %priv.i) #11
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cmd.i344) #11
  %113 = call ptr @memset(ptr %cmd.i344, i32 0, i32 52)
  %action.i345 = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i344, i32 0, i32 1
  %114 = ptrtoint ptr %action.i345 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 256, ptr %action.i345, align 1
  %param.i = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i344, i32 0, i32 2
  %115 = ptrtoint ptr %param.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 1, ptr %param.i, align 1
  %length.i = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i344, i32 0, i32 2, i32 1
  %116 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 2)
  store i16 9728, ptr %length.i, align 1
  %keyinfo.i = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i344, i32 0, i32 2, i32 3
  %117 = ptrtoint ptr %keyinfo.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 512, ptr %keyinfo.i, align 1
  %size.i346 = getelementptr inbounds %struct.cmd_header, ptr %cmd.i344, i32 0, i32 1
  %118 = ptrtoint ptr %size.i346 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 13312, ptr %size.i346, align 1
  %119 = ptrtoint ptr %cmd.i344 to i32
  %call.i347 = call i32 @__lbs_cmd(ptr noundef %priv.i, i16 noundef zeroext 94, ptr noundef nonnull %cmd.i344, i32 noundef 52, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %119) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cmd.i344) #11
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cmd.i349) #11
  %120 = call ptr @memset(ptr %cmd.i349, i32 0, i32 52)
  %action.i350 = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i349, i32 0, i32 1
  %121 = ptrtoint ptr %action.i350 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 2)
  store i16 256, ptr %action.i350, align 1
  %param.i351 = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i349, i32 0, i32 2
  %122 = ptrtoint ptr %param.i351 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 2)
  store i16 1, ptr %param.i351, align 1
  %length.i352 = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i349, i32 0, i32 2, i32 1
  %123 = ptrtoint ptr %length.i352 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 9728, ptr %length.i352, align 1
  %keyinfo.i354 = getelementptr inbounds %struct.cmd_key_material, ptr %cmd.i349, i32 0, i32 2, i32 3
  %124 = ptrtoint ptr %keyinfo.i354 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 2)
  store i16 256, ptr %keyinfo.i354, align 1
  %size.i356 = getelementptr inbounds %struct.cmd_header, ptr %cmd.i349, i32 0, i32 1
  %125 = ptrtoint ptr %size.i356 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 2)
  store i16 13312, ptr %size.i356, align 1
  %126 = ptrtoint ptr %cmd.i349 to i32
  %call.i357 = call i32 @__lbs_cmd(ptr noundef %priv.i, i16 noundef zeroext 94, ptr noundef nonnull %cmd.i349, i32 noundef 52, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %126) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cmd.i349) #11
  %127 = ptrtoint ptr %cipher_group200 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cipher_group200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp227.not = icmp eq i32 %128, 0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i359) #11
  %129 = getelementptr inbounds %struct.cmd_ds_802_11_enable_rsn, ptr %cmd.i359, i32 0, i32 1
  %130 = getelementptr inbounds %struct.cmd_ds_802_11_enable_rsn, ptr %cmd.i359, i32 0, i32 2
  %131 = ptrtoint ptr %cmd.i359 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 13194139533312, ptr %cmd.i359, align 8
  %132 = ptrtoint ptr %129 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 256, ptr %129, align 8
  %133 = select i1 %cmp227.not, i16 0, i16 256
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %130, align 2
  %135 = ptrtoint ptr %cmd.i359 to i32
  %call.i361 = call i32 @__lbs_cmd(ptr noundef %priv.i, i16 noundef zeroext 47, ptr noundef nonnull %cmd.i359, i32 noundef 12, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %135) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i359) #11
  br label %sw.epilog

do.end232:                                        ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #13
  %dev233 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev233, ptr noundef nonnull @.str.65, i32 noundef %83) #15
  br label %if.then248

sw.epilog:                                        ; preds = %sw.bb217, %sw.bb
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %cmd.i362) #11
  %136 = getelementptr inbounds %struct.cmd_header, ptr %cmd.i362, i32 0, i32 1
  %137 = getelementptr inbounds %struct.cmd_ds_802_11_authenticate, ptr %cmd.i362, i32 0, i32 2
  %138 = call ptr @memset(ptr %cmd.i362, i32 0, i32 25)
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 6400, ptr %136, align 2
  %140 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bssid, align 4
  %tobool.not.i363 = icmp eq ptr %141, null
  br i1 %tobool.not.i363, label %sw.epilog.if.end.i364_crit_edge, label %if.then.i

sw.epilog.if.end.i364_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i364

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %142 = getelementptr inbounds %struct.cmd_ds_802_11_authenticate, ptr %cmd.i362, i32 0, i32 1
  %143 = call ptr @memcpy(ptr %142, ptr %141, i32 6)
  br label %if.end.i364

if.end.i364:                                      ; preds = %if.then.i, %sw.epilog.if.end.i364_crit_edge
  %auth_type.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 6
  %144 = ptrtoint ptr %auth_type.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %auth_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %145)
  %146 = icmp ult i32 %145, 9
  br i1 %146, label %switch.hole_check, label %if.end.i364.lbs_set_authtype.exit.thread_crit_edge

if.end.i364.lbs_set_authtype.exit.thread_crit_edge: ; preds = %if.end.i364
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_set_authtype.exit.thread

lbs_set_authtype.exit.thread:                     ; preds = %switch.hole_check.lbs_set_authtype.exit.thread_crit_edge, %if.end.i364.lbs_set_authtype.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %cmd.i362) #11
  br label %do.end242

switch.hole_check:                                ; preds = %if.end.i364
  %switch.maskindex = trunc i32 %145 to i16
  %switch.shifted = lshr i16 267, %switch.maskindex
  %147 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %switch.lobit.not = icmp eq i16 %147, 0
  br i1 %switch.lobit.not, label %switch.hole_check.lbs_set_authtype.exit.thread_crit_edge, label %switch.lookup

switch.hole_check.lbs_set_authtype.exit.thread_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_set_authtype.exit.thread

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.lbs_cfg_connect, i32 0, i32 %145
  %148 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %148)
  %switch.load = load i32, ptr %switch.gep, align 4
  %conv.i365 = trunc i32 %switch.load to i8
  %149 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv.i365, ptr %137, align 2
  %150 = ptrtoint ptr %136 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 6400, ptr %136, align 2
  %151 = ptrtoint ptr %cmd.i362 to i32
  %call11.i = call i32 @__lbs_cmd(ptr noundef %priv.i, i16 noundef zeroext 17, ptr noundef nonnull %cmd.i362, i32 noundef 25, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %151) #11
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %cmd.i362) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %call11.i)
  %cmp237 = icmp eq i32 %call11.i, -524
  br i1 %cmp237, label %switch.lookup.do.end242_crit_edge, label %if.end244

switch.lookup.do.end242_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end242

do.end242:                                        ; preds = %switch.lookup.do.end242_crit_edge, %lbs_set_authtype.exit.thread
  %dev243 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 56
  %152 = ptrtoint ptr %auth_type.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %auth_type.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev243, ptr noundef nonnull @.str.68, i32 noundef %153) #15
  br label %if.then248

if.end244:                                        ; preds = %switch.lookup
  %call245 = call i32 @lbs_set_radio(ptr noundef %priv.i, i8 noundef zeroext 2, i8 noundef zeroext 1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %154 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i366 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %154, i32 noundef 3520, i32 noundef 203) #14
  %tobool.not.i367 = icmp eq ptr %call7.i.i.i366, null
  br i1 %tobool.not.i367, label %if.end244.if.then248_crit_edge, label %if.end.i370

if.end244.if.then248_crit_edge:                   ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then248

if.end.i370:                                      ; preds = %if.end244
  %iebuf.i = getelementptr inbounds %struct.cmd_ds_802_11_associate, ptr %call7.i.i.i366, i32 0, i32 6
  %155 = ptrtoint ptr %call7.i.i.i366 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 20480, ptr %call7.i.i.i366, align 8
  %bssid.i368 = getelementptr inbounds %struct.cmd_ds_802_11_associate, ptr %call7.i.i.i366, i32 0, i32 1
  %bssid1.i = getelementptr inbounds %struct.cfg80211_bss, ptr %call162, i32 0, i32 11
  %156 = call ptr @memcpy(ptr %bssid.i368, ptr %bssid1.i, i32 6)
  %listeninterval.i = getelementptr inbounds %struct.cmd_ds_802_11_associate, ptr %call7.i.i.i366, i32 0, i32 3
  %157 = ptrtoint ptr %listeninterval.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 2560, ptr %listeninterval.i, align 8
  %capability.i = getelementptr inbounds %struct.cfg80211_bss, ptr %call162, i32 0, i32 10
  %158 = ptrtoint ptr %capability.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %capability.i, align 2
  %160 = call i16 @llvm.bswap.i16(i16 %159) #11
  %capability3.i = getelementptr inbounds %struct.cmd_ds_802_11_associate, ptr %call7.i.i.i366, i32 0, i32 2
  %161 = ptrtoint ptr %capability3.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %capability3.i, align 2
  %162 = call i32 @llvm.read_register.i32(metadata !240) #11
  %and.i.i.i.i.i.i = and i32 %162, -16384
  %163 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %165, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !254
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i369 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i369, label %if.end.i370.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i370.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.end.i370
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i370
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 696, ptr noundef nonnull @.str.96) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i370.rcu_read_lock.exit.i_crit_edge
  %call.i263.i = call ptr @ieee80211_bss_get_elem(ptr noundef nonnull %call162, i8 noundef zeroext 0) #11
  %tobool5.not.i = icmp eq ptr %call.i263.i, null
  br i1 %tobool5.not.i, label %do.body.i, label %if.then6.i

if.then6.i:                                       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call.i263.i, i32 2
  %arrayidx7.i = getelementptr i8, ptr %call.i263.i, i32 1
  %166 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx7.i, align 1
  %conv.i371 = zext i8 %167 to i32
  %168 = ptrtoint ptr %iebuf.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 2)
  store i16 0, ptr %iebuf.i, align 1
  %conv.i.i = zext i8 %167 to i16
  %169 = shl nuw i16 %conv.i.i, 8
  %len.i.i = getelementptr inbounds %struct.cmd_ds_802_11_associate, ptr %call7.i.i.i366, i32 0, i32 6, i32 2
  %170 = ptrtoint ptr %len.i.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 2)
  store i16 %169, ptr %len.i.i, align 1
  %ssid2.i.i = getelementptr inbounds %struct.cmd_ds_802_11_associate, ptr %call7.i.i.i366, i32 0, i32 6, i32 4
  %171 = call ptr @memcpy(ptr %ssid2.i.i, ptr %add.ptr.i, i32 %conv.i371)
  %add.i.i = add nuw nsw i32 %conv.i371, 4
  %add.ptr9.i = getelementptr i8, ptr %iebuf.i, i32 %add.i.i
  br label %if.end18.i

do.body.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %172 = load i32, ptr @lbs_debug, align 4
  %and.i372 = and i32 %172, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i372)
  %cmp.not.i373 = icmp eq i32 %and.i372, 0
  br i1 %cmp.not.i373, label %do.body.i.if.end18.i_crit_edge, label %do.end.i374

do.body.i.if.end18.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

do.end.i374:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #15
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i374, %do.body.i.if.end18.i_crit_edge, %if.then6.i
  %pos.0.i = phi ptr [ %add.ptr9.i, %if.then6.i ], [ %iebuf.i, %do.end.i374 ], [ %iebuf.i, %do.body.i.if.end18.i_crit_edge ]
  %call.i264.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i264.i, label %if.end18.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i267.i

if.end18.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i267.i:                             ; preds = %if.end18.i
  %call1.i265.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i265.i)
  %tobool.not.i266.i = icmp eq i32 %call1.i265.i, 0
  br i1 %tobool.not.i266.i, label %land.lhs.true.i267.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i269.i

land.lhs.true.i267.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i267.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i269.i:                            ; preds = %land.lhs.true.i267.i
  %.b4.i268.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i268.i, label %land.lhs.true2.i269.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i270.i

land.lhs.true2.i269.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i269.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i270.i:                                   ; preds = %land.lhs.true2.i269.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 724, ptr noundef nonnull @.str.97) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i270.i, %land.lhs.true2.i269.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i267.i.rcu_read_unlock.exit.i_crit_edge, %if.end18.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !255
  %173 = call i32 @llvm.read_register.i32(metadata !240) #11
  %and.i.i.i.i.i271.i = and i32 %173, -16384
  %174 = inttoptr i32 %and.i.i.i.i.i271.i to ptr
  %preempt_count.i.i.i.i272.i = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %preempt_count.i.i.i.i272.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %preempt_count.i.i.i.i272.i, align 4
  %sub.i.i.i.i = add i32 %176, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i272.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %177 = ptrtoint ptr %call162 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %call162, align 4
  %tobool19.not.i = icmp eq ptr %178, null
  br i1 %tobool19.not.i, label %do.body26.i, label %if.then20.i

if.then20.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %178, i32 0, i32 3
  %179 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %hw_value.i, align 2
  %conv22.i = trunc i16 %180 to i8
  %181 = ptrtoint ptr %pos.0.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 2)
  store i16 768, ptr %pos.0.i, align 1
  %len.i273.i = getelementptr inbounds %struct.mrvl_ie_header, ptr %pos.0.i, i32 0, i32 1
  %182 = ptrtoint ptr %len.i273.i to i32
  call void @__asan_storeN_noabort(i32 %182, i32 2)
  store i16 256, ptr %len.i273.i, align 1
  %channel2.i.i = getelementptr inbounds %struct.mrvl_ie_ds_param_set, ptr %pos.0.i, i32 0, i32 1
  %183 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv22.i, ptr %channel2.i.i, align 1
  %add.ptr24.i = getelementptr i8, ptr %pos.0.i, i32 5
  br label %if.end39.i

do.body26.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %184 = load i32, ptr @lbs_debug, align 4
  %and27.i = and i32 %184, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.not.i = icmp eq i32 %and27.i, 0
  br i1 %cmp28.not.i, label %do.body26.i.if.end39.i_crit_edge, label %do.end33.i

do.body26.i.if.end39.i_crit_edge:                 ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

do.end33.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #13
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #15
  br label %if.end39.i

if.end39.i:                                       ; preds = %do.end33.i, %do.body26.i.if.end39.i_crit_edge, %if.then20.i
  %pos.1.i = phi ptr [ %add.ptr24.i, %if.then20.i ], [ %pos.0.i, %do.end33.i ], [ %pos.0.i, %do.body26.i.if.end39.i_crit_edge ]
  %185 = ptrtoint ptr %pos.1.i to i32
  call void @__asan_storeN_noabort(i32 %185, i32 2)
  store i16 1024, ptr %pos.1.i, align 1
  %len.i274.i = getelementptr inbounds %struct.mrvl_ie_header, ptr %pos.1.i, i32 0, i32 1
  %186 = ptrtoint ptr %len.i274.i to i32
  call void @__asan_storeN_noabort(i32 %186, i32 2)
  store i16 1536, ptr %len.i274.i, align 1
  %add.ptr41.i = getelementptr i8, ptr %pos.1.i, i32 10
  %add.ptr42.i = getelementptr i8, ptr %pos.1.i, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i.i) #11
  %187 = ptrtoint ptr %n.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %n.i.i, align 4
  %188 = call i32 @llvm.read_register.i32(metadata !240) #11
  %and.i.i.i.i.i.i.i = and i32 %188, -16384
  %189 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %191, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !254
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %if.end39.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end39.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end39.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i375

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i375:                                 ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 696, ptr noundef nonnull @.str.96) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i375, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end39.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i28.i.i = call ptr @ieee80211_bss_get_elem(ptr noundef nonnull %call162, i8 noundef zeroext 1) #11
  %call.i29.i.i = call ptr @ieee80211_bss_get_elem(ptr noundef nonnull %call162, i8 noundef zeroext 50) #11
  %192 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_storeN_noabort(i32 %192, i32 2)
  store i16 256, ptr %add.ptr41.i, align 1
  %tobool.not.i275.i = icmp eq ptr %call.i28.i.i, null
  br i1 %tobool.not.i275.i, label %do.body.i.i, label %if.then.i276.i

if.then.i276.i:                                   ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = call fastcc ptr @add_ie_rates(ptr noundef %add.ptr42.i, ptr noundef nonnull %call.i28.i.i, ptr noundef nonnull %n.i.i) #11
  %tobool3.not.i.i = icmp eq ptr %call.i29.i.i, null
  br i1 %tobool3.not.i.i, label %if.then.i276.i.if.end15.i.i_crit_edge, label %if.then4.i.i

if.then.i276.i.if.end15.i.i_crit_edge:            ; preds = %if.then.i276.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

if.then4.i.i:                                     ; preds = %if.then.i276.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i.i = call fastcc ptr @add_ie_rates(ptr noundef %call2.i.i, ptr noundef nonnull %call.i29.i.i, ptr noundef nonnull %n.i.i) #11
  br label %if.end15.i.i

do.body.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %193 = load i32, ptr @lbs_debug, align 4
  %and.i.i = and i32 %193, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %do.body.i.i.do.end11.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end11.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #15
  br label %do.end11.i.i

do.end11.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.do.end11.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr i8, ptr %pos.1.i, i32 15
  %194 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 -126, ptr %add.ptr42.i, align 1
  %incdec.ptr12.i.i = getelementptr i8, ptr %pos.1.i, i32 16
  %195 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 -124, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr13.i.i = getelementptr i8, ptr %pos.1.i, i32 17
  %196 = ptrtoint ptr %incdec.ptr12.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 -117, ptr %incdec.ptr12.i.i, align 1
  %197 = ptrtoint ptr %incdec.ptr13.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 -106, ptr %incdec.ptr13.i.i, align 1
  %198 = ptrtoint ptr %n.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 4, ptr %n.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %do.end11.i.i, %if.then4.i.i, %if.then.i276.i.if.end15.i.i_crit_edge
  %call.i30.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i30.i.i, label %if.end15.i.i.lbs_add_common_rates_tlv.exit.i_crit_edge, label %land.lhs.true.i33.i.i

if.end15.i.i.lbs_add_common_rates_tlv.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_add_common_rates_tlv.exit.i

land.lhs.true.i33.i.i:                            ; preds = %if.end15.i.i
  %call1.i31.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31.i.i)
  %tobool.not.i32.i.i = icmp eq i32 %call1.i31.i.i, 0
  br i1 %tobool.not.i32.i.i, label %land.lhs.true.i33.i.i.lbs_add_common_rates_tlv.exit.i_crit_edge, label %land.lhs.true2.i35.i.i

land.lhs.true.i33.i.i.lbs_add_common_rates_tlv.exit.i_crit_edge: ; preds = %land.lhs.true.i33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_add_common_rates_tlv.exit.i

land.lhs.true2.i35.i.i:                           ; preds = %land.lhs.true.i33.i.i
  %.b4.i34.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34.i.i, label %land.lhs.true2.i35.i.i.lbs_add_common_rates_tlv.exit.i_crit_edge, label %if.then.i36.i.i

land.lhs.true2.i35.i.i.lbs_add_common_rates_tlv.exit.i_crit_edge: ; preds = %land.lhs.true2.i35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_add_common_rates_tlv.exit.i

if.then.i36.i.i:                                  ; preds = %land.lhs.true2.i35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 724, ptr noundef nonnull @.str.97) #11
  br label %lbs_add_common_rates_tlv.exit.i

lbs_add_common_rates_tlv.exit.i:                  ; preds = %if.then.i36.i.i, %land.lhs.true2.i35.i.i.lbs_add_common_rates_tlv.exit.i_crit_edge, %land.lhs.true.i33.i.i.lbs_add_common_rates_tlv.exit.i_crit_edge, %if.end15.i.i.lbs_add_common_rates_tlv.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !255
  %199 = call i32 @llvm.read_register.i32(metadata !240) #11
  %and.i.i.i.i.i37.i.i = and i32 %199, -16384
  %200 = inttoptr i32 %and.i.i.i.i.i37.i.i to ptr
  %preempt_count.i.i.i.i38.i.i = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %preempt_count.i.i.i.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %preempt_count.i.i.i.i38.i.i, align 4
  %sub.i.i.i.i.i376 = add i32 %202, -1
  store volatile i32 %sub.i.i.i.i.i376, ptr %preempt_count.i.i.i.i38.i.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %203 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %n.i.i, align 4
  %conv.i277.i = trunc i32 %204 to i16
  %205 = call i16 @llvm.bswap.i16(i16 %conv.i277.i) #11
  %len.i278.i = getelementptr i8, ptr %pos.1.i, i32 12
  %206 = ptrtoint ptr %len.i278.i to i32
  call void @__asan_storeN_noabort(i32 %206, i32 2)
  store i16 %205, ptr %len.i278.i, align 1
  %add.i279.i = add i32 %204, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i.i) #11
  %add.ptr44.i = getelementptr i8, ptr %add.ptr41.i, i32 %add.i279.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr44.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr42.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %tobool.not.i280.i = icmp eq ptr %add.ptr44.i, %add.ptr42.i
  br i1 %tobool.not.i280.i, label %lbs_add_common_rates_tlv.exit.i.lbs_deb_hex.exit.i_crit_edge, label %land.lhs.true.i282.i

lbs_add_common_rates_tlv.exit.i.lbs_deb_hex.exit.i_crit_edge: ; preds = %lbs_add_common_rates_tlv.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_deb_hex.exit.i

land.lhs.true.i282.i:                             ; preds = %lbs_add_common_rates_tlv.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %207 = load i32, ptr @lbs_debug, align 4
  %208 = and i32 %207, 2097408
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097408, i32 %208)
  %.not.i = icmp eq i32 %208, 2097408
  br i1 %.not.i, label %for.cond.preheader.i.i, label %land.lhs.true.i282.i.lbs_deb_hex.exit.i_crit_edge

land.lhs.true.i282.i.lbs_deb_hex.exit.i_crit_edge: ; preds = %land.lhs.true.i282.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_deb_hex.exit.i

for.cond.preheader.i.i:                           ; preds = %land.lhs.true.i282.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i)
  %cmp.not32.i.i = icmp slt i32 %sub.ptr.sub.i, 1
  br i1 %cmp.not32.i.i, label %for.cond.preheader.i.i.do.end23.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.do.end23.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i.i

for.body.i.i:                                     ; preds = %do.end18.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %buf.addr.035.i.i = phi ptr [ %incdec.ptr.i286.i, %do.end18.i.i.for.body.i.i_crit_edge ], [ %add.ptr42.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.033.i.i = phi i32 [ %inc.i.i, %do.end18.i.i.for.body.i.i_crit_edge ], [ 1, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %and5.i.i = and i32 %i.033.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i.i)
  %cmp6.i.i = icmp eq i32 %and5.i.i, 1
  br i1 %cmp6.i.i, label %if.then7.i.i, label %for.body.i.i.do.end18.i.i_crit_edge

for.body.i.i.do.end18.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i.i

if.then7.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.033.i.i)
  %cmp8.not.i.i = icmp eq i32 %i.033.i.i, 1
  br i1 %cmp8.not.i.i, label %if.then7.i.i.do.end12.i.i_crit_edge, label %do.end.i284.i

if.then7.i.i.do.end12.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

do.end.i284.i:                                    ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i283.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %do.end.i284.i, %if.then7.i.i.do.end12.i.i_crit_edge
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.75) #15
  br label %do.end18.i.i

do.end18.i.i:                                     ; preds = %do.end12.i.i, %for.body.i.i.do.end18.i.i_crit_edge
  %209 = ptrtoint ptr %buf.addr.035.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %buf.addr.035.i.i, align 1
  %conv.i285.i = zext i8 %210 to i32
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i285.i) #15
  %incdec.ptr.i286.i = getelementptr i8, ptr %buf.addr.035.i.i, i32 1
  %inc.i.i = add i32 %i.033.i.i, 1
  %cmp.not.i287.i = icmp sgt i32 %inc.i.i, %sub.ptr.sub.i
  br i1 %cmp.not.i287.i, label %do.end18.i.i.do.end23.i.i_crit_edge, label %do.end18.i.i.for.body.i.i_crit_edge

do.end18.i.i.for.body.i.i_crit_edge:              ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

do.end18.i.i.do.end23.i.i_crit_edge:              ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i.i

do.end23.i.i:                                     ; preds = %do.end18.i.i.do.end23.i.i_crit_edge, %for.cond.preheader.i.i.do.end23.i.i_crit_edge
  %call25.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %lbs_deb_hex.exit.i

lbs_deb_hex.exit.i:                               ; preds = %do.end23.i.i, %land.lhs.true.i282.i.lbs_deb_hex.exit.i_crit_edge, %lbs_add_common_rates_tlv.exit.i.lbs_deb_hex.exit.i_crit_edge
  %fwrelease.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 10, i32 3
  %211 = ptrtoint ptr %fwrelease.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %fwrelease.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994943, i32 %212)
  %cmp45.i = icmp ugt i32 %212, 150994943
  br i1 %cmp45.i, label %if.then47.i, label %lbs_deb_hex.exit.i.if.end50.i_crit_edge

lbs_deb_hex.exit.i.if.end50.i_crit_edge:          ; preds = %lbs_deb_hex.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

if.then47.i:                                      ; preds = %lbs_deb_hex.exit.i
  %213 = ptrtoint ptr %auth_type.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %auth_type.i, align 4
  %215 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_storeN_noabort(i32 %215, i32 2)
  store i16 7937, ptr %add.ptr44.i, align 1
  %len.i288.i = getelementptr inbounds %struct.mrvl_ie_header, ptr %add.ptr44.i, i32 0, i32 1
  %216 = ptrtoint ptr %len.i288.i to i32
  call void @__asan_storeN_noabort(i32 %216, i32 2)
  store i16 512, ptr %len.i288.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %214)
  %217 = icmp ult i32 %214, 9
  br i1 %217, label %switch.lookup420, label %if.then47.i.lbs_add_auth_type_tlv.exit.i_crit_edge

if.then47.i.lbs_add_auth_type_tlv.exit.i_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_add_auth_type_tlv.exit.i

switch.lookup420:                                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep421 = getelementptr inbounds [9 x i16], ptr @switch.table.lbs_cfg_connect.135, i32 0, i32 %214
  %218 = ptrtoint ptr %switch.gep421 to i32
  call void @__asan_load2_noabort(i32 %218)
  %switch.load422 = load i16, ptr %switch.gep421, align 2
  br label %lbs_add_auth_type_tlv.exit.i

lbs_add_auth_type_tlv.exit.i:                     ; preds = %switch.lookup420, %if.then47.i.lbs_add_auth_type_tlv.exit.i_crit_edge
  %ret.0.i.i.i = phi i16 [ -524, %if.then47.i.lbs_add_auth_type_tlv.exit.i_crit_edge ], [ %switch.load422, %switch.lookup420 ]
  %219 = call i16 @llvm.bswap.i16(i16 %ret.0.i.i.i) #11
  %auth2.i.i = getelementptr inbounds %struct.mrvl_ie_auth_type, ptr %add.ptr44.i, i32 0, i32 1
  %220 = ptrtoint ptr %auth2.i.i to i32
  call void @__asan_storeN_noabort(i32 %220, i32 2)
  store i16 %219, ptr %auth2.i.i, align 1
  %add.ptr49.i = getelementptr i8, ptr %add.ptr44.i, i32 6
  br label %if.end50.i

if.end50.i:                                       ; preds = %lbs_add_auth_type_tlv.exit.i, %lbs_deb_hex.exit.i.if.end50.i_crit_edge
  %pos.2.i = phi ptr [ %add.ptr49.i, %lbs_add_auth_type_tlv.exit.i ], [ %add.ptr44.i, %lbs_deb_hex.exit.i.if.end50.i_crit_edge ]
  %ie.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 7
  %221 = ptrtoint ptr %ie.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ie.i, align 4
  %tobool51.not.i = icmp eq ptr %222, null
  br i1 %tobool51.not.i, label %if.end50.i.if.end59.i_crit_edge, label %land.lhs.true.i

if.end50.i.if.end59.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i

land.lhs.true.i:                                  ; preds = %if.end50.i
  %ie_len.i378 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 8
  %223 = ptrtoint ptr %ie_len.i378 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %ie_len.i378, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool52.not.i = icmp eq i32 %224, 0
  br i1 %tobool52.not.i, label %land.lhs.true.i.if.end59.i_crit_edge, label %if.then53.i

land.lhs.true.i.if.end59.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i

if.then53.i:                                      ; preds = %land.lhs.true.i
  %incdec.ptr.i289.i = getelementptr i8, ptr %222, i32 1
  %225 = ptrtoint ptr %222 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %222, align 1
  %incdec.ptr1.i.i = getelementptr i8, ptr %pos.2.i, i32 1
  %227 = ptrtoint ptr %pos.2.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %pos.2.i, align 1
  %incdec.ptr2.i.i = getelementptr i8, ptr %pos.2.i, i32 2
  %228 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 0, ptr %incdec.ptr1.i.i, align 1
  %229 = ptrtoint ptr %incdec.ptr.i289.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %incdec.ptr.i289.i, align 1
  %incdec.ptr4.i.i = getelementptr i8, ptr %pos.2.i, i32 3
  %231 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %230, ptr %incdec.ptr2.i.i, align 1
  %232 = ptrtoint ptr %incdec.ptr4.i.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 0, ptr %incdec.ptr4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool.not15.i.i = icmp eq i8 %230, 0
  br i1 %tobool.not15.i.i, label %if.then53.i.lbs_add_wpa_tlv.exit.i_crit_edge, label %while.body.preheader.i.i

if.then53.i.lbs_add_wpa_tlv.exit.i_crit_edge:     ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_add_wpa_tlv.exit.i

while.body.preheader.i.i:                         ; preds = %if.then53.i
  %incdec.ptr5.i.i = getelementptr i8, ptr %pos.2.i, i32 4
  %conv.i290.i = zext i8 %230 to i32
  %incdec.ptr3.i.i = getelementptr i8, ptr %222, i32 2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %tlv_len.018.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %conv.i290.i, %while.body.preheader.i.i ]
  %tlv.addr.017.i.i = phi ptr [ %incdec.ptr7.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %incdec.ptr5.i.i, %while.body.preheader.i.i ]
  %ie.addr.016.i.i = phi ptr [ %incdec.ptr6.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %incdec.ptr3.i.i, %while.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %tlv_len.018.i.i, -1
  %incdec.ptr6.i.i = getelementptr i8, ptr %ie.addr.016.i.i, i32 1
  %233 = ptrtoint ptr %ie.addr.016.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %ie.addr.016.i.i, align 1
  %incdec.ptr7.i.i = getelementptr i8, ptr %tlv.addr.017.i.i, i32 1
  %235 = ptrtoint ptr %tlv.addr.017.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %tlv.addr.017.i.i, align 1
  %tobool.not.i291.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i291.i, label %while.body.i.i.lbs_add_wpa_tlv.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.lbs_add_wpa_tlv.exit.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_add_wpa_tlv.exit.i

lbs_add_wpa_tlv.exit.i:                           ; preds = %while.body.i.i.lbs_add_wpa_tlv.exit.i_crit_edge, %if.then53.i.lbs_add_wpa_tlv.exit.i_crit_edge
  %conv8.i.i = and i32 %224, 255
  %add.i292.i = add nuw nsw i32 %conv8.i.i, 2
  %add.ptr58.i = getelementptr i8, ptr %pos.2.i, i32 %add.i292.i
  br label %if.end59.i

if.end59.i:                                       ; preds = %lbs_add_wpa_tlv.exit.i, %land.lhs.true.i.if.end59.i_crit_edge, %if.end50.i.if.end59.i_crit_edge
  %pos.3.i = phi ptr [ %add.ptr58.i, %lbs_add_wpa_tlv.exit.i ], [ %pos.2.i, %land.lhs.true.i.if.end59.i_crit_edge ], [ %pos.2.i, %if.end50.i.if.end59.i_crit_edge ]
  %sub.ptr.lhs.cast61.i = ptrtoint ptr %pos.3.i to i32
  %sub.ptr.rhs.cast62.i = ptrtoint ptr %iebuf.i to i32
  %sub.ptr.sub63.i = sub i32 %sub.ptr.lhs.cast61.i, %sub.ptr.rhs.cast62.i
  %236 = trunc i32 %sub.ptr.sub63.i to i16
  %conv66.i = add i16 %236, 21
  %237 = call i16 @llvm.bswap.i16(i16 %conv66.i) #11
  %size.i379 = getelementptr inbounds %struct.cmd_header, ptr %call7.i.i.i366, i32 0, i32 1
  %238 = ptrtoint ptr %size.i379 to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %237, ptr %size.i379, align 2
  %conv70.i = zext i16 %conv66.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv66.i)
  %tobool.not.i293.i = icmp eq i16 %conv66.i, 0
  br i1 %tobool.not.i293.i, label %if.end59.i.lbs_deb_hex.exit321.i_crit_edge, label %land.lhs.true.i299.i

if.end59.i.lbs_deb_hex.exit321.i_crit_edge:       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_deb_hex.exit321.i

land.lhs.true.i299.i:                             ; preds = %if.end59.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %239 = load i32, ptr @lbs_debug, align 4
  %240 = and i32 %239, 2097408
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097408, i32 %240)
  %.not325.i = icmp eq i32 %240, 2097408
  br i1 %.not325.i, label %do.end18.i318.peel.i, label %land.lhs.true.i299.i.lbs_deb_hex.exit321.i_crit_edge

land.lhs.true.i299.i.lbs_deb_hex.exit321.i_crit_edge: ; preds = %land.lhs.true.i299.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_deb_hex.exit321.i

do.end18.i318.peel.i:                             ; preds = %land.lhs.true.i299.i
  %call14.i311.peel.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.76) #15
  %241 = ptrtoint ptr %call7.i.i.i366 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %call7.i.i.i366, align 8
  %conv.i313.peel.i = zext i8 %242 to i32
  %call20.i314.peel.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i313.peel.i) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv66.i)
  %exitcond.peel.i = icmp eq i16 %conv66.i, 1
  br i1 %exitcond.peel.i, label %do.end18.i318.peel.i.do.end23.i320.i_crit_edge, label %do.end18.i318.peel.i.for.body.i306.i_crit_edge

do.end18.i318.peel.i.for.body.i306.i_crit_edge:   ; preds = %do.end18.i318.peel.i
  br label %for.body.i306.i

do.end18.i318.peel.i.do.end23.i320.i_crit_edge:   ; preds = %do.end18.i318.peel.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i320.i

for.body.i306.i:                                  ; preds = %do.end18.i318.i.for.body.i306.i_crit_edge, %do.end18.i318.peel.i.for.body.i306.i_crit_edge
  %buf.addr.035.i302.pn.i = phi ptr [ %buf.addr.035.i302.i, %do.end18.i318.i.for.body.i306.i_crit_edge ], [ %call7.i.i.i366, %do.end18.i318.peel.i.for.body.i306.i_crit_edge ]
  %i.033.i303.i = phi i32 [ %inc.i316.i, %do.end18.i318.i.for.body.i306.i_crit_edge ], [ 2, %do.end18.i318.peel.i.for.body.i306.i_crit_edge ]
  %buf.addr.035.i302.i = getelementptr i8, ptr %buf.addr.035.i302.pn.i, i32 1
  %and5.i304.i = and i32 %i.033.i303.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i304.i)
  %cmp6.i305.i = icmp eq i32 %and5.i304.i, 1
  br i1 %cmp6.i305.i, label %do.end12.i312.i, label %for.body.i306.i.do.end18.i318.i_crit_edge

for.body.i306.i.do.end18.i318.i_crit_edge:        ; preds = %for.body.i306.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i318.i

do.end12.i312.i:                                  ; preds = %for.body.i306.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i309.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  %call14.i311.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.76) #15
  br label %do.end18.i318.i

do.end18.i318.i:                                  ; preds = %do.end12.i312.i, %for.body.i306.i.do.end18.i318.i_crit_edge
  %243 = ptrtoint ptr %buf.addr.035.i302.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %buf.addr.035.i302.i, align 1
  %conv.i313.i = zext i8 %244 to i32
  %call20.i314.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i313.i) #15
  %inc.i316.i = add nuw nsw i32 %i.033.i303.i, 1
  %exitcond.i = icmp eq i32 %i.033.i303.i, %conv70.i
  br i1 %exitcond.i, label %do.end18.i318.i.do.end23.i320.i_crit_edge, label %do.end18.i318.i.for.body.i306.i_crit_edge, !llvm.loop !256

do.end18.i318.i.for.body.i306.i_crit_edge:        ; preds = %do.end18.i318.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i306.i

do.end18.i318.i.do.end23.i320.i_crit_edge:        ; preds = %do.end18.i318.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i320.i

do.end23.i320.i:                                  ; preds = %do.end18.i318.i.do.end23.i320.i_crit_edge, %do.end18.i318.peel.i.do.end23.i320.i_crit_edge
  %call25.i319.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %lbs_deb_hex.exit321.i

lbs_deb_hex.exit321.i:                            ; preds = %do.end23.i320.i, %land.lhs.true.i299.i.lbs_deb_hex.exit321.i_crit_edge, %if.end59.i.lbs_deb_hex.exit321.i_crit_edge
  %assoc_bss.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 41
  %245 = call ptr @memcpy(ptr %assoc_bss.i, ptr %bssid1.i, i32 6)
  %246 = ptrtoint ptr %size.i379 to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %size.i379, align 2
  %248 = call i16 @llvm.bswap.i16(i16 %247) #11
  %249 = ptrtoint ptr %size.i379 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 5378, ptr %size.i379, align 2
  %conv80.i = zext i16 %248 to i32
  %250 = ptrtoint ptr %call7.i.i.i366 to i32
  %call81.i = call i32 @__lbs_cmd(ptr noundef %priv.i, i16 noundef zeroext 80, ptr noundef nonnull %call7.i.i.i366, i32 noundef %conv80.i, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %250) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %if.end84.i, label %lbs_deb_hex.exit321.i.if.then248_crit_edge

lbs_deb_hex.exit321.i.if.then248_crit_edge:       ; preds = %lbs_deb_hex.exit321.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then248

if.end84.i:                                       ; preds = %lbs_deb_hex.exit321.i
  %statuscode.i = getelementptr inbounds %struct.cmd_ds_802_11_associate_response, ptr %call7.i.i.i366, i32 0, i32 2
  %251 = ptrtoint ptr %statuscode.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %statuscode.i, align 2
  %253 = call i16 @llvm.bswap.i16(i16 %252) #11
  %conv85.i = zext i16 %253 to i32
  %254 = ptrtoint ptr %fwrelease.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %fwrelease.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994944, i32 %255)
  %cmp88.i = icmp ult i32 %255, 150994944
  br i1 %cmp88.i, label %if.then90.i, label %if.end84.i.do.body160.i_crit_edge

if.end84.i.do.body160.i_crit_edge:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body160.i

if.then90.i:                                      ; preds = %if.end84.i
  %256 = zext i16 %253 to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.140)
  switch i16 %253, label %do.body146.i [
    i16 0, label %if.then90.i.do.body160.i_crit_edge
    i16 1, label %do.body91.i
    i16 2, label %do.body105.i
    i16 3, label %do.body119.i
    i16 4, label %do.body133.i
  ]

if.then90.i.do.body160.i_crit_edge:               ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body160.i

do.body91.i:                                      ; preds = %if.then90.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %257 = load i32, ptr @lbs_debug, align 4
  %and92.i = and i32 %257, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %cmp93.not.i = icmp eq i32 %and92.i, 0
  br i1 %cmp93.not.i, label %do.body91.i.do.body160.i_crit_edge, label %do.end98.i

do.body91.i.do.body160.i_crit_edge:               ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body160.i

do.end98.i:                                       ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #13
  %call100.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #15
  br label %do.body160.i

do.body105.i:                                     ; preds = %if.then90.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %258 = load i32, ptr @lbs_debug, align 4
  %and106.i = and i32 %258, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %cmp107.not.i = icmp eq i32 %and106.i, 0
  br i1 %cmp107.not.i, label %do.body105.i.do.body160.i_crit_edge, label %do.end112.i

do.body105.i.do.body160.i_crit_edge:              ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body160.i

do.end112.i:                                      ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #13
  %call114.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #15
  br label %do.body160.i

do.body119.i:                                     ; preds = %if.then90.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %259 = load i32, ptr @lbs_debug, align 4
  %and120.i = and i32 %259, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %cmp121.not.i = icmp eq i32 %and120.i, 0
  br i1 %cmp121.not.i, label %do.body119.i.do.body160.i_crit_edge, label %do.end126.i

do.body119.i.do.body160.i_crit_edge:              ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body160.i

do.end126.i:                                      ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #13
  %call128.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #15
  br label %do.body160.i

do.body133.i:                                     ; preds = %if.then90.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %260 = load i32, ptr @lbs_debug, align 4
  %and134.i = and i32 %260, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.i)
  %cmp135.not.i = icmp eq i32 %and134.i, 0
  br i1 %cmp135.not.i, label %do.body133.i.do.body160.i_crit_edge, label %do.end140.i

do.body133.i.do.body160.i_crit_edge:              ; preds = %do.body133.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body160.i

do.end140.i:                                      ; preds = %do.body133.i
  call void @__sanitizer_cov_trace_pc() #13
  %call142.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #15
  br label %do.body160.i

do.body146.i:                                     ; preds = %if.then90.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %261 = load i32, ptr @lbs_debug, align 4
  %and147.i = and i32 %261, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147.i)
  %cmp148.not.i = icmp eq i32 %and147.i, 0
  br i1 %cmp148.not.i, label %do.body146.i.do.body160.i_crit_edge, label %do.end153.i

do.body146.i.do.body160.i_crit_edge:              ; preds = %do.body146.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body160.i

do.end153.i:                                      ; preds = %do.body146.i
  call void @__sanitizer_cov_trace_pc() #13
  %call155.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %conv85.i) #15
  br label %do.body160.i

do.body160.i:                                     ; preds = %do.end153.i, %do.body146.i.do.body160.i_crit_edge, %do.end140.i, %do.body133.i.do.body160.i_crit_edge, %do.end126.i, %do.body119.i.do.body160.i_crit_edge, %do.end112.i, %do.body105.i.do.body160.i_crit_edge, %do.end98.i, %do.body91.i.do.body160.i_crit_edge, %if.then90.i.do.body160.i_crit_edge, %if.end84.i.do.body160.i_crit_edge
  %status.0.i = phi i32 [ %conv85.i, %do.end153.i ], [ %conv85.i, %do.body146.i.do.body160.i_crit_edge ], [ 0, %if.then90.i.do.body160.i_crit_edge ], [ %conv85.i, %if.end84.i.do.body160.i_crit_edge ], [ 10, %do.end98.i ], [ 10, %do.body91.i.do.body160.i_crit_edge ], [ 16, %do.end112.i ], [ 16, %do.body105.i.do.body160.i_crit_edge ], [ 12, %do.end126.i ], [ 12, %do.body119.i.do.body160.i_crit_edge ], [ 14, %do.end140.i ], [ 14, %do.body133.i.do.body160.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %262 = load i32, ptr @lbs_debug, align 4
  %and161.i = and i32 %262, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161.i)
  %cmp162.not.i = icmp eq i32 %and161.i, 0
  br i1 %cmp162.not.i, label %do.body160.i.do.end177.i_crit_edge, label %do.end167.i

do.body160.i.do.end177.i_crit_edge:               ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end177.i

do.end167.i:                                      ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #13
  %263 = ptrtoint ptr %statuscode.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %statuscode.i, align 2
  %265 = call i16 @llvm.bswap.i16(i16 %264) #11
  %conv170.i = zext i16 %265 to i32
  %266 = ptrtoint ptr %bssid.i368 to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %bssid.i368, align 8
  %268 = call i16 @llvm.bswap.i16(i16 %267) #11
  %conv172.i = zext i16 %268 to i32
  %aid.i = getelementptr inbounds %struct.cmd_ds_802_11_associate_response, ptr %call7.i.i.i366, i32 0, i32 3
  %269 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %aid.i, align 4
  %271 = call i16 @llvm.bswap.i16(i16 %270) #11
  %conv173.i = zext i16 %271 to i32
  %call174.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %status.0.i, i32 noundef %conv170.i, i32 noundef %conv172.i, i32 noundef %conv173.i) #15
  br label %do.end177.i

do.end177.i:                                      ; preds = %do.end167.i, %do.body160.i.do.end177.i_crit_edge
  %272 = ptrtoint ptr %size.i379 to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %size.i379, align 2
  %274 = call i16 @llvm.bswap.i16(i16 %273) #11
  %conv180.i = zext i16 %274 to i32
  %sub181.i = add nsw i32 %conv180.i, -14
  %275 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %priv.i, align 4
  %277 = ptrtoint ptr %ie.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %ie.i, align 4
  %ie_len185.i = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 8
  %279 = ptrtoint ptr %ie_len185.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %ie_len185.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %params.i.i.i) #11
  %281 = getelementptr inbounds i8, ptr %params.i.i.i, i32 28
  %282 = call ptr @memset(ptr %281, i32 0, i32 24)
  %283 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %status.0.i, ptr %params.i.i.i, align 4
  %bssid2.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 1
  %284 = ptrtoint ptr %bssid2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %assoc_bss.i, ptr %bssid2.i.i.i, align 4
  %bss3.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 2
  %285 = ptrtoint ptr %bss3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr null, ptr %bss3.i.i.i, align 4
  %req_ie4.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 3
  %286 = ptrtoint ptr %req_ie4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %278, ptr %req_ie4.i.i.i, align 4
  %req_ie_len5.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 4
  %287 = ptrtoint ptr %req_ie_len5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %280, ptr %req_ie_len5.i.i.i, align 4
  %resp_ie6.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 5
  %288 = ptrtoint ptr %resp_ie6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %capability3.i, ptr %resp_ie6.i.i.i, align 4
  %resp_ie_len7.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 6
  %289 = ptrtoint ptr %resp_ie_len7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %sub181.i, ptr %resp_ie_len7.i.i.i, align 4
  %timeout_reason8.i.i.i = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %params.i.i.i, i32 0, i32 8
  %290 = ptrtoint ptr %timeout_reason8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 0, ptr %timeout_reason8.i.i.i, align 4
  call void @cfg80211_connect_done(ptr noundef %276, ptr noundef nonnull %params.i.i.i, i32 noundef 3264) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %params.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %cmp189.i = icmp eq i32 %status.0.i, 0
  br i1 %cmp189.i, label %if.then191.i, label %do.end177.i.if.end197.i_crit_edge

do.end177.i.if.end197.i_crit_edge:                ; preds = %do.end177.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end197.i

if.then191.i:                                     ; preds = %do.end177.i
  %connect_status.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1
  %291 = ptrtoint ptr %connect_status.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 0, ptr %connect_status.i, align 4
  %292 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %priv.i, align 4
  call void @netif_carrier_on(ptr noundef %293) #11
  %tx_pending_len.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 4, i32 66
  %294 = ptrtoint ptr %tx_pending_len.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %tx_pending_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %tobool193.not.i = icmp eq i32 %295, 0
  br i1 %tobool193.not.i, label %if.then194.i, label %if.then191.i.if.end197.i_crit_edge

if.then191.i.if.end197.i_crit_edge:               ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end197.i

if.then194.i:                                     ; preds = %if.then191.i
  %296 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %priv.i, align 4
  %num_tx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %297, i32 0, i32 104
  %298 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %cmp4.not.i.i = icmp eq i32 %299, 0
  br i1 %cmp4.not.i.i, label %if.then194.i.if.end197.i_crit_edge, label %for.body.lr.ph.i.i

if.then194.i.if.end197.i_crit_edge:               ; preds = %if.then194.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end197.i

for.body.lr.ph.i.i:                               ; preds = %if.then194.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %297, i32 0, i32 103
  br label %for.body.i324.i

for.body.i324.i:                                  ; preds = %for.body.i324.i.for.body.i324.i_crit_edge, %for.body.lr.ph.i.i
  %i.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i323.i, %for.body.i324.i.for.body.i324.i_crit_edge ]
  %300 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %_tx.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr %struct.netdev_queue, ptr %301, i32 %i.05.i.i
  call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i.i) #11
  %inc.i323.i = add nuw i32 %i.05.i.i, 1
  %302 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i323.i, %303
  br i1 %cmp.i.i, label %for.body.i324.i.for.body.i324.i_crit_edge, label %for.body.i324.i.if.end197.i_crit_edge

for.body.i324.i.if.end197.i_crit_edge:            ; preds = %for.body.i324.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end197.i

for.body.i324.i.for.body.i324.i_crit_edge:        ; preds = %for.body.i324.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i324.i

if.end197.i:                                      ; preds = %for.body.i324.i.if.end197.i_crit_edge, %if.then194.i.if.end197.i_crit_edge, %if.then191.i.if.end197.i_crit_edge, %do.end177.i.if.end197.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i366) #11
  br label %if.then248

if.then248:                                       ; preds = %if.end197.i, %lbs_deb_hex.exit321.i.if.then248_crit_edge, %if.end244.if.then248_crit_edge, %do.end242, %do.end232
  %ret.1407 = phi i32 [ -12, %if.end244.if.then248_crit_edge ], [ -524, %do.end242 ], [ -524, %do.end232 ], [ %call81.i, %lbs_deb_hex.exit321.i.if.then248_crit_edge ], [ 0, %if.end197.i ]
  call void @cfg80211_put_bss(ptr noundef nonnull %wiphy, ptr noundef nonnull %call162) #11
  br label %cleanup250

cleanup250:                                       ; preds = %if.then248, %do.end167, %if.else.i, %if.end52.cleanup250_crit_edge, %wiphy_priv.exit.cleanup250_crit_edge
  %retval.0 = phi i32 [ -95, %wiphy_priv.exit.cleanup250_crit_edge ], [ %ret.1407, %if.then248 ], [ -2, %do.end167 ], [ -22, %if.end52.cleanup250_crit_edge ], [ -22, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_cfg_disconnect(ptr noundef %wiphy, ptr noundef readnone %dev, i16 noundef zeroext %reason_code) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_802_11_deauthenticate, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !250

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #11, !srcloc !252
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %mesh_dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 45
  %0 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh_dev, align 4
  %cmp = icmp eq ptr %1, %dev
  br i1 %cmp, label %wiphy_priv.exit.cleanup_crit_edge, label %if.end

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %conv = trunc i16 %reason_code to i8
  %disassoc_reason = getelementptr inbounds %struct.lbs_private, ptr %priv.i, i32 0, i32 10
  %2 = ptrtoint ptr %disassoc_reason to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %disassoc_reason, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i) #11
  %3 = getelementptr inbounds %struct.cmd_ds_802_11_deauthenticate, ptr %cmd.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.cmd_ds_802_11_deauthenticate, ptr %cmd.i, i32 0, i32 2
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 17592186044416, ptr %cmd.i, align 8
  %assoc_bss.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 41
  %6 = call ptr @memcpy(ptr %3, ptr %assoc_bss.i, i32 6)
  %7 = tail call i16 @llvm.bswap.i16(i16 %reason_code) #11
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %4, align 2
  %9 = ptrtoint ptr %cmd.i to i32
  %call.i = call i32 @__lbs_cmd(ptr noundef %priv.i, i16 noundef zeroext 36, ptr noundef nonnull %cmd.i, i32 noundef 16, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i5 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i5, label %if.end.i, label %if.end.lbs_disconnect.exit_crit_edge

if.end.lbs_disconnect.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_disconnect.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 4
  call void @cfg80211_disconnected(ptr noundef %11, i16 noundef zeroext %reason_code, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i32 noundef 3264) #11
  %connect_status.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %connect_status.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %connect_status.i, align 4
  br label %lbs_disconnect.exit

lbs_disconnect.exit:                              ; preds = %if.end.i, %if.end.lbs_disconnect.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #11
  br label %cleanup

cleanup:                                          ; preds = %lbs_disconnect.exit, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %lbs_disconnect.exit ], [ -95, %wiphy_priv.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_join_ibss(ptr noundef %wiphy, ptr noundef readnone %dev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %cmd.i36 = alloca %struct.cmd_ds_802_11_ad_hoc_start, align 1
  %cmd.i = alloca %struct.cmd_ds_802_11_ad_hoc_join, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !250

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #11, !srcloc !252
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %mesh_dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 45
  %0 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh_dev, align 4
  %cmp = icmp eq ptr %1, %dev
  br i1 %cmp, label %wiphy_priv.exit.cleanup_crit_edge, label %if.end

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %chandef = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_value, align 2
  %conv = trunc i16 %5 to i8
  %call5 = tail call i32 @lbs_set_channel(ptr noundef %priv.i, i8 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  %6 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef, align 4
  %bssid = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bssid, align 4
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %params, align 4
  %ssid_len = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 4
  %12 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ssid_len, align 4
  %conv11 = zext i8 %13 to i32
  %call12 = tail call ptr @cfg80211_get_bss(ptr noundef nonnull %wiphy, ptr noundef %7, ptr noundef %9, ptr noundef %11, i32 noundef %conv11, i32 noundef 2, i32 noundef 2) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 101, ptr nonnull %cmd.i) #11
  %call.i = tail call i32 @lbs_set_radio(ptr noundef %priv.i, i8 noundef zeroext 2, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i35 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i35, label %if.end.i, label %if.then14.lbs_ibss_join_existing.exit_crit_edge

if.then14.lbs_ibss_join_existing.exit_crit_edge:  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_ibss_join_existing.exit

if.end.i:                                         ; preds = %if.then14
  %14 = call ptr @memset(ptr %cmd.i, i32 0, i32 101)
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 25856, ptr %size.i, align 1
  %bss1.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 1
  %bssid2.i = getelementptr inbounds %struct.cfg80211_bss, ptr %call12, i32 0, i32 11
  %16 = call ptr @memcpy(ptr %bss1.i, ptr %bssid2.i, i32 6)
  %ssid.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %params, align 4
  %19 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ssid_len, align 4
  %conv.i = zext i8 %20 to i32
  %21 = call ptr @memcpy(ptr %ssid.i, ptr %18, i32 %conv.i)
  %type.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %type.i, align 1
  %beacon_interval.i = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 6
  %23 = ptrtoint ptr %beacon_interval.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %beacon_interval.i, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #11
  %beaconperiod.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %beaconperiod.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %beaconperiod.i, align 1
  %ds.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 1, i32 7
  %27 = ptrtoint ptr %ds.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %ds.i, align 1
  %len.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 1, i32 7, i32 0, i32 1
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %len.i, align 1
  %29 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chandef, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %hw_value.i, align 2
  %conv13.i = trunc i16 %32 to i8
  %channel.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 1, i32 7, i32 1
  %33 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv13.i, ptr %channel.i, align 1
  %ibss.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 1, i32 9
  %34 = ptrtoint ptr %ibss.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 6, ptr %ibss.i, align 1
  %len22.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 1, i32 9, i32 0, i32 1
  %35 = ptrtoint ptr %len22.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %len22.i, align 1
  %atimwindow.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 1, i32 9, i32 1
  %36 = ptrtoint ptr %atimwindow.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 0, ptr %atimwindow.i, align 1
  %capability.i = getelementptr inbounds %struct.cfg80211_bss, ptr %call12, i32 0, i32 10
  %37 = ptrtoint ptr %capability.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %capability.i, align 2
  %39 = and i16 %38, 9727
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #11
  %capability28.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 1, i32 11
  %41 = ptrtoint ptr %capability28.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %capability28.i, align 1
  %42 = tail call i32 @llvm.read_register.i32(metadata !240) #11
  %and.i.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !254
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 696, ptr noundef nonnull @.str.96) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %call.i139.i = tail call ptr @ieee80211_bss_get_elem(ptr noundef nonnull %call12, i8 noundef zeroext 1) #11
  %tobool30.not.i = icmp eq ptr %call.i139.i, null
  br i1 %tobool30.not.i, label %if.then31.i, label %if.else.i

if.then31.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %rates33.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 1, i32 12
  call fastcc void @lbs_add_rates(ptr noundef %rates33.i) #11
  br label %if.end93.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %arrayidx.i = getelementptr i8, ptr %call.i139.i, i32 1
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %conv36.i = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %47)
  %cmp.i = icmp ugt i8 %47, 14
  br i1 %cmp.i, label %do.body.i, label %if.end48.i

do.body.i:                                        ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %48 = load i32, ptr @lbs_debug, align 4
  %and39.i = and i32 %48, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %cmp40.not.i = icmp eq i32 %and39.i, 0
  br i1 %cmp40.not.i, label %do.body.i.do.end47.i_crit_edge, label %do.end.i

do.body.i.do.end47.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #15
  br label %do.end47.i

do.end47.i:                                       ; preds = %do.end.i, %do.body.i.do.end47.i_crit_edge
  %call.i140.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i140.i, label %do.end47.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i143.i

do.end47.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i143.i:                             ; preds = %do.end47.i
  %call1.i141.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i141.i)
  %tobool.not.i142.i = icmp eq i32 %call1.i141.i, 0
  br i1 %tobool.not.i142.i, label %land.lhs.true.i143.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i145.i

land.lhs.true.i143.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i145.i:                            ; preds = %land.lhs.true.i143.i
  %.b4.i144.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i144.i, label %land.lhs.true2.i145.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i146.i

land.lhs.true2.i145.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i145.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i146.i:                                   ; preds = %land.lhs.true2.i145.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 724, ptr noundef nonnull @.str.97) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i146.i, %land.lhs.true2.i145.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i143.i.rcu_read_unlock.exit.i_crit_edge, %do.end47.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !255
  %49 = tail call i32 @llvm.read_register.i32(metadata !240) #11
  %and.i.i.i.i.i147.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i147.i to ptr
  %preempt_count.i.i.i.i148.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i148.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i148.i, align 4
  %sub.i.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i148.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %lbs_ibss_join_existing.exit

if.end48.i:                                       ; preds = %if.else.i
  %rates50.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 1, i32 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp59160.not.i = icmp eq i8 %47, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.end48.i
  %hw.0164.i = phi i32 [ 0, %if.end48.i ], [ %inc91.i, %for.end.i.for.body.i_crit_edge ]
  %rates.0163.i = phi ptr [ %rates50.i, %if.end48.i ], [ %rates.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  br i1 %cmp59160.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body61.lr.ph.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body61.lr.ph.i:                               ; preds = %for.body.i
  %bitrate.i = getelementptr [12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 %hw.0164.i, i32 1
  %53 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %bitrate.i, align 4
  %55 = udiv i16 %54, 5
  %56 = trunc i16 %55 to i8
  br label %for.body61.i

for.body61.i:                                     ; preds = %for.inc.i.for.body61.i_crit_edge, %for.body61.lr.ph.i
  %rates.1162.i = phi ptr [ %rates.0163.i, %for.body61.lr.ph.i ], [ %rates.2.i, %for.inc.i.for.body61.i_crit_edge ]
  %i.0161.i = phi i32 [ 0, %for.body61.lr.ph.i ], [ %inc.i, %for.inc.i.for.body61.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.0161.i, 2
  %arrayidx63.i = getelementptr i8, ptr %call.i139.i, i32 %add.i
  %57 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx63.i, align 1
  %59 = and i8 %58, 127
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %56)
  %cmp66.i = icmp eq i8 %59, %56
  br i1 %cmp66.i, label %if.then68.i, label %for.body61.i.for.inc.i_crit_edge

for.body61.i.for.inc.i_crit_edge:                 ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then68.i:                                      ; preds = %for.body61.i
  %60 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %58, label %if.then68.i.if.end88.i_crit_edge [
    i8 2, label %if.then68.i.if.then85.i_crit_edge
    i8 4, label %if.then68.i.if.then85.i_crit_edge57
    i8 11, label %if.then68.i.if.then85.i_crit_edge58
    i8 22, label %if.then68.i.if.then85.i_crit_edge59
  ]

if.then68.i.if.then85.i_crit_edge59:              ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then85.i

if.then68.i.if.then85.i_crit_edge58:              ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then85.i

if.then68.i.if.then85.i_crit_edge57:              ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then85.i

if.then68.i.if.then85.i_crit_edge:                ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then85.i

if.then68.i.if.end88.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i

if.then85.i:                                      ; preds = %if.then68.i.if.then85.i_crit_edge, %if.then68.i.if.then85.i_crit_edge57, %if.then68.i.if.then85.i_crit_edge58, %if.then68.i.if.then85.i_crit_edge59
  %or.i = or i8 %58, -128
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then85.i, %if.then68.i.if.end88.i_crit_edge
  %rate.0.i = phi i8 [ %or.i, %if.then85.i ], [ %58, %if.then68.i.if.end88.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %rates.1162.i, i32 1
  %61 = ptrtoint ptr %rates.1162.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %rate.0.i, ptr %rates.1162.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end88.i, %for.body61.i.for.inc.i_crit_edge
  %rates.2.i = phi ptr [ %incdec.ptr.i, %if.end88.i ], [ %rates.1162.i, %for.body61.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0161.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv36.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body61.i_crit_edge

for.inc.i.for.body61.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body61.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %rates.1.lcssa.i = phi ptr [ %rates.0163.i, %for.body.i.for.end.i_crit_edge ], [ %rates.2.i, %for.inc.i.for.end.i_crit_edge ]
  %inc91.i = add nuw nsw i32 %hw.0164.i, 1
  %exitcond165.not.i = icmp eq i32 %inc91.i, 12
  br i1 %exitcond165.not.i, label %for.end.i.if.end93.i_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i.if.end93.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93.i

if.end93.i:                                       ; preds = %for.end.i.if.end93.i_crit_edge, %if.then31.i
  %call.i149.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i149.i, label %if.end93.i.rcu_read_unlock.exit159.i_crit_edge, label %land.lhs.true.i152.i

if.end93.i.rcu_read_unlock.exit159.i_crit_edge:   ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit159.i

land.lhs.true.i152.i:                             ; preds = %if.end93.i
  %call1.i150.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i150.i)
  %tobool.not.i151.i = icmp eq i32 %call1.i150.i, 0
  br i1 %tobool.not.i151.i, label %land.lhs.true.i152.i.rcu_read_unlock.exit159.i_crit_edge, label %land.lhs.true2.i154.i

land.lhs.true.i152.i.rcu_read_unlock.exit159.i_crit_edge: ; preds = %land.lhs.true.i152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit159.i

land.lhs.true2.i154.i:                            ; preds = %land.lhs.true.i152.i
  %.b4.i153.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i153.i, label %land.lhs.true2.i154.i.rcu_read_unlock.exit159.i_crit_edge, label %if.then.i155.i

land.lhs.true2.i154.i.rcu_read_unlock.exit159.i_crit_edge: ; preds = %land.lhs.true2.i154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit159.i

if.then.i155.i:                                   ; preds = %land.lhs.true2.i154.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.95, i32 noundef 724, ptr noundef nonnull @.str.97) #11
  br label %rcu_read_unlock.exit159.i

rcu_read_unlock.exit159.i:                        ; preds = %if.then.i155.i, %land.lhs.true2.i154.i.rcu_read_unlock.exit159.i_crit_edge, %land.lhs.true.i152.i.rcu_read_unlock.exit159.i_crit_edge, %if.end93.i.rcu_read_unlock.exit159.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !255
  %62 = tail call i32 @llvm.read_register.i32(metadata !240) #11
  %and.i.i.i.i.i156.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i156.i to ptr
  %preempt_count.i.i.i.i157.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i157.i, align 4
  %sub.i.i.i158.i = add i32 %65, -1
  store volatile i32 %sub.i.i.i158.i, ptr %preempt_count.i.i.i.i157.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %fwrelease.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 10, i32 3
  %66 = ptrtoint ptr %fwrelease.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fwrelease.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994944, i32 %67)
  %cmp94.i = icmp ult i32 %67, 150994944
  br i1 %cmp94.i, label %if.then96.i, label %rcu_read_unlock.exit159.i.if.end97.i_crit_edge

rcu_read_unlock.exit159.i.if.end97.i_crit_edge:   ; preds = %rcu_read_unlock.exit159.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97.i

if.then96.i:                                      ; preds = %rcu_read_unlock.exit159.i
  call void @__sanitizer_cov_trace_pc() #13
  %failtimeout.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 2
  %68 = ptrtoint ptr %failtimeout.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 -256, ptr %failtimeout.i, align 1
  %probedelay.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, ptr %cmd.i, i32 0, i32 3
  %69 = ptrtoint ptr %probedelay.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 0, ptr %probedelay.i, align 1
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then96.i, %rcu_read_unlock.exit159.i.if.end97.i_crit_edge
  %70 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %size.i, align 1
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #11
  %73 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 25856, ptr %size.i, align 1
  %conv104.i = zext i16 %72 to i32
  %74 = ptrtoint ptr %cmd.i to i32
  %call105.i = call i32 @__lbs_cmd(ptr noundef %priv.i, i16 noundef zeroext 44, ptr noundef nonnull %cmd.i, i32 noundef %conv104.i, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %74) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %tobool106.not.i = icmp eq i32 %call105.i, 0
  br i1 %tobool106.not.i, label %if.end108.i, label %if.end97.i.lbs_ibss_join_existing.exit_crit_edge

if.end97.i.lbs_ibss_join_existing.exit_crit_edge: ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_ibss_join_existing.exit

if.end108.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %capability.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %capability.i, align 2
  call fastcc void @lbs_join_post(ptr noundef %priv.i, ptr noundef %params, ptr noundef %bssid2.i, i16 noundef zeroext %76) #11
  br label %lbs_ibss_join_existing.exit

lbs_ibss_join_existing.exit:                      ; preds = %if.end108.i, %if.end97.i.lbs_ibss_join_existing.exit_crit_edge, %rcu_read_unlock.exit.i, %if.then14.lbs_ibss_join_existing.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then14.lbs_ibss_join_existing.exit_crit_edge ], [ -22, %rcu_read_unlock.exit.i ], [ %call105.i, %if.end97.i.lbs_ibss_join_existing.exit_crit_edge ], [ 0, %if.end108.i ]
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %cmd.i) #11
  call void @cfg80211_put_bss(ptr noundef nonnull %wiphy, ptr noundef nonnull %call12) #11
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 177, ptr nonnull %cmd.i36) #11
  %call.i37 = tail call i32 @lbs_set_radio(ptr noundef %priv.i, i8 noundef zeroext 2, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %if.end.i54, label %if.else.lbs_ibss_start_new.exit_crit_edge

if.else.lbs_ibss_start_new.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_ibss_start_new.exit

if.end.i54:                                       ; preds = %if.else
  %77 = call ptr @memset(ptr %cmd.i36, i32 0, i32 177)
  %size.i39 = getelementptr inbounds %struct.cmd_header, ptr %cmd.i36, i32 0, i32 1
  %78 = ptrtoint ptr %size.i39 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 -20224, ptr %size.i39, align 1
  %ssid.i40 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, ptr %cmd.i36, i32 0, i32 1
  %79 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %params, align 4
  %81 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ssid_len, align 4
  %conv.i42 = zext i8 %82 to i32
  %83 = call ptr @memcpy(ptr %ssid.i40, ptr %80, i32 %conv.i42)
  %bsstype.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, ptr %cmd.i36, i32 0, i32 2
  %84 = ptrtoint ptr %bsstype.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 2, ptr %bsstype.i, align 1
  %beacon_interval.i43 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 6
  %85 = ptrtoint ptr %beacon_interval.i43 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %beacon_interval.i43, align 2
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #11
  %beaconperiod.i44 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, ptr %cmd.i36, i32 0, i32 3
  %88 = ptrtoint ptr %beaconperiod.i44 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %87, ptr %beaconperiod.i44, align 1
  %ibss.i45 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, ptr %cmd.i36, i32 0, i32 5
  %89 = ptrtoint ptr %ibss.i45 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 6, ptr %ibss.i45, align 1
  %len.i46 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, ptr %cmd.i36, i32 0, i32 5, i32 0, i32 1
  %90 = ptrtoint ptr %len.i46 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 2, ptr %len.i46, align 1
  %atimwindow.i47 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, ptr %cmd.i36, i32 0, i32 5, i32 1
  %91 = ptrtoint ptr %atimwindow.i47 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 0, ptr %atimwindow.i47, align 1
  %ds.i48 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, ptr %cmd.i36, i32 0, i32 7
  %92 = ptrtoint ptr %ds.i48 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 3, ptr %ds.i48, align 1
  %len9.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, ptr %cmd.i36, i32 0, i32 7, i32 0, i32 1
  %93 = ptrtoint ptr %len9.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %len9.i, align 1
  %94 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %chandef, align 4
  %hw_value.i50 = getelementptr inbounds %struct.ieee80211_channel, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %hw_value.i50 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %hw_value.i50, align 2
  %conv10.i = trunc i16 %97 to i8
  %channel.i51 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, ptr %cmd.i36, i32 0, i32 7, i32 1
  %98 = ptrtoint ptr %channel.i51 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv10.i, ptr %channel.i51, align 1
  %fwrelease.i52 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 10, i32 3
  %99 = ptrtoint ptr %fwrelease.i52 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %fwrelease.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994944, i32 %100)
  %cmp.i53 = icmp ult i32 %100, 150994944
  br i1 %cmp.i53, label %if.then13.i, label %if.end.i54.if.end14.i_crit_edge

if.end.i54.if.end14.i_crit_edge:                  ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #13
  %probedelay.i55 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, ptr %cmd.i36, i32 0, i32 9
  %101 = ptrtoint ptr %probedelay.i55 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 2)
  store i16 0, ptr %probedelay.i55, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end.i54.if.end14.i_crit_edge
  %capability15.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, ptr %cmd.i36, i32 0, i32 10
  %102 = ptrtoint ptr %capability15.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 512, ptr %capability15.i, align 1
  %rates.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, ptr %cmd.i36, i32 0, i32 11
  call fastcc void @lbs_add_rates(ptr noundef %rates.i) #11
  %103 = ptrtoint ptr %size.i39 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %size.i39, align 1
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #11
  %106 = ptrtoint ptr %size.i39 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 -20224, ptr %size.i39, align 1
  %conv23.i = zext i16 %105 to i32
  %107 = ptrtoint ptr %cmd.i36 to i32
  %call24.i = call i32 @__lbs_cmd(ptr noundef %priv.i, i16 noundef zeroext 43, ptr noundef nonnull %cmd.i36, i32 noundef %conv23.i, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %107) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end14.i.lbs_ibss_start_new.exit_crit_edge

if.end14.i.lbs_ibss_start_new.exit_crit_edge:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_ibss_start_new.exit

if.end27.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %bssid.i = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_result, ptr %cmd.i36, i32 0, i32 2
  call fastcc void @lbs_join_post(ptr noundef %priv.i, ptr noundef %params, ptr noundef %bssid.i, i16 noundef zeroext 2) #11
  br label %lbs_ibss_start_new.exit

lbs_ibss_start_new.exit:                          ; preds = %if.end27.i, %if.end14.i.lbs_ibss_start_new.exit_crit_edge, %if.else.lbs_ibss_start_new.exit_crit_edge
  %ret.0.i56 = phi i32 [ %call.i37, %if.else.lbs_ibss_start_new.exit_crit_edge ], [ %call24.i, %if.end14.i.lbs_ibss_start_new.exit_crit_edge ], [ 0, %if.end27.i ]
  call void @llvm.lifetime.end.p0(i64 177, ptr nonnull %cmd.i36) #11
  br label %cleanup

cleanup:                                          ; preds = %lbs_ibss_start_new.exit, %lbs_ibss_join_existing.exit, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %wiphy_priv.exit.cleanup_crit_edge ], [ %call5, %if.end2.cleanup_crit_edge ], [ %ret.0.i, %lbs_ibss_join_existing.exit ], [ %ret.0.i56, %lbs_ibss_start_new.exit ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_leave_ibss(ptr noundef %wiphy, ptr noundef readnone %dev) #0 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_ad_hoc_stop, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !250

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #11, !srcloc !252
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #11
  %mesh_dev = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 45
  %0 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh_dev, align 4
  %cmp = icmp eq ptr %1, %dev
  br i1 %cmp, label %wiphy_priv.exit.cleanup_crit_edge, label %if.end

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 8796093022208, ptr %cmd, align 8
  %3 = ptrtoint ptr %cmd to i32
  %call6 = call i32 @__lbs_cmd(ptr noundef %priv.i, i16 noundef zeroext 64, ptr noundef nonnull %cmd, i32 noundef 8, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %3) #11
  call void @lbs_mac_event_disconnected(ptr noundef %priv.i, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -95, %wiphy_priv.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_set_power_mgmt(ptr noundef %wiphy, ptr nocapture noundef readnone %dev, i1 noundef zeroext %enabled, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !250

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #11, !srcloc !252
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %fwcapinfo = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 10, i32 3, i32 1
  %0 = ptrtoint ptr %fwcapinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fwcapinfo, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  %. = select i1 %enabled, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %is_polling = getelementptr inbounds %struct.lbs_private, ptr %priv.i, i32 0, i32 41
  %2 = ptrtoint ptr %is_polling to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_polling, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %.36 = select i1 %enabled, i32 -22, i32 0
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %psmode15 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 0, i32 7, i32 1
  br i1 %enabled, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end8
  %4 = ptrtoint ptr %psmode15 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %psmode15, align 4
  %psstate = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 0, i32 7, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %psstate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %psstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.then10.cleanup_crit_edge, label %if.then11

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 @lbs_set_ps_mode(ptr noundef %priv.i, i16 noundef zeroext 49, i1 noundef zeroext true) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %7 = ptrtoint ptr %psmode15 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %psmode15, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp16.not = icmp eq i16 %8, 0
  br i1 %cmp16.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %9 = ptrtoint ptr %psmode15 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %psmode15, align 4
  %connect_status = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %connect_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21 = icmp eq i32 %11, 0
  br i1 %cmp21, label %if.then23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call i32 @lbs_set_ps_mode(ptr noundef %priv.i, i16 noundef zeroext 48, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then11, %if.then10.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ %.36, %if.then4 ], [ 0, %if.then11 ], [ 0, %if.then10.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_set_iface_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lbs_set_wep_keys(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_802_11_set_wep, align 1
  %cmd = alloca %struct.cmd_ds_802_11_set_wep, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cmd) #11
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 80)
  %wep_key_len = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 76
  %1 = ptrtoint ptr %wep_key_len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %wep_key_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 76, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %arrayidx7 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 76, i32 2
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false5.if.then_crit_edge

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %arrayidx12 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 76, i32 3
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool14.not = icmp eq i8 %8, 0
  br i1 %tobool14.not, label %if.else, label %lor.lhs.false10.if.then_crit_edge

lor.lhs.false10.if.then_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false10.if.then_crit_edge, %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %9 = call ptr @memset(ptr %cmd, i32 0, i32 80)
  %size = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 20480, ptr %size, align 1
  %wep_tx_key = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 74
  %11 = ptrtoint ptr %wep_tx_key to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wep_tx_key, align 1
  %conv15 = zext i8 %12 to i16
  %13 = shl nuw i16 %conv15, 8
  %keyindex = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %keyindex to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %keyindex, align 1
  %action = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, ptr %cmd, i32 0, i32 1
  %15 = ptrtoint ptr %action to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 512, ptr %action, align 1
  %16 = ptrtoint ptr %wep_key_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wep_key_len, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %17, label %if.then.sw.epilog_crit_edge [
    i8 5, label %if.then.sw.epilog.sink.split_crit_edge
    i8 13, label %sw.bb21
  ]

if.then.sw.epilog.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb21, %if.then.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 2, %sw.bb21 ], [ 1, %if.then.sw.epilog.sink.split_crit_edge ]
  %arrayidx23 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, ptr %cmd, i32 0, i32 3, i32 0
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %arrayidx23, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then.sw.epilog_crit_edge
  %arrayidx26 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, ptr %cmd, i32 0, i32 4, i32 0
  %arrayidx27 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 75, i32 0
  %conv31 = zext i8 %17 to i32
  %20 = call ptr @memcpy(ptr %arrayidx26, ptr %arrayidx27, i32 %conv31)
  %arrayidx18.1 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 76, i32 1
  %21 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx18.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %22)
  %switch.selectcmp = icmp eq i8 %22, 13
  %switch.select = select i1 %switch.selectcmp, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %22)
  %switch.selectcmp6 = icmp eq i8 %22, 5
  %switch.select7 = select i1 %switch.selectcmp6, i8 1, i8 %switch.select
  %arrayidx25.1 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, ptr %cmd, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %switch.select7, ptr %arrayidx25.1, align 1
  %arrayidx26.1 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, ptr %cmd, i32 0, i32 4, i32 1
  %arrayidx27.1 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 75, i32 1
  %conv31.1 = zext i8 %22 to i32
  %24 = call ptr @memcpy(ptr %arrayidx26.1, ptr %arrayidx27.1, i32 %conv31.1)
  %arrayidx18.2 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 76, i32 2
  %25 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx18.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %26)
  %switch.selectcmp12 = icmp eq i8 %26, 13
  %switch.select13 = select i1 %switch.selectcmp12, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %26)
  %switch.selectcmp14 = icmp eq i8 %26, 5
  %switch.select15 = select i1 %switch.selectcmp14, i8 1, i8 %switch.select13
  %arrayidx25.2 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, ptr %cmd, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %switch.select15, ptr %arrayidx25.2, align 1
  %arrayidx26.2 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, ptr %cmd, i32 0, i32 4, i32 2
  %arrayidx27.2 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 75, i32 2
  %conv31.2 = zext i8 %26 to i32
  %28 = call ptr @memcpy(ptr %arrayidx26.2, ptr %arrayidx27.2, i32 %conv31.2)
  %arrayidx18.3 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 76, i32 3
  %29 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx18.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %30)
  %switch.selectcmp8 = icmp eq i8 %30, 13
  %switch.select9 = select i1 %switch.selectcmp8, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %30)
  %switch.selectcmp10 = icmp eq i8 %30, 5
  %switch.select11 = select i1 %switch.selectcmp10, i8 1, i8 %switch.select9
  %arrayidx25.3 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, ptr %cmd, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %switch.select11, ptr %arrayidx25.3, align 1
  %arrayidx26.3 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, ptr %cmd, i32 0, i32 4, i32 3
  %arrayidx27.3 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 75, i32 3
  %conv31.3 = zext i8 %30 to i32
  %32 = call ptr @memcpy(ptr %arrayidx26.3, ptr %arrayidx27.3, i32 %conv31.3)
  %33 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %size, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %36 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 20480, ptr %size, align 1
  %conv37 = zext i16 %35 to i32
  %37 = ptrtoint ptr %cmd to i32
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 19, ptr noundef nonnull %cmd, i32 noundef %conv37, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %37) #11
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cmd.i) #11
  %38 = call ptr @memset(ptr %cmd.i, i32 0, i32 80)
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %wep_tx_key.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 74
  %39 = ptrtoint ptr %wep_tx_key.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %wep_tx_key.i, align 1
  %conv.i = zext i8 %40 to i16
  %41 = shl nuw i16 %conv.i, 8
  %keyindex.i = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, ptr %cmd.i, i32 0, i32 2
  %42 = ptrtoint ptr %keyindex.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %keyindex.i, align 1
  %action.i = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, ptr %cmd.i, i32 0, i32 1
  %43 = ptrtoint ptr %action.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 1024, ptr %action.i, align 1
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 20480, ptr %size.i, align 1
  %45 = ptrtoint ptr %cmd.i to i32
  %call.i = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 19, ptr noundef nonnull %cmd.i, i32 noundef 80, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %45) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cmd.i) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cmd) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_get_rssi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_mesh_set_channel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_set_channel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_set_mac_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_set_radio(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_num_supported_channels(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_get_elem(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_ie_rates(ptr noundef writeonly %tlv, ptr nocapture noundef readonly %ie, ptr nocapture noundef %nrates) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %ie, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %1)
  %cmp = icmp ugt i8 %1, 14
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %2 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #15
  br label %cleanup

if.end8:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ie, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end8.for.body.preheader_crit_edge, label %land.lhs.true.i

if.end8.for.body.preheader_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

land.lhs.true.i:                                  ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %3 = load i32, ptr @lbs_debug, align 4
  %4 = and i32 %3, 2097408
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097408, i32 %4)
  %.not = icmp eq i32 %4, 2097408
  br i1 %.not, label %do.end18.i.peel, label %land.lhs.true.i.for.body.preheader_crit_edge

land.lhs.true.i.for.body.preheader_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

do.end18.i.peel:                                  ; preds = %land.lhs.true.i
  %call14.i.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.102) #15
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 1
  %conv.i.peel = zext i8 %6 to i32
  %call20.i.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i.peel) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %exitcond.peel = icmp eq i8 %1, 1
  br i1 %exitcond.peel, label %do.end18.i.peel.do.end23.i_crit_edge, label %for.body.i.peel.next

do.end18.i.peel.do.end23.i_crit_edge:             ; preds = %do.end18.i.peel
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

for.body.i.peel.next:                             ; preds = %do.end18.i.peel
  %incdec.ptr.i.peel = getelementptr i8, ptr %ie, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %do.end18.i.for.body.i_crit_edge, %for.body.i.peel.next
  %buf.addr.035.i = phi ptr [ %incdec.ptr.i, %do.end18.i.for.body.i_crit_edge ], [ %incdec.ptr.i.peel, %for.body.i.peel.next ]
  %i.033.i = phi i32 [ %inc.i, %do.end18.i.for.body.i_crit_edge ], [ 2, %for.body.i.peel.next ]
  %and5.i = and i32 %i.033.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 1
  br i1 %cmp6.i, label %do.end12.i, label %for.body.i.do.end18.i_crit_edge

for.body.i.do.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

do.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.102) #15
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end12.i, %for.body.i.do.end18.i_crit_edge
  %7 = ptrtoint ptr %buf.addr.035.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf.addr.035.i, align 1
  %conv.i = zext i8 %8 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i) #15
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.035.i, i32 1
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond = icmp eq i32 %i.033.i, %conv
  br i1 %exitcond, label %do.end18.i.do.end23.i_crit_edge, label %do.end18.i.for.body.i_crit_edge, !llvm.loop !258

do.end18.i.for.body.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end18.i.do.end23.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end18.i.do.end23.i_crit_edge, %do.end18.i.peel.do.end23.i_crit_edge
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end23.i, %land.lhs.true.i.for.body.preheader_crit_edge, %if.end8.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc27.for.body_crit_edge, %for.body.preheader
  %hw.051 = phi i32 [ %inc28, %for.inc27.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %tlv.addr.050 = phi ptr [ %tlv.addr.1.lcssa, %for.inc27.for.body_crit_edge ], [ %tlv, %for.body.preheader ]
  br i1 %tobool.not.i, label %for.body.for.inc27_crit_edge, label %for.body17.lr.ph

for.body.for.inc27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc27

for.body17.lr.ph:                                 ; preds = %for.body
  %bitrate = getelementptr [12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 %hw.051, i32 1
  %9 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %bitrate, align 4
  %11 = udiv i16 %10, 5
  %12 = trunc i16 %11 to i8
  br label %for.body17

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %for.body17.lr.ph
  %ap.049 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc, %for.inc.for.body17_crit_edge ]
  %tlv.addr.148 = phi ptr [ %tlv.addr.050, %for.body17.lr.ph ], [ %tlv.addr.2, %for.inc.for.body17_crit_edge ]
  %arrayidx19 = getelementptr i8, ptr %add.ptr, i32 %ap.049
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx19, align 1
  %15 = and i8 %14, 127
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %12)
  %cmp22 = icmp eq i8 %15, %12
  br i1 %cmp22, label %if.then24, label %for.body17.for.inc_crit_edge

for.body17.for.inc_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then24:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i8, ptr %tlv.addr.148, i32 1
  %16 = ptrtoint ptr %tlv.addr.148 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %14, ptr %tlv.addr.148, align 1
  %17 = ptrtoint ptr %nrates to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nrates, align 4
  %add = add i32 %18, 1
  store i32 %add, ptr %nrates, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %for.body17.for.inc_crit_edge
  %tlv.addr.2 = phi ptr [ %incdec.ptr, %if.then24 ], [ %tlv.addr.148, %for.body17.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %ap.049, 1
  %exitcond53.not = icmp eq i32 %inc, %conv
  br i1 %exitcond53.not, label %for.inc.for.inc27_crit_edge, label %for.inc.for.body17_crit_edge

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17

for.inc.for.inc27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc.for.inc27_crit_edge, %for.body.for.inc27_crit_edge
  %tlv.addr.1.lcssa = phi ptr [ %tlv.addr.050, %for.body.for.inc27_crit_edge ], [ %tlv.addr.2, %for.inc.for.inc27_crit_edge ]
  %inc28 = add nuw nsw i32 %hw.051, 1
  %exitcond54.not = icmp eq i32 %inc28, 12
  br i1 %exitcond54.not, label %for.inc27.cleanup_crit_edge, label %for.inc27.for.body_crit_edge

for.inc27.for.body_crit_edge:                     ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc27.cleanup_crit_edge:                      ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc27.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ %tlv, %do.end ], [ %tlv, %do.body.cleanup_crit_edge ], [ %tlv.addr.1.lcssa, %for.inc27.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_connect_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lbs_add_rates(ptr nocapture noundef writeonly %rates) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 0, i32 1), align 4
  %1 = udiv i16 %0, 5
  %conv1 = trunc i16 %1 to i8
  %2 = zext i8 %conv1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %conv1, label %entry.if.end_crit_edge [
    i8 2, label %entry.if.then_crit_edge
    i8 4, label %entry.if.then_crit_edge2
    i8 11, label %entry.if.then_crit_edge3
    i8 22, label %entry.if.then_crit_edge4
  ]

entry.if.then_crit_edge4:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge3:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge2:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge2, %entry.if.then_crit_edge3, %entry.if.then_crit_edge4
  %conv17 = or i8 %conv1, -128
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate.0 = phi i8 [ %conv17, %if.then ], [ %conv1, %entry.if.end_crit_edge ]
  %3 = ptrtoint ptr %rates to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %rate.0, ptr %rates, align 1
  %4 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 1, i32 1), align 4
  %5 = udiv i16 %4, 5
  %conv1.1 = trunc i16 %5 to i8
  %6 = zext i8 %conv1.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %conv1.1, label %if.end.if.end.1_crit_edge [
    i8 2, label %if.end.if.then.1_crit_edge
    i8 4, label %if.end.if.then.1_crit_edge5
    i8 11, label %if.end.if.then.1_crit_edge6
    i8 22, label %if.end.if.then.1_crit_edge7
  ]

if.end.if.then.1_crit_edge7:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.1

if.end.if.then.1_crit_edge6:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.1

if.end.if.then.1_crit_edge5:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.1

if.end.if.then.1_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1

if.then.1:                                        ; preds = %if.end.if.then.1_crit_edge, %if.end.if.then.1_crit_edge5, %if.end.if.then.1_crit_edge6, %if.end.if.then.1_crit_edge7
  %conv17.1 = or i8 %conv1.1, -128
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %rate.0.1 = phi i8 [ %conv17.1, %if.then.1 ], [ %conv1.1, %if.end.if.end.1_crit_edge ]
  %arrayidx18.1 = getelementptr i8, ptr %rates, i32 1
  %7 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %rate.0.1, ptr %arrayidx18.1, align 1
  %8 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 2, i32 1), align 4
  %9 = udiv i16 %8, 5
  %conv1.2 = trunc i16 %9 to i8
  %10 = zext i8 %conv1.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %conv1.2, label %if.end.1.if.end.2_crit_edge [
    i8 2, label %if.end.1.if.then.2_crit_edge
    i8 4, label %if.end.1.if.then.2_crit_edge8
    i8 11, label %if.end.1.if.then.2_crit_edge9
    i8 22, label %if.end.1.if.then.2_crit_edge10
  ]

if.end.1.if.then.2_crit_edge10:                   ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.2

if.end.1.if.then.2_crit_edge9:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.2

if.end.1.if.then.2_crit_edge8:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.2

if.end.1.if.then.2_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1.if.then.2_crit_edge, %if.end.1.if.then.2_crit_edge8, %if.end.1.if.then.2_crit_edge9, %if.end.1.if.then.2_crit_edge10
  %conv17.2 = or i8 %conv1.2, -128
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %rate.0.2 = phi i8 [ %conv17.2, %if.then.2 ], [ %conv1.2, %if.end.1.if.end.2_crit_edge ]
  %arrayidx18.2 = getelementptr i8, ptr %rates, i32 2
  %11 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %rate.0.2, ptr %arrayidx18.2, align 1
  %12 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 3, i32 1), align 4
  %13 = udiv i16 %12, 5
  %conv1.3 = trunc i16 %13 to i8
  %14 = zext i8 %conv1.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %conv1.3, label %if.end.2.if.end.3_crit_edge [
    i8 2, label %if.end.2.if.then.3_crit_edge
    i8 4, label %if.end.2.if.then.3_crit_edge11
    i8 11, label %if.end.2.if.then.3_crit_edge12
    i8 22, label %if.end.2.if.then.3_crit_edge13
  ]

if.end.2.if.then.3_crit_edge13:                   ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.3

if.end.2.if.then.3_crit_edge12:                   ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.3

if.end.2.if.then.3_crit_edge11:                   ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.3

if.end.2.if.then.3_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2.if.then.3_crit_edge, %if.end.2.if.then.3_crit_edge11, %if.end.2.if.then.3_crit_edge12, %if.end.2.if.then.3_crit_edge13
  %conv17.3 = or i8 %conv1.3, -128
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %rate.0.3 = phi i8 [ %conv17.3, %if.then.3 ], [ %conv1.3, %if.end.2.if.end.3_crit_edge ]
  %arrayidx18.3 = getelementptr i8, ptr %rates, i32 3
  %15 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %rate.0.3, ptr %arrayidx18.3, align 1
  %16 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 4, i32 1), align 4
  %17 = udiv i16 %16, 5
  %conv1.4 = trunc i16 %17 to i8
  %18 = zext i8 %conv1.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %conv1.4, label %if.end.3.if.end.4_crit_edge [
    i8 2, label %if.end.3.if.then.4_crit_edge
    i8 4, label %if.end.3.if.then.4_crit_edge14
    i8 11, label %if.end.3.if.then.4_crit_edge15
    i8 22, label %if.end.3.if.then.4_crit_edge16
  ]

if.end.3.if.then.4_crit_edge16:                   ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.4

if.end.3.if.then.4_crit_edge15:                   ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.4

if.end.3.if.then.4_crit_edge14:                   ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.4

if.end.3.if.then.4_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3.if.then.4_crit_edge, %if.end.3.if.then.4_crit_edge14, %if.end.3.if.then.4_crit_edge15, %if.end.3.if.then.4_crit_edge16
  %conv17.4 = or i8 %conv1.4, -128
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %rate.0.4 = phi i8 [ %conv17.4, %if.then.4 ], [ %conv1.4, %if.end.3.if.end.4_crit_edge ]
  %arrayidx18.4 = getelementptr i8, ptr %rates, i32 4
  %19 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %rate.0.4, ptr %arrayidx18.4, align 1
  %20 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 5, i32 1), align 4
  %21 = udiv i16 %20, 5
  %conv1.5 = trunc i16 %21 to i8
  %22 = zext i8 %conv1.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %conv1.5, label %if.end.4.if.end.5_crit_edge [
    i8 2, label %if.end.4.if.then.5_crit_edge
    i8 4, label %if.end.4.if.then.5_crit_edge17
    i8 11, label %if.end.4.if.then.5_crit_edge18
    i8 22, label %if.end.4.if.then.5_crit_edge19
  ]

if.end.4.if.then.5_crit_edge19:                   ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.5

if.end.4.if.then.5_crit_edge18:                   ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.5

if.end.4.if.then.5_crit_edge17:                   ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.5

if.end.4.if.then.5_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4.if.then.5_crit_edge, %if.end.4.if.then.5_crit_edge17, %if.end.4.if.then.5_crit_edge18, %if.end.4.if.then.5_crit_edge19
  %conv17.5 = or i8 %conv1.5, -128
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %rate.0.5 = phi i8 [ %conv17.5, %if.then.5 ], [ %conv1.5, %if.end.4.if.end.5_crit_edge ]
  %arrayidx18.5 = getelementptr i8, ptr %rates, i32 5
  %23 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %rate.0.5, ptr %arrayidx18.5, align 1
  %24 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 6, i32 1), align 4
  %25 = udiv i16 %24, 5
  %conv1.6 = trunc i16 %25 to i8
  %26 = zext i8 %conv1.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %conv1.6, label %if.end.5.if.end.6_crit_edge [
    i8 2, label %if.end.5.if.then.6_crit_edge
    i8 4, label %if.end.5.if.then.6_crit_edge20
    i8 11, label %if.end.5.if.then.6_crit_edge21
    i8 22, label %if.end.5.if.then.6_crit_edge22
  ]

if.end.5.if.then.6_crit_edge22:                   ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.6

if.end.5.if.then.6_crit_edge21:                   ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.6

if.end.5.if.then.6_crit_edge20:                   ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.6

if.end.5.if.then.6_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5.if.then.6_crit_edge, %if.end.5.if.then.6_crit_edge20, %if.end.5.if.then.6_crit_edge21, %if.end.5.if.then.6_crit_edge22
  %conv17.6 = or i8 %conv1.6, -128
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end.5.if.end.6_crit_edge
  %rate.0.6 = phi i8 [ %conv17.6, %if.then.6 ], [ %conv1.6, %if.end.5.if.end.6_crit_edge ]
  %arrayidx18.6 = getelementptr i8, ptr %rates, i32 6
  %27 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %rate.0.6, ptr %arrayidx18.6, align 1
  %28 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 7, i32 1), align 4
  %29 = udiv i16 %28, 5
  %conv1.7 = trunc i16 %29 to i8
  %30 = zext i8 %conv1.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %conv1.7, label %if.end.6.if.end.7_crit_edge [
    i8 2, label %if.end.6.if.then.7_crit_edge
    i8 4, label %if.end.6.if.then.7_crit_edge23
    i8 11, label %if.end.6.if.then.7_crit_edge24
    i8 22, label %if.end.6.if.then.7_crit_edge25
  ]

if.end.6.if.then.7_crit_edge25:                   ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.7

if.end.6.if.then.7_crit_edge24:                   ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.7

if.end.6.if.then.7_crit_edge23:                   ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.7

if.end.6.if.then.7_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.7

if.end.6.if.end.7_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.7

if.then.7:                                        ; preds = %if.end.6.if.then.7_crit_edge, %if.end.6.if.then.7_crit_edge23, %if.end.6.if.then.7_crit_edge24, %if.end.6.if.then.7_crit_edge25
  %conv17.7 = or i8 %conv1.7, -128
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %if.end.6.if.end.7_crit_edge
  %rate.0.7 = phi i8 [ %conv17.7, %if.then.7 ], [ %conv1.7, %if.end.6.if.end.7_crit_edge ]
  %arrayidx18.7 = getelementptr i8, ptr %rates, i32 7
  %31 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %rate.0.7, ptr %arrayidx18.7, align 1
  %32 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 8, i32 1), align 4
  %33 = udiv i16 %32, 5
  %conv1.8 = trunc i16 %33 to i8
  %34 = zext i8 %conv1.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %conv1.8, label %if.end.7.if.end.8_crit_edge [
    i8 2, label %if.end.7.if.then.8_crit_edge
    i8 4, label %if.end.7.if.then.8_crit_edge26
    i8 11, label %if.end.7.if.then.8_crit_edge27
    i8 22, label %if.end.7.if.then.8_crit_edge28
  ]

if.end.7.if.then.8_crit_edge28:                   ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.8

if.end.7.if.then.8_crit_edge27:                   ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.8

if.end.7.if.then.8_crit_edge26:                   ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.8

if.end.7.if.then.8_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.8

if.end.7.if.end.8_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.8

if.then.8:                                        ; preds = %if.end.7.if.then.8_crit_edge, %if.end.7.if.then.8_crit_edge26, %if.end.7.if.then.8_crit_edge27, %if.end.7.if.then.8_crit_edge28
  %conv17.8 = or i8 %conv1.8, -128
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.8, %if.end.7.if.end.8_crit_edge
  %rate.0.8 = phi i8 [ %conv17.8, %if.then.8 ], [ %conv1.8, %if.end.7.if.end.8_crit_edge ]
  %arrayidx18.8 = getelementptr i8, ptr %rates, i32 8
  %35 = ptrtoint ptr %arrayidx18.8 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %rate.0.8, ptr %arrayidx18.8, align 1
  %36 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 9, i32 1), align 4
  %37 = udiv i16 %36, 5
  %conv1.9 = trunc i16 %37 to i8
  %38 = zext i8 %conv1.9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %conv1.9, label %if.end.8.if.end.9_crit_edge [
    i8 2, label %if.end.8.if.then.9_crit_edge
    i8 4, label %if.end.8.if.then.9_crit_edge29
    i8 11, label %if.end.8.if.then.9_crit_edge30
    i8 22, label %if.end.8.if.then.9_crit_edge31
  ]

if.end.8.if.then.9_crit_edge31:                   ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.9

if.end.8.if.then.9_crit_edge30:                   ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.9

if.end.8.if.then.9_crit_edge29:                   ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.9

if.end.8.if.then.9_crit_edge:                     ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.9

if.end.8.if.end.9_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.9

if.then.9:                                        ; preds = %if.end.8.if.then.9_crit_edge, %if.end.8.if.then.9_crit_edge29, %if.end.8.if.then.9_crit_edge30, %if.end.8.if.then.9_crit_edge31
  %conv17.9 = or i8 %conv1.9, -128
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.9, %if.end.8.if.end.9_crit_edge
  %rate.0.9 = phi i8 [ %conv17.9, %if.then.9 ], [ %conv1.9, %if.end.8.if.end.9_crit_edge ]
  %arrayidx18.9 = getelementptr i8, ptr %rates, i32 9
  %39 = ptrtoint ptr %arrayidx18.9 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %rate.0.9, ptr %arrayidx18.9, align 1
  %40 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 10, i32 1), align 4
  %41 = udiv i16 %40, 5
  %conv1.10 = trunc i16 %41 to i8
  %42 = zext i8 %conv1.10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %conv1.10, label %if.end.9.if.end.10_crit_edge [
    i8 2, label %if.end.9.if.then.10_crit_edge
    i8 4, label %if.end.9.if.then.10_crit_edge32
    i8 11, label %if.end.9.if.then.10_crit_edge33
    i8 22, label %if.end.9.if.then.10_crit_edge34
  ]

if.end.9.if.then.10_crit_edge34:                  ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.10

if.end.9.if.then.10_crit_edge33:                  ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.10

if.end.9.if.then.10_crit_edge32:                  ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.10

if.end.9.if.then.10_crit_edge:                    ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.10

if.end.9.if.end.10_crit_edge:                     ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.10

if.then.10:                                       ; preds = %if.end.9.if.then.10_crit_edge, %if.end.9.if.then.10_crit_edge32, %if.end.9.if.then.10_crit_edge33, %if.end.9.if.then.10_crit_edge34
  %conv17.10 = or i8 %conv1.10, -128
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.10, %if.end.9.if.end.10_crit_edge
  %rate.0.10 = phi i8 [ %conv17.10, %if.then.10 ], [ %conv1.10, %if.end.9.if.end.10_crit_edge ]
  %arrayidx18.10 = getelementptr i8, ptr %rates, i32 10
  %43 = ptrtoint ptr %arrayidx18.10 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %rate.0.10, ptr %arrayidx18.10, align 1
  %44 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @lbs_rates, i32 0, i32 11, i32 1), align 4
  %45 = udiv i16 %44, 5
  %conv1.11 = trunc i16 %45 to i8
  %46 = zext i8 %conv1.11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.154)
  switch i8 %conv1.11, label %if.end.10.if.end.11_crit_edge [
    i8 2, label %if.end.10.if.then.11_crit_edge
    i8 4, label %if.end.10.if.then.11_crit_edge35
    i8 11, label %if.end.10.if.then.11_crit_edge36
    i8 22, label %if.end.10.if.then.11_crit_edge37
  ]

if.end.10.if.then.11_crit_edge37:                 ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.11

if.end.10.if.then.11_crit_edge36:                 ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.11

if.end.10.if.then.11_crit_edge35:                 ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.11

if.end.10.if.then.11_crit_edge:                   ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.11

if.end.10.if.end.11_crit_edge:                    ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.11

if.then.11:                                       ; preds = %if.end.10.if.then.11_crit_edge, %if.end.10.if.then.11_crit_edge35, %if.end.10.if.then.11_crit_edge36, %if.end.10.if.then.11_crit_edge37
  %conv17.11 = or i8 %conv1.11, -128
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.11, %if.end.10.if.end.11_crit_edge
  %rate.0.11 = phi i8 [ %conv17.11, %if.then.11 ], [ %conv1.11, %if.end.10.if.end.11_crit_edge ]
  %arrayidx18.11 = getelementptr i8, ptr %rates, i32 11
  %47 = ptrtoint ptr %arrayidx18.11 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %rate.0.11, ptr %arrayidx18.11, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lbs_join_post(ptr nocapture noundef %priv, ptr nocapture noundef readonly %params, ptr noundef %bssid, i16 noundef zeroext %capability) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca %struct.cfg80211_inform_bss, align 8
  %fake_ie = alloca [57 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 57, ptr nonnull %fake_ie) #11
  %0 = getelementptr inbounds i8, ptr %fake_ie, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 55)
  %incdec.ptr = getelementptr inbounds i8, ptr %fake_ie, i32 1
  %2 = ptrtoint ptr %fake_ie to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fake_ie, align 1
  %ssid_len = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 4
  %3 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ssid_len, align 4
  %incdec.ptr1 = getelementptr inbounds i8, ptr %fake_ie, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %incdec.ptr, align 1
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %params, align 4
  %conv = zext i8 %4 to i32
  %8 = call ptr @memcpy(ptr %incdec.ptr1, ptr %7, i32 %conv)
  %add.ptr = getelementptr i8, ptr %incdec.ptr1, i32 %conv
  %incdec.ptr5 = getelementptr i8, ptr %add.ptr, i32 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %add.ptr, align 1
  %incdec.ptr6 = getelementptr i8, ptr %incdec.ptr5, i32 1
  %10 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %incdec.ptr5, align 1
  %incdec.ptr7 = getelementptr i8, ptr %incdec.ptr6, i32 1
  %11 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -126, ptr %incdec.ptr6, align 1
  %incdec.ptr8 = getelementptr i8, ptr %incdec.ptr7, i32 1
  %12 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -124, ptr %incdec.ptr7, align 1
  %incdec.ptr9 = getelementptr i8, ptr %incdec.ptr8, i32 1
  %13 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -117, ptr %incdec.ptr8, align 1
  %incdec.ptr10 = getelementptr i8, ptr %incdec.ptr9, i32 1
  %14 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -106, ptr %incdec.ptr9, align 1
  %incdec.ptr11 = getelementptr i8, ptr %incdec.ptr10, i32 1
  %15 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %incdec.ptr10, align 1
  %incdec.ptr12 = getelementptr i8, ptr %incdec.ptr11, i32 1
  %16 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %incdec.ptr11, align 1
  %chandef = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2
  %17 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hw_value, align 2
  %conv13 = trunc i16 %20 to i8
  %incdec.ptr14 = getelementptr i8, ptr %incdec.ptr12, i32 1
  %21 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv13, ptr %incdec.ptr12, align 1
  %incdec.ptr15 = getelementptr i8, ptr %incdec.ptr14, i32 1
  %22 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 6, ptr %incdec.ptr14, align 1
  %incdec.ptr16 = getelementptr i8, ptr %incdec.ptr15, i32 1
  %23 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %incdec.ptr15, align 1
  %incdec.ptr17 = getelementptr i8, ptr %incdec.ptr16, i32 1
  %24 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %incdec.ptr16, align 1
  %incdec.ptr18 = getelementptr i8, ptr %incdec.ptr17, i32 1
  %25 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %incdec.ptr17, align 1
  %incdec.ptr19 = getelementptr i8, ptr %incdec.ptr18, i32 1
  %26 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 50, ptr %incdec.ptr18, align 1
  %incdec.ptr20 = getelementptr i8, ptr %incdec.ptr19, i32 1
  %27 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 8, ptr %incdec.ptr19, align 1
  %incdec.ptr21 = getelementptr i8, ptr %incdec.ptr20, i32 1
  %28 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 12, ptr %incdec.ptr20, align 1
  %incdec.ptr22 = getelementptr i8, ptr %incdec.ptr21, i32 1
  %29 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 18, ptr %incdec.ptr21, align 1
  %incdec.ptr23 = getelementptr i8, ptr %incdec.ptr22, i32 1
  %30 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 24, ptr %incdec.ptr22, align 1
  %incdec.ptr24 = getelementptr i8, ptr %incdec.ptr23, i32 1
  %31 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 36, ptr %incdec.ptr23, align 1
  %incdec.ptr25 = getelementptr i8, ptr %incdec.ptr24, i32 1
  %32 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 48, ptr %incdec.ptr24, align 1
  %incdec.ptr26 = getelementptr i8, ptr %incdec.ptr25, i32 1
  %33 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 72, ptr %incdec.ptr25, align 1
  %incdec.ptr27 = getelementptr i8, ptr %incdec.ptr26, i32 1
  %34 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 96, ptr %incdec.ptr26, align 1
  %incdec.ptr28 = getelementptr i8, ptr %incdec.ptr27, i32 1
  %35 = ptrtoint ptr %incdec.ptr27 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 108, ptr %incdec.ptr27, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr28 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %fake_ie to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool.not.i = icmp eq ptr %incdec.ptr28, %fake_ie
  br i1 %tobool.not.i, label %entry.lbs_deb_hex.exit_crit_edge, label %land.lhs.true.i

entry.lbs_deb_hex.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_deb_hex.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %36 = load i32, ptr @lbs_debug, align 4
  %37 = and i32 %36, 35651584
  call void @__sanitizer_cov_trace_const_cmp4(i32 35651584, i32 %37)
  %.not = icmp eq i32 %37, 35651584
  br i1 %.not, label %for.cond.preheader.i, label %land.lhs.true.i.lbs_deb_hex.exit_crit_edge

land.lhs.true.i.lbs_deb_hex.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_deb_hex.exit

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub)
  %cmp.not32.i = icmp slt i32 %sub.ptr.sub, 1
  br i1 %cmp.not32.i, label %for.cond.preheader.i.do.end23.i_crit_edge, label %do.end18.i.peel

for.cond.preheader.i.do.end23.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

do.end18.i.peel:                                  ; preds = %for.cond.preheader.i
  %call14.i.peel = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.105) #15
  %38 = ptrtoint ptr %fake_ie to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fake_ie, align 1
  %conv.i.peel = zext i8 %39 to i32
  %call20.i.peel = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i.peel) #15
  %exitcond.peel = icmp eq ptr %fake_ie, %incdec.ptr27
  br i1 %exitcond.peel, label %do.end18.i.peel.do.end23.i_crit_edge, label %do.end18.i.peel.for.body.i_crit_edge

do.end18.i.peel.for.body.i_crit_edge:             ; preds = %do.end18.i.peel
  br label %for.body.i

do.end18.i.peel.do.end23.i_crit_edge:             ; preds = %do.end18.i.peel
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

for.body.i:                                       ; preds = %do.end18.i.for.body.i_crit_edge, %do.end18.i.peel.for.body.i_crit_edge
  %buf.addr.035.i = phi ptr [ %incdec.ptr.i, %do.end18.i.for.body.i_crit_edge ], [ %incdec.ptr, %do.end18.i.peel.for.body.i_crit_edge ]
  %i.033.i = phi i32 [ %inc.i, %do.end18.i.for.body.i_crit_edge ], [ 2, %do.end18.i.peel.for.body.i_crit_edge ]
  %and5.i = and i32 %i.033.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 1
  br i1 %cmp6.i, label %do.end12.i, label %for.body.i.do.end18.i_crit_edge

for.body.i.do.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

do.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.105) #15
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end12.i, %for.body.i.do.end18.i_crit_edge
  %40 = ptrtoint ptr %buf.addr.035.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %buf.addr.035.i, align 1
  %conv.i = zext i8 %41 to i32
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i) #15
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.035.i, i32 1
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond = icmp eq ptr %buf.addr.035.i, %incdec.ptr27
  br i1 %exitcond, label %do.end18.i.do.end23.i_crit_edge, label %do.end18.i.for.body.i_crit_edge, !llvm.loop !259

do.end18.i.for.body.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end18.i.do.end23.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end18.i.do.end23.i_crit_edge, %do.end18.i.peel.do.end23.i_crit_edge, %for.cond.preheader.i.do.end23.i_crit_edge
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %lbs_deb_hex.exit

lbs_deb_hex.exit:                                 ; preds = %do.end23.i, %land.lhs.true.i.lbs_deb_hex.exit_crit_edge, %entry.lbs_deb_hex.exit_crit_edge
  %wdev = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 5
  %42 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wdev, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chandef, align 4
  %beacon_interval = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 6
  %48 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %beacon_interval, align 2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #11
  %50 = getelementptr inbounds i8, ptr %data.i, i32 8
  %51 = call ptr @memset(ptr %50, i32 0, i32 40)
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %47, ptr %data.i, align 8
  %scan_width.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i, i32 0, i32 1
  %53 = ptrtoint ptr %scan_width.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %scan_width.i, align 4
  %call.i86 = call ptr @cfg80211_inform_bss_data(ptr noundef %45, ptr noundef nonnull %data.i, i32 noundef 0, ptr noundef %bssid, i64 noundef 0, i16 noundef zeroext %capability, i16 noundef zeroext %49, ptr noundef nonnull %fake_ie, i32 noundef %sub.ptr.sub, i32 noundef 3264) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #11
  %54 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wdev, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  call void @cfg80211_put_bss(ptr noundef %57, ptr noundef %call.i86) #11
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 4
  %60 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chandef, align 4
  call void @cfg80211_ibss_joined(ptr noundef %59, ptr noundef %bssid, ptr noundef %61, i32 noundef 3264) #11
  %connect_status = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 1
  %62 = ptrtoint ptr %connect_status to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %connect_status, align 4
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 4
  call void @netif_carrier_on(ptr noundef %64) #11
  %tx_pending_len = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 81
  %65 = ptrtoint ptr %tx_pending_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_pending_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not = icmp eq i32 %66, 0
  br i1 %tobool.not, label %if.then, label %lbs_deb_hex.exit.if.end_crit_edge

lbs_deb_hex.exit.if.end_crit_edge:                ; preds = %lbs_deb_hex.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %lbs_deb_hex.exit
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 103
  %69 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %70) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %lbs_deb_hex.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 57, ptr nonnull %fake_ie) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ibss_joined(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_mac_event_disconnected(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_set_ps_mode(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_set_11d_domain_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_ret_scan(ptr nocapture noundef readonly %priv, i32 noundef %dummy, ptr noundef %resp) #0 align 64 {
entry:
  %data.i = alloca %struct.cfg80211_inform_bss, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bssdescriptsize = getelementptr inbounds %struct.cmd_ds_802_11_scan_rsp, ptr %resp, i32 0, i32 1
  %0 = ptrtoint ptr %bssdescriptsize to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %bssdescriptsize, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #11
  %conv = zext i16 %2 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %3 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %nr_sets = getelementptr inbounds %struct.cmd_ds_802_11_scan_rsp, ptr %resp, i32 0, i32 2
  %4 = ptrtoint ptr %nr_sets to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_sets, align 1
  %conv3 = zext i8 %5 to i32
  %size = getelementptr inbounds %struct.cmd_header, ptr %resp, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %size, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv4 = zext i16 %8 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %conv3, i32 noundef %conv, i32 noundef %conv4) #15
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %nr_sets8 = getelementptr inbounds %struct.cmd_ds_802_11_scan_rsp, ptr %resp, i32 0, i32 2
  %9 = ptrtoint ptr %nr_sets8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr_sets8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp10 = icmp eq i8 %10, 0
  br i1 %cmp10, label %do.end7.cleanup180_crit_edge, label %if.end13

do.end7.cleanup180_crit_edge:                     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup180

if.end13:                                         ; preds = %do.end7
  %bssdesc_and_tlvbuffer = getelementptr inbounds %struct.cmd_ds_802_11_scan_rsp, ptr %resp, i32 0, i32 3
  %11 = ptrtoint ptr %bssdescriptsize to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %bssdescriptsize, align 1
  %conv17 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i, label %if.end13.lbs_deb_hex.exit_crit_edge, label %land.lhs.true.i

if.end13.lbs_deb_hex.exit_crit_edge:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_deb_hex.exit

land.lhs.true.i:                                  ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %13 = load i32, ptr @lbs_debug, align 4
  %14 = and i32 %13, 2097280
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097280, i32 %14)
  %.not = icmp eq i32 %14, 2097280
  br i1 %.not, label %do.end18.i.peel, label %land.lhs.true.i.lbs_deb_hex.exit_crit_edge

land.lhs.true.i.lbs_deb_hex.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_deb_hex.exit

do.end18.i.peel:                                  ; preds = %land.lhs.true.i
  %call14.i.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.112) #15
  %15 = ptrtoint ptr %bssdesc_and_tlvbuffer to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bssdesc_and_tlvbuffer, align 1
  %conv.i.peel = zext i8 %16 to i32
  %call20.i.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i.peel) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %exitcond.peel = icmp eq i16 %12, 1
  br i1 %exitcond.peel, label %do.end18.i.peel.do.end23.i_crit_edge, label %do.end18.i.peel.for.body.i_crit_edge

do.end18.i.peel.for.body.i_crit_edge:             ; preds = %do.end18.i.peel
  br label %for.body.i

do.end18.i.peel.do.end23.i_crit_edge:             ; preds = %do.end18.i.peel
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

for.body.i:                                       ; preds = %do.end18.i.for.body.i_crit_edge, %do.end18.i.peel.for.body.i_crit_edge
  %buf.addr.035.i.pn = phi ptr [ %buf.addr.035.i, %do.end18.i.for.body.i_crit_edge ], [ %bssdesc_and_tlvbuffer, %do.end18.i.peel.for.body.i_crit_edge ]
  %i.033.i = phi i32 [ %inc.i, %do.end18.i.for.body.i_crit_edge ], [ 2, %do.end18.i.peel.for.body.i_crit_edge ]
  %buf.addr.035.i = getelementptr i8, ptr %buf.addr.035.i.pn, i32 1
  %and5.i = and i32 %i.033.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 1
  br i1 %cmp6.i, label %do.end12.i, label %for.body.i.do.end18.i_crit_edge

for.body.i.do.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

do.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.112) #15
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end12.i, %for.body.i.do.end18.i_crit_edge
  %17 = ptrtoint ptr %buf.addr.035.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf.addr.035.i, align 1
  %conv.i = zext i8 %18 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i) #15
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond = icmp eq i32 %i.033.i, %conv17
  br i1 %exitcond, label %do.end18.i.do.end23.i_crit_edge, label %do.end18.i.for.body.i_crit_edge, !llvm.loop !260

do.end18.i.for.body.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end18.i.do.end23.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end18.i.do.end23.i_crit_edge, %do.end18.i.peel.do.end23.i_crit_edge
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %lbs_deb_hex.exit

lbs_deb_hex.exit:                                 ; preds = %do.end23.i, %land.lhs.true.i.lbs_deb_hex.exit_crit_edge, %if.end13.lbs_deb_hex.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %bssdesc_and_tlvbuffer, i32 %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %19 = load i32, ptr @lbs_debug, align 4
  %20 = and i32 %19, 2097280
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097280, i32 %20)
  %.not287 = icmp eq i32 %20, 2097280
  br i1 %.not287, label %for.body.i256.peel.next, label %lbs_deb_hex.exit.lbs_deb_hex.exit271_crit_edge

lbs_deb_hex.exit.lbs_deb_hex.exit271_crit_edge:   ; preds = %lbs_deb_hex.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_deb_hex.exit271

for.body.i256.peel.next:                          ; preds = %lbs_deb_hex.exit
  %21 = ptrtoint ptr %nr_sets8 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nr_sets8, align 1
  %conv19 = zext i8 %22 to i32
  %mul = shl nuw nsw i32 %conv19, 3
  %23 = or i32 %mul, 5
  %call14.i261.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.113) #15
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr, align 1
  %conv.i263.peel = zext i8 %25 to i32
  %call20.i264.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i263.peel) #15
  br label %for.body.i256

for.body.i256:                                    ; preds = %do.end18.i268.for.body.i256_crit_edge, %for.body.i256.peel.next
  %buf.addr.035.i252.pn = phi ptr [ %buf.addr.035.i252, %do.end18.i268.for.body.i256_crit_edge ], [ %add.ptr, %for.body.i256.peel.next ]
  %i.033.i253 = phi i32 [ %inc.i266, %do.end18.i268.for.body.i256_crit_edge ], [ 2, %for.body.i256.peel.next ]
  %buf.addr.035.i252 = getelementptr i8, ptr %buf.addr.035.i252.pn, i32 1
  %and5.i254 = and i32 %i.033.i253, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i254)
  %cmp6.i255 = icmp eq i32 %and5.i254, 1
  br i1 %cmp6.i255, label %do.end12.i262, label %for.body.i256.do.end18.i268_crit_edge

for.body.i256.do.end18.i268_crit_edge:            ; preds = %for.body.i256
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i268

do.end12.i262:                                    ; preds = %for.body.i256
  call void @__sanitizer_cov_trace_pc() #13
  %call.i259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  %call14.i261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.113) #15
  br label %do.end18.i268

do.end18.i268:                                    ; preds = %do.end12.i262, %for.body.i256.do.end18.i268_crit_edge
  %26 = ptrtoint ptr %buf.addr.035.i252 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf.addr.035.i252, align 1
  %conv.i263 = zext i8 %27 to i32
  %call20.i264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv.i263) #15
  %inc.i266 = add nuw nsw i32 %i.033.i253, 1
  %exitcond308 = icmp eq i32 %inc.i266, %23
  br i1 %exitcond308, label %do.end23.i270, label %do.end18.i268.for.body.i256_crit_edge, !llvm.loop !261

do.end18.i268.for.body.i256_crit_edge:            ; preds = %do.end18.i268
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i256

do.end23.i270:                                    ; preds = %do.end18.i268
  call void @__sanitizer_cov_trace_pc() #13
  %call25.i269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %lbs_deb_hex.exit271

lbs_deb_hex.exit271:                              ; preds = %do.end23.i270, %lbs_deb_hex.exit.lbs_deb_hex.exit271_crit_edge
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %add.ptr, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #11
  %conv21 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4865, i16 %29)
  %cmp23.not = icmp eq i16 %29, 4865
  br i1 %cmp23.not, label %if.end39, label %do.body26

do.body26:                                        ; preds = %lbs_deb_hex.exit271
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %31 = load i32, ptr @lbs_debug, align 4
  %and27 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28.not = icmp eq i32 %and27, 0
  br i1 %cmp28.not, label %do.body26.cleanup180_crit_edge, label %do.end33

do.body26.cleanup180_crit_edge:                   ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup180

do.end33:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %conv21) #15
  br label %cleanup180

if.end39:                                         ; preds = %lbs_deb_hex.exit271
  %add.ptr22 = getelementptr i8, ptr %add.ptr, i32 2
  %32 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %add.ptr22, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #11
  %35 = lshr i16 %34, 3
  %div = zext i16 %35 to i32
  %36 = ptrtoint ptr %nr_sets8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nr_sets8, align 1
  %conv44 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv44)
  %cmp45.not = icmp eq i32 %div, %conv44
  br i1 %cmp45.not, label %if.end64, label %do.body48

do.body48:                                        ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %38 = load i32, ptr @lbs_debug, align 4
  %and49 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %cmp50.not = icmp eq i32 %and49, 0
  br i1 %cmp50.not, label %do.body48.cleanup180_crit_edge, label %do.end55

do.body48.cleanup180_crit_edge:                   ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup180

do.end55:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %conv44, i32 noundef %div) #15
  br label %cleanup180

if.end64:                                         ; preds = %if.end39
  %39 = ptrtoint ptr %nr_sets8 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nr_sets8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp67302.not = icmp eq i8 %40, 0
  br i1 %cmp67302.not, label %if.end64.cleanup180_crit_edge, label %for.body.lr.ph

if.end64.cleanup180_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup180

for.body.lr.ph:                                   ; preds = %if.end64
  %add.ptr42 = getelementptr i8, ptr %add.ptr22, i32 2
  %wdev = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 5
  %41 = getelementptr inbounds i8, ptr %data.i, i32 8
  %scan_width.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %data.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.0306 = phi ptr [ %bssdesc_and_tlvbuffer, %for.body.lr.ph ], [ %pos.1.lcssa315, %for.inc.for.body_crit_edge ]
  %tsfdesc.0304 = phi ptr [ %add.ptr42, %for.body.lr.ph ], [ %add.ptr166, %for.inc.for.body_crit_edge ]
  %i.0303 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %42 = ptrtoint ptr %pos.0306 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %pos.0306, align 1
  %44 = call i16 @llvm.bswap.i16(i16 %43) #11
  %conv70 = zext i16 %44 to i32
  %add.ptr71 = getelementptr i8, ptr %pos.0306, i32 2
  %add.ptr72 = getelementptr i8, ptr %pos.0306, i32 8
  %45 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr72, align 1
  %conv73 = zext i8 %46 to i32
  %add.ptr74 = getelementptr i8, ptr %pos.0306, i32 17
  %47 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %add.ptr74, align 1
  %49 = call i16 @llvm.bswap.i16(i16 %48) #11
  %add.ptr76 = getelementptr i8, ptr %pos.0306, i32 19
  %50 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %add.ptr76, align 1
  %52 = call i16 @llvm.bswap.i16(i16 %51) #11
  %add.ptr78 = getelementptr i8, ptr %pos.0306, i32 21
  %sub = add nsw i32 %conv70, -19
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %44)
  %cmp79292 = icmp ugt i16 %44, 20
  br i1 %cmp79292, label %for.body.while.body_crit_edge, label %for.body.do.body152_crit_edge

for.body.do.body152_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body152

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %for.body.while.body_crit_edge
  %pos.1297 = phi ptr [ %add.ptr116, %cleanup.while.body_crit_edge ], [ %add.ptr78, %for.body.while.body_crit_edge ]
  %ssid_len.0296 = phi i8 [ %spec.select243, %cleanup.while.body_crit_edge ], [ 0, %for.body.while.body_crit_edge ]
  %ssid.0295 = phi ptr [ %spec.select, %cleanup.while.body_crit_edge ], [ null, %for.body.while.body_crit_edge ]
  %chan_no.0294 = phi i32 [ %chan_no.1, %cleanup.while.body_crit_edge ], [ -1, %for.body.while.body_crit_edge ]
  %left.0293 = phi i32 [ %sub114, %cleanup.while.body_crit_edge ], [ %sub, %for.body.while.body_crit_edge ]
  %incdec.ptr81 = getelementptr i8, ptr %pos.1297, i32 1
  %incdec.ptr82 = getelementptr i8, ptr %pos.1297, i32 2
  %53 = ptrtoint ptr %incdec.ptr81 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %incdec.ptr81, align 1
  %sub83 = add nsw i32 %left.0293, -2
  %conv84 = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub83, i32 %conv84)
  %cmp85 = icmp ult i32 %sub83, %conv84
  br i1 %cmp85, label %do.body88, label %if.end101

do.body88:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %55 = load i32, ptr @lbs_debug, align 4
  %and89 = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %cmp90.not = icmp eq i32 %and89, 0
  br i1 %cmp90.not, label %do.body88.cleanup180_crit_edge, label %do.end95

do.body88.cleanup180_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup180

do.end95:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #15
  br label %cleanup180

if.end101:                                        ; preds = %while.body
  %56 = ptrtoint ptr %pos.1297 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pos.1297, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %57)
  %cmp103 = icmp eq i8 %57, 3
  br i1 %cmp103, label %if.then105, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %incdec.ptr82 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %incdec.ptr82, align 1
  %conv106 = zext i8 %59 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %if.end101.cleanup_crit_edge
  %chan_no.1 = phi i32 [ %conv106, %if.then105 ], [ %chan_no.0294, %if.end101.cleanup_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp109 = icmp eq i8 %57, 0
  %spec.select = select i1 %cmp109, ptr %incdec.ptr82, ptr %ssid.0295
  %spec.select243 = select i1 %cmp109, i8 %54, i8 %ssid_len.0296
  %sub114 = sub nsw i32 %sub83, %conv84
  %add.ptr116 = getelementptr i8, ptr %incdec.ptr82, i32 %conv84
  %cmp79 = icmp sgt i32 %sub114, 1
  br i1 %cmp79, label %cleanup.while.body_crit_edge, label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chan_no.1)
  %cmp118.not = icmp eq i32 %chan_no.1, -1
  br i1 %cmp118.not, label %while.end.do.body152_crit_edge, label %if.then120

while.end.do.body152_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body152

if.then120:                                       ; preds = %while.end
  %60 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wdev, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %call.i272 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %chan_no.1, i32 noundef 0) #11
  %64 = urem i32 %call.i272, 1000
  %mul.i = sub i32 %call.i272, %64
  %call.i273 = call ptr @ieee80211_get_channel_khz(ptr noundef %63, i32 noundef %mul.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %65 = load i32, ptr @lbs_debug, align 4
  %and125 = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %cmp126.not = icmp eq i32 %and125, 0
  br i1 %cmp126.not, label %if.then120.do.end142_crit_edge, label %do.end131

if.then120.do.end142_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end142

do.end131:                                        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #13
  %conv133 = zext i16 %52 to i32
  %conv134 = zext i8 %spec.select243 to i32
  %add136 = sub nsw i32 3, %conv73
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %add.ptr71, i32 noundef %conv133, i32 noundef %chan_no.1, i32 noundef %conv134, ptr noundef %spec.select, i32 noundef %add136) #15
  br label %do.end142

do.end142:                                        ; preds = %do.end131, %if.then120.do.end142_crit_edge
  %tobool.not = icmp eq ptr %call.i273, null
  br i1 %tobool.not, label %do.end142.for.inc_crit_edge, label %land.lhs.true

do.end142.for.inc_crit_edge:                      ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %do.end142
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i273, i32 0, i32 4
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 4
  %and143 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.then145, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then145:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %tsfdesc.0304 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %tsfdesc.0304, align 1
  %70 = call i64 @llvm.bswap.i64(i64 %69) #11
  %add148 = sub nsw i32 3, %conv73
  %mul149 = mul nsw i32 %add148, 100
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %data.i) #11
  %71 = call ptr @memset(ptr %41, i32 0, i32 40)
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i273, ptr %data.i, align 8
  %73 = ptrtoint ptr %scan_width.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %scan_width.i, align 4
  %74 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %mul149, ptr %41, align 8
  %call.i274 = call ptr @cfg80211_inform_bss_data(ptr noundef %63, ptr noundef nonnull %data.i, i32 noundef 0, ptr noundef %add.ptr71, i64 noundef %70, i16 noundef zeroext %52, i16 noundef zeroext %49, ptr noundef %add.ptr78, i32 noundef %sub, i32 noundef 3264) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %data.i) #11
  call void @cfg80211_put_bss(ptr noundef %63, ptr noundef %call.i274) #11
  br label %for.inc

do.body152:                                       ; preds = %while.end.do.body152_crit_edge, %for.body.do.body152_crit_edge
  %pos.1.lcssa316 = phi ptr [ %add.ptr116, %while.end.do.body152_crit_edge ], [ %add.ptr78, %for.body.do.body152_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %75 = load i32, ptr @lbs_debug, align 4
  %and153 = and i32 %75, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %cmp154.not = icmp eq i32 %and153, 0
  br i1 %cmp154.not, label %do.body152.for.inc_crit_edge, label %do.end159

do.body152.for.inc_crit_edge:                     ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end159:                                        ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #13
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end159, %do.body152.for.inc_crit_edge, %if.then145, %land.lhs.true.for.inc_crit_edge, %do.end142.for.inc_crit_edge
  %pos.1.lcssa315 = phi ptr [ %pos.1.lcssa316, %do.end159 ], [ %pos.1.lcssa316, %do.body152.for.inc_crit_edge ], [ %add.ptr116, %if.then145 ], [ %add.ptr116, %land.lhs.true.for.inc_crit_edge ], [ %add.ptr116, %do.end142.for.inc_crit_edge ]
  %add.ptr166 = getelementptr i8, ptr %tsfdesc.0304, i32 8
  %inc = add nuw nsw i32 %i.0303, 1
  %76 = ptrtoint ptr %nr_sets8 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %nr_sets8, align 1
  %conv66 = zext i8 %77 to i32
  %cmp67 = icmp ult i32 %inc, %conv66
  br i1 %cmp67, label %for.inc.for.body_crit_edge, label %for.inc.cleanup180_crit_edge

for.inc.cleanup180_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup180

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup180:                                       ; preds = %for.inc.cleanup180_crit_edge, %do.end95, %do.body88.cleanup180_crit_edge, %if.end64.cleanup180_crit_edge, %do.end55, %do.body48.cleanup180_crit_edge, %do.end33, %do.body26.cleanup180_crit_edge, %do.end7.cleanup180_crit_edge
  %retval.0 = phi i32 [ -84, %do.end33 ], [ -84, %do.body26.cleanup180_crit_edge ], [ -84, %do.end55 ], [ -84, %do.body48.cleanup180_crit_edge ], [ 0, %do.end7.cleanup180_crit_edge ], [ -84, %do.body88.cleanup180_crit_edge ], [ -84, %do.end95 ], [ 0, %if.end64.cleanup180_crit_edge ], [ 0, %for.inc.cleanup180_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !177, !178, !179, !180, !182, !184, !186, !188, !190, !192, !194, !195, !196, !197, !199, !200, !201, !202, !204, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !230, !232, !234, !236, !238}
!llvm.named.register.sp = !{!240}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 781, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 2051, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @lbs_cfg_alloc._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @lbs_cfg_alloc._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 2132, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @lbs_cfg_register._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @lbs_cfg_register._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 2138, i32 3}
!16 = !{ptr @lbs_cfg_register._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @lbs_cfg_register._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @lbs_cfg_register.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 2140, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @lbs_cfg_register.__key.11, !19, !"__key", i1 false, i1 false}
!22 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @lbs_cfg80211_ops, !24, !"lbs_cfg80211_ops", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 2017, i32 34}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1471, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @lbs_cfg_add_key._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @lbs_cfg_add_key._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1473, i32 2}
!32 = !{ptr @lbs_cfg_add_key._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @lbs_cfg_add_key._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1476, i32 33}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1479, i32 2}
!38 = !{ptr @lbs_cfg_add_key._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @lbs_cfg_add_key._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1481, i32 33}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1511, i32 3}
!44 = !{ptr @lbs_cfg_add_key._entry.23, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @lbs_cfg_add_key._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 96, i32 6}
!48 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @lbs_deb_hex._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @lbs_deb_hex._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 97, i32 5}
!54 = !{ptr @lbs_deb_hex._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @lbs_deb_hex._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 99, i32 4}
!58 = !{ptr @lbs_deb_hex._entry.32, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @lbs_deb_hex._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @lbs_deb_hex._entry.35, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 102, i32 3}
!62 = !{ptr @lbs_deb_hex._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1524, i32 2}
!65 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @lbs_cfg_del_key._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @lbs_cfg_del_key._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1450, i32 3}
!70 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @lbs_cfg_set_default_key._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @lbs_cfg_set_default_key._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @lbs_rates, !74, !"lbs_rates", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 60, i32 30}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/net/cfg80211.h", i32 778, i32 3}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 765, i32 2}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @_internal_start_scan._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @_internal_start_scan._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1294, i32 3}
!84 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @lbs_cfg_connect._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @lbs_cfg_connect._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1305, i32 3}
!89 = !{ptr @lbs_cfg_connect._entry.46, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @lbs_cfg_connect._entry_ptr.48, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1308, i32 3}
!93 = !{ptr @lbs_cfg_connect._entry.49, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @lbs_cfg_connect._entry_ptr.51, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1312, i32 3}
!97 = !{ptr @lbs_cfg_connect._entry.52, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @lbs_cfg_connect._entry_ptr.54, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1320, i32 3}
!101 = !{ptr @lbs_cfg_connect._entry.55, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @lbs_cfg_connect._entry_ptr.57, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1325, i32 2}
!105 = !{ptr @lbs_cfg_connect._entry.58, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @lbs_cfg_connect._entry_ptr.60, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1326, i32 2}
!109 = !{ptr @lbs_cfg_connect._entry.61, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @lbs_cfg_connect._entry_ptr.63, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1378, i32 3}
!113 = !{ptr @lbs_cfg_connect._entry.64, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @lbs_cfg_connect._entry_ptr.66, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.68, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1386, i32 3}
!117 = !{ptr @lbs_cfg_connect._entry.67, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @lbs_cfg_connect._entry_ptr.69, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.70, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1108, i32 3}
!121 = !{ptr @.str.71, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @lbs_associate._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @lbs_associate._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.73, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1115, i32 3}
!126 = !{ptr @lbs_associate._entry.72, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @lbs_associate._entry_ptr.74, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.75, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1123, i32 29}
!130 = !{ptr @.str.76, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1137, i32 29}
!132 = !{ptr @.str.78, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1173, i32 4}
!134 = !{ptr @lbs_associate._entry.77, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @lbs_associate._entry_ptr.79, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.81, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1177, i32 4}
!138 = !{ptr @lbs_associate._entry.80, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @lbs_associate._entry_ptr.82, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.84, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1181, i32 4}
!142 = !{ptr @lbs_associate._entry.83, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @lbs_associate._entry_ptr.85, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.87, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1185, i32 4}
!146 = !{ptr @lbs_associate._entry.86, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @lbs_associate._entry_ptr.88, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.90, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1189, i32 4}
!150 = !{ptr @lbs_associate._entry.89, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @lbs_associate._entry_ptr.91, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.93, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1197, i32 2}
!154 = !{ptr @lbs_associate._entry.92, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @lbs_associate._entry_ptr.94, !153, !"_entry_ptr", i1 false, i1 false}
!156 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!157 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!158 = !{ptr @.str.95, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.96, !157, !"<string literal>", i1 false, i1 false}
!160 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!161 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!162 = !{ptr @.str.97, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.98, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 326, i32 3}
!165 = !{ptr @.str.99, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @lbs_add_common_rates_tlv._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @lbs_add_common_rates_tlv._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.100, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 277, i32 3}
!170 = !{ptr @.str.101, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @add_ie_rates._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @add_ie_rates._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.102, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 283, i32 29}
!175 = !{ptr @.str.103, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1787, i32 4}
!177 = !{ptr @.str.104, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @lbs_ibss_join_existing._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @lbs_ibss_join_existing._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.105, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 1693, i32 32}
!182 = !{ptr @lbs_band_2ghz, !183, !"lbs_band_2ghz", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 75, i32 40}
!184 = !{ptr @lbs_2ghz_channels, !185, !"lbs_2ghz_channels", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 35, i32 33}
!186 = !{ptr @cipher_suites, !187, !"cipher_suites", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 83, i32 18}
!188 = !{ptr @.str.106, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 732, i32 28}
!190 = !{ptr @.str.107, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 734, i32 28}
!192 = !{ptr @.str.108, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 757, i32 3}
!194 = !{ptr @.str.109, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @lbs_scan_worker._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @lbs_scan_worker._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.110, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 513, i32 2}
!199 = !{ptr @.str.111, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @lbs_ret_scan._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @lbs_ret_scan._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.112, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 548, i32 28}
!204 = !{ptr @.str.113, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 553, i32 28}
!206 = !{ptr @.str.115, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 559, i32 3}
!208 = !{ptr @lbs_ret_scan._entry.114, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @lbs_ret_scan._entry_ptr.116, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.118, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 570, i32 3}
!212 = !{ptr @lbs_ret_scan._entry.117, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @lbs_ret_scan._entry_ptr.119, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.121, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 618, i32 5}
!216 = !{ptr @lbs_ret_scan._entry.120, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @lbs_ret_scan._entry_ptr.122, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.124, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 640, i32 4}
!220 = !{ptr @lbs_ret_scan._entry.123, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @lbs_ret_scan._entry_ptr.125, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.127, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 655, i32 4}
!224 = !{ptr @lbs_ret_scan._entry.126, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @lbs_ret_scan._entry_ptr.128, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.129, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 2073, i32 4}
!228 = !{ptr @.str.130, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 2074, i32 4}
!230 = !{ptr @.str.131, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 2075, i32 4}
!232 = !{ptr @.str.132, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 2076, i32 4}
!234 = !{ptr @.str.133, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 2077, i32 4}
!236 = !{ptr @.str.134, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 2078, i32 4}
!238 = !{ptr @lbs_cfg_set_regulatory_hint.regmap, !239, !"regmap", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/marvell/libertas/cfg.c", i32 2072, i32 42}
!240 = !{!"sp"}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!250 = !{!"branch_weights", i32 1, i32 2000}
!251 = !{i8 0, i8 2}
!252 = !{i64 2157023191, i64 2157023679, i64 2157023228, i64 2157023284, i64 2157023318, i64 2157023342, i64 2157023383, i64 2157023404, i64 2157023432, i64 2157023466}
!253 = !{!"auto-init"}
!254 = !{i64 2149314671}
!255 = !{i64 2149314937}
!256 = distinct !{!256, !257}
!257 = !{!"llvm.loop.peeled.count", i32 1}
!258 = distinct !{!258, !257}
!259 = distinct !{!259, !257}
!260 = distinct !{!260, !257}
!261 = distinct !{!261, !257}
