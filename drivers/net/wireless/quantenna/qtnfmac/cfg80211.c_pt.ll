; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/quantenna/qtnfmac/cfg80211.c_pt.bc'
source_filename = "../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.ieee80211_txrx_stypes = type { i16, i16 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.147, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.147 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.148 }
%union.anon.148 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.qtnf_vif = type { %struct.wireless_dev, [6 x i8], [6 x i8], i8, i8, i8, i16, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.qtnf_sta_list, i32, i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.qtnf_sta_list = type { %struct.list_head, %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.149 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.qtnf_bus = type { ptr, i32, i32, i32, ptr, [3 x ptr], %struct.qtnf_qlink_transport, %struct.qtnf_hw_info, %struct.napi_struct, [32 x i8], %struct.net_device, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.mutex, ptr, %struct.notifier_block, [6 x i8], [2 x i8], [0 x i8], [44 x i8] }
%struct.qtnf_qlink_transport = type { %struct.qtnf_cmd_ctl_node, %struct.sk_buff_head, i32 }
%struct.qtnf_cmd_ctl_node = type { %struct.completion, ptr, i16, i8, %struct.spinlock }
%struct.qtnf_hw_info = type { i32, i8, i8, i32, i8, i8, [32 x i8], i32, [2 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.152, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.152 = type { i64, i64, i8 }
%struct.qtnf_wmac = type { i8, i8, [6 x i8], ptr, %struct.qtnf_mac_info, [8 x %struct.qtnf_vif], ptr, %struct.mutex, %struct.delayed_work, ptr, ptr }
%struct.qtnf_mac_info = type <{ i8, i8, i8, i8, i16, [2 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, [2 x i8], ptr, i32, ptr, ptr, i8, [3 x i8], ptr }>
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_regdomain = type { %struct.callback_head, i32, [3 x i8], i32, [0 x %struct.ieee80211_reg_rule] }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.vif_params = type { i32, i32, [6 x i8], ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.qtnf_sta_node = type { %struct.list_head, [6 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.cfg80211_mgmt_tx_params = type { ptr, i8, i32, ptr, i32, i8, i8, i32, ptr }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.156 }
%union.anon.156 = type { %struct.anon.162, [16 x i8] }
%struct.anon.162 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.mgmt_frame_regs = type { i32, i32, i32, i32 }
%struct.cfg80211_csa_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, ptr, ptr, i32, i32, %struct.cfg80211_beacon_data, i8, i8, i8 }
%struct.cfg80211_external_auth_params = type { i32, [6 x i8], %struct.cfg80211_ssid, i32, i16, ptr }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.iface_combination_params = type { i32, i8, [13 x i32], i32 }

@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/wireless/quantenna/qtnfmac/cfg80211.c\00", [46 x i8] zeroinitializer }, align 32
@qtnf_del_virtual_intf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to delete VIF\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qtnf_del_virtual_intf\00", [42 x i8] zeroinitializer }, align 32
@qtnf_del_virtual_intf._entry_ptr = internal global ptr @qtnf_del_virtual_intf._entry, section ".printk_index", align 4
@qtn_cfg80211_ops = internal global { %struct.cfg80211_ops, [108 x i8] } { %struct.cfg80211_ops { ptr @qtnf_suspend, ptr @qtnf_resume, ptr @qtnf_set_wakeup, ptr @qtnf_add_virtual_intf, ptr @qtnf_del_virtual_intf, ptr @qtnf_change_virtual_intf, ptr @qtnf_add_key, ptr null, ptr @qtnf_del_key, ptr @qtnf_set_default_key, ptr @qtnf_set_default_mgmt_key, ptr null, ptr @qtnf_start_ap, ptr @qtnf_change_beacon, ptr @qtnf_stop_ap, ptr null, ptr @qtnf_del_station, ptr @qtnf_change_station, ptr @qtnf_get_station, ptr @qtnf_dump_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qtnf_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qtnf_connect, ptr null, ptr @qtnf_disconnect, ptr null, ptr null, ptr null, ptr @qtnf_set_wiphy_params, ptr @qtnf_set_tx_power, ptr @qtnf_get_tx_power, ptr null, ptr null, ptr null, ptr null, ptr @qtnf_dump_survey, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qtnf_mgmt_tx, ptr null, ptr @qtnf_set_power_mgmt, ptr null, ptr null, ptr null, ptr @qtnf_update_mgmt_frame_registrations, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qtnf_get_channel, ptr null, ptr null, ptr @qtnf_set_mac_acl, ptr @qtnf_start_radar_detection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qtnf_channel_switch, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qtnf_external_auth, ptr null, ptr null, ptr null, ptr null, ptr @qtnf_update_owe_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [108 x i8] zeroinitializer }, align 32
@qtnf_wiphy_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013qtnfmac: %s: invalid wiphy pointer\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qtnf_wiphy_register\00", [44 x i8] zeroinitializer }, align 32
@qtnf_wiphy_register._entry_ptr = internal global ptr @qtnf_wiphy_register._entry, section ".printk_index", align 4
@qtnf_cipher_suites = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1027074, i32 1027076, i32 1027078], [20 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@qtnf_netdev_updown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013qtnfmac: %s: failed to send %s command to VIF%u.%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qtnf_netdev_updown\00", [45 x i8] zeroinitializer }, align 32
@qtnf_netdev_updown._entry_ptr = internal global ptr @qtnf_netdev_updown._entry, section ".printk_index", align 4
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UP\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOWN\00", [27 x i8] zeroinitializer }, align 32
@qtnf_rates_2g = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 11, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 22, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 12, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 18, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 24, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 36, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 48, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 72, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 96, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 108, i16 0 }], [48 x i8] zeroinitializer }, align 32
@qtnf_rates_5g = internal global { [8 x %struct.ieee80211_rate], [32 x i8] } { [8 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 60, i16 12, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 18, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 24, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 36, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 48, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 72, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 96, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 108, i16 0 }], [32 x i8] zeroinitializer }, align 32
@qtnf_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013qtnfmac: %s: MAC%u: primary VIF is not configured\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qtnf_suspend\00", [19 x i8] zeroinitializer }, align 32
@qtnf_suspend._entry_ptr = internal global ptr @qtnf_suspend._entry, section ".printk_index", align 4
@qtnf_suspend.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.10, ptr @.str, ptr @.str.12, i8 0, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qtnfmac\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WoWLAN triggers are not enabled\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"qtnfmac: %s: WoWLAN triggers are not enabled\0A\00", [50 x i8] zeroinitializer }, align 32
@qtnf_suspend._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013qtnfmac: %s: MAC%u: failed to set WoWLAN triggers\0A\00", [43 x i8] zeroinitializer }, align 32
@qtnf_suspend._entry_ptr.16 = internal global ptr @qtnf_suspend._entry.14, section ".printk_index", align 4
@qtnf_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.17, ptr @.str, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qtnf_resume\00", [20 x i8] zeroinitializer }, align 32
@qtnf_resume._entry_ptr = internal global ptr @qtnf_resume._entry, section ".printk_index", align 4
@qtnf_resume._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013qtnfmac: %s: MAC%u: failed to reset WoWLAN triggers\0A\00", [41 x i8] zeroinitializer }, align 32
@qtnf_resume._entry_ptr.20 = internal global ptr @qtnf_resume._entry.18, section ".printk_index", align 4
@qtnf_add_virtual_intf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013qtnfmac: %s: MAC%u invalid combination: failed to add type %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qtnf_add_virtual_intf\00", [42 x i8] zeroinitializer }, align 32
@qtnf_add_virtual_intf._entry_ptr = internal global ptr @qtnf_add_virtual_intf._entry, section ".printk_index", align 4
@qtnf_add_virtual_intf._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013qtnfmac: %s: MAC%u: no free VIF available\0A\00", [51 x i8] zeroinitializer }, align 32
@qtnf_add_virtual_intf._entry_ptr.25 = internal global ptr @qtnf_add_virtual_intf._entry.23, section ".printk_index", align 4
@qtnf_add_virtual_intf._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013qtnfmac: %s: MAC%u: unsupported IF type %d\0A\00", [50 x i8] zeroinitializer }, align 32
@qtnf_add_virtual_intf._entry_ptr.28 = internal global ptr @qtnf_add_virtual_intf._entry.26, section ".printk_index", align 4
@qtnf_add_virtual_intf._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to add VIF %pM\0A\00", [48 x i8] zeroinitializer }, align 32
@qtnf_add_virtual_intf._entry_ptr.31 = internal global ptr @qtnf_add_virtual_intf._entry.29, section ".printk_index", align 4
@qtnf_add_virtual_intf._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qtnfmac: %s: VIF%u.%u: FW reported bad MAC: %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@qtnf_add_virtual_intf._entry_ptr.34 = internal global ptr @qtnf_add_virtual_intf._entry.32, section ".printk_index", align 4
@qtnf_add_virtual_intf._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.22, ptr @.str, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to attach netdev\0A\00", [46 x i8] zeroinitializer }, align 32
@qtnf_add_virtual_intf._entry_ptr.37 = internal global ptr @qtnf_add_virtual_intf._entry.35, section ".printk_index", align 4
@qtnf_validate_iface_combinations._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013qtnfmac: %s: MAC%u invalid combination: AP as primary repeater interface is not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qtnf_validate_iface_combinations\00", [63 x i8] zeroinitializer }, align 32
@qtnf_validate_iface_combinations._entry_ptr = internal global ptr @qtnf_validate_iface_combinations._entry, section ".printk_index", align 4
@qtnf_change_virtual_intf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013qtnfmac: %s: VIF%u.%u combination check: failed to set type %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qtnf_change_virtual_intf\00", [39 x i8] zeroinitializer }, align 32
@qtnf_change_virtual_intf._entry_ptr = internal global ptr @qtnf_change_virtual_intf._entry, section ".printk_index", align 4
@qtnf_change_virtual_intf._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to change type to %d\0A\00", [42 x i8] zeroinitializer }, align 32
@qtnf_change_virtual_intf._entry_ptr.44 = internal global ptr @qtnf_change_virtual_intf._entry.42, section ".printk_index", align 4
@qtnf_add_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to add key: cipher=%x idx=%u pw=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qtnf_add_key\00", [19 x i8] zeroinitializer }, align 32
@qtnf_add_key._entry_ptr = internal global ptr @qtnf_add_key._entry, section ".printk_index", align 4
@qtnf_del_key.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.47, ptr @.str, ptr @.str.48, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qtnf_del_key\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VIF%u.%u: key index %d out of bounds\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"qtnfmac: %s: VIF%u.%u: key index %d out of bounds\0A\00", [45 x i8] zeroinitializer }, align 32
@qtnf_del_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.47, ptr @.str, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to delete key: idx=%u pw=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@qtnf_del_key._entry_ptr = internal global ptr @qtnf_del_key._entry, section ".printk_index", align 4
@qtnf_set_default_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to set dflt key: idx=%u uc=%u mc=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qtnf_set_default_key\00", [43 x i8] zeroinitializer }, align 32
@qtnf_set_default_key._entry_ptr = internal global ptr @qtnf_set_default_key._entry, section ".printk_index", align 4
@qtnf_set_default_mgmt_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to set default MGMT key: idx=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qtnf_set_default_mgmt_key\00", [38 x i8] zeroinitializer }, align 32
@qtnf_set_default_mgmt_key._entry_ptr = internal global ptr @qtnf_set_default_mgmt_key._entry, section ".printk_index", align 4
@qtnf_start_ap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to start AP\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qtnf_start_ap\00", [18 x i8] zeroinitializer }, align 32
@qtnf_start_ap._entry_ptr = internal global ptr @qtnf_start_ap._entry, section ".printk_index", align 4
@qtnf_stop_ap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to stop AP operation in FW\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qtnf_stop_ap\00", [19 x i8] zeroinitializer }, align 32
@qtnf_stop_ap._entry_ptr = internal global ptr @qtnf_stop_ap._entry, section ".printk_index", align 4
@qtnf_del_station._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to delete STA %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qtnf_del_station\00", [47 x i8] zeroinitializer }, align 32
@qtnf_del_station._entry_ptr = internal global ptr @qtnf_del_station._entry, section ".printk_index", align 4
@qtnf_change_station._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to change STA %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qtnf_change_station\00", [44 x i8] zeroinitializer }, align 32
@qtnf_change_station._entry_ptr = internal global ptr @qtnf_change_station._entry, section ".printk_index", align 4
@qtnf_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013qtnfmac: %s: MAC%u: failed to start scan\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qtnf_scan\00", [22 x i8] zeroinitializer }, align 32
@qtnf_scan._entry_ptr = internal global ptr @qtnf_scan._entry, section ".printk_index", align 4
@qtnf_scan.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.64, ptr @.str, ptr @.str.65, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MAC%u: scan started\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qtnfmac: %s: MAC%u: scan started\0A\00", [62 x i8] zeroinitializer }, align 32
@qtnf_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013qtnfmac: %s: can not offload authentication to userspace\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qtnf_connect\00", [19 x i8] zeroinitializer }, align 32
@qtnf_connect._entry_ptr = internal global ptr @qtnf_connect._entry, section ".printk_index", align 4
@qtnf_connect._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to connect\0A\00", [52 x i8] zeroinitializer }, align 32
@qtnf_connect._entry_ptr.71 = internal global ptr @qtnf_connect._entry.69, section ".printk_index", align 4
@qtnf_set_wiphy_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.72, ptr @.str, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qtnf_set_wiphy_params\00", [42 x i8] zeroinitializer }, align 32
@qtnf_set_wiphy_params._entry_ptr = internal global ptr @qtnf_set_wiphy_params._entry, section ".printk_index", align 4
@qtnf_set_wiphy_params._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qtnfmac: %s: MAC%u: failed to update PHY params\0A\00", [45 x i8] zeroinitializer }, align 32
@qtnf_set_wiphy_params._entry_ptr.75 = internal global ptr @qtnf_set_wiphy_params._entry.73, section ".printk_index", align 4
@qtnf_set_tx_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.76, ptr @.str, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qtnf_set_tx_power\00", [46 x i8] zeroinitializer }, align 32
@qtnf_set_tx_power._entry_ptr = internal global ptr @qtnf_set_tx_power._entry, section ".printk_index", align 4
@qtnf_set_tx_power._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013qtnfmac: %s: MAC%u: failed to set Tx power\0A\00", [50 x i8] zeroinitializer }, align 32
@qtnf_set_tx_power._entry_ptr.79 = internal global ptr @qtnf_set_tx_power._entry.77, section ".printk_index", align 4
@qtnf_get_tx_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013qtnfmac: %s: MAC%u: failed to get Tx power\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qtnf_get_tx_power\00", [46 x i8] zeroinitializer }, align 32
@qtnf_get_tx_power._entry_ptr = internal global ptr @qtnf_get_tx_power._entry, section ".printk_index", align 4
@qtnf_dump_survey.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.82, ptr @.str, ptr @.str.83, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qtnf_dump_survey\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get chan(%d) stats from card\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"qtnfmac: %s: failed to get chan(%d) stats from card\0A\00", [43 x i8] zeroinitializer }, align 32
@qtnf_mgmt_tx.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.85, ptr @.str, ptr @.str.86, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qtnf_mgmt_tx\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s freq:%u; FC:%.4X; DA:%pM; len:%zu; C:%.8X; FL:%.4X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"qtnfmac: %s: %s freq:%u; FC:%.4X; DA:%pM; len:%zu; C:%.8X; FL:%.4X\0A\00", [60 x i8] zeroinitializer }, align 32
@qtnf_set_power_mgmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013qtnfmac: %s: %s: failed to set PM mode ret=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qtnf_set_power_mgmt\00", [44 x i8] zeroinitializer }, align 32
@qtnf_set_power_mgmt._entry_ptr = internal global ptr @qtnf_set_power_mgmt._entry, section ".printk_index", align 4
@qtnf_update_mgmt_frame_registrations._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014qtnfmac: %s: VIF%u.%u: failed to %sregister qlink frame type 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qtnf_update_mgmt_frame_registrations\00", [59 x i8] zeroinitializer }, align 32
@qtnf_update_mgmt_frame_registrations._entry_ptr = internal global ptr @qtnf_update_mgmt_frame_registrations._entry, section ".printk_index", align 4
@.str.92 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@qtnf_get_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013qtnfmac: %s: %s: failed to get channel: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qtnf_get_channel\00", [47 x i8] zeroinitializer }, align 32
@qtnf_get_channel._entry_ptr = internal global ptr @qtnf_get_channel._entry, section ".printk_index", align 4
@qtnf_get_channel._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013qtnfmac: %s: %s: bad channel freq=%u cf1=%u cf2=%u bw=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@qtnf_get_channel._entry_ptr.98 = internal global ptr @qtnf_get_channel._entry.96, section ".printk_index", align 4
@qtnf_set_mac_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013qtnfmac: %s: %s: failed to set mac ACL ret=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qtnf_set_mac_acl\00", [47 x i8] zeroinitializer }, align 32
@qtnf_set_mac_acl._entry_ptr = internal global ptr @qtnf_set_mac_acl._entry, section ".printk_index", align 4
@qtnf_start_radar_detection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013qtnfmac: %s: %s: failed to start CAC ret=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qtnf_start_radar_detection\00", [37 x i8] zeroinitializer }, align 32
@qtnf_start_radar_detection._entry_ptr = internal global ptr @qtnf_start_radar_detection._entry, section ".printk_index", align 4
@qtnf_channel_switch.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.103, ptr @.str, ptr @.str.104, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qtnf_channel_switch\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: chan(%u) count(%u) radar(%u) block_tx(%u)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"qtnfmac: %s: %s: chan(%u) count(%u) radar(%u) block_tx(%u)\0A\00", [36 x i8] zeroinitializer }, align 32
@qtnf_channel_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.103, ptr @.str, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013qtnfmac: %s: %s: invalid channel\0A\00", [60 x i8] zeroinitializer }, align 32
@qtnf_channel_switch._entry_ptr = internal global ptr @qtnf_channel_switch._entry, section ".printk_index", align 4
@qtnf_channel_switch._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014qtnfmac: %s: %s: failed to switch to channel (%u)\0A\00", [43 x i8] zeroinitializer }, align 32
@qtnf_channel_switch._entry_ptr.109 = internal global ptr @qtnf_channel_switch._entry.107, section ".printk_index", align 4
@qtnf_external_auth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014qtnfmac: %s: unexpected bssid: %pM\00", [59 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qtnf_external_auth\00", [45 x i8] zeroinitializer }, align 32
@qtnf_external_auth._entry_ptr = internal global ptr @qtnf_external_auth._entry, section ".printk_index", align 4
@qtnf_external_auth._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to report external auth\0A\00", [39 x i8] zeroinitializer }, align 32
@qtnf_external_auth._entry_ptr.114 = internal global ptr @qtnf_external_auth._entry.112, section ".printk_index", align 4
@qtnf_update_owe_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to update owe info\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qtnf_update_owe_info\00", [43 x i8] zeroinitializer }, align 32
@qtnf_update_owe_info._entry_ptr = internal global ptr @qtnf_update_owe_info._entry, section ".printk_index", align 4
@qtnf_mgmt_stypes = internal constant { <{ %struct.ieee80211_txrx_stypes, %struct.ieee80211_txrx_stypes, %struct.ieee80211_txrx_stypes, %struct.ieee80211_txrx_stypes, [9 x %struct.ieee80211_txrx_stypes] }>, [44 x i8] } { <{ %struct.ieee80211_txrx_stypes, %struct.ieee80211_txrx_stypes, %struct.ieee80211_txrx_stypes, %struct.ieee80211_txrx_stypes, [9 x %struct.ieee80211_txrx_stypes] }> <{ %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 10240, i16 10256 }, %struct.ieee80211_txrx_stypes { i16 10240, i16 10261 }, [9 x %struct.ieee80211_txrx_stypes] zeroinitializer }>, [44 x i8] zeroinitializer }, align 32
@qtnf_cfg80211_reg_notifier.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.118, ptr @.str, ptr @.str.119, i8 1, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qtnf_cfg80211_reg_notifier\00", [37 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MAC%u: initiator=%d alpha=%c%c\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"qtnfmac: %s: MAC%u: initiator=%d alpha=%c%c\0A\00", [51 x i8] zeroinitializer }, align 32
@qtnf_cfg80211_reg_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.118, ptr @.str, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013qtnfmac: %s: MAC%u: failed to update region to %c%c: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@qtnf_cfg80211_reg_notifier._entry_ptr = internal global ptr @qtnf_cfg80211_reg_notifier._entry, section ".printk_index", align 4
@qtnf_cfg80211_reg_notifier._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013qtnfmac: %s: MAC%u: failed to update band %u\0A\00", [48 x i8] zeroinitializer }, align 32
@qtnf_cfg80211_reg_notifier._entry_ptr.124 = internal global ptr @qtnf_cfg80211_reg_notifier._entry.122, section ".printk_index", align 4
@qtnf_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.125, ptr @.str, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qtnf_disconnect\00", [16 x i8] zeroinitializer }, align 32
@qtnf_disconnect._entry_ptr = internal global ptr @qtnf_disconnect._entry, section ".printk_index", align 4
@qtnf_disconnect._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013qtnfmac: %s: VIF%u.%u: failed to disconnect\0A\00", [49 x i8] zeroinitializer }, align 32
@qtnf_disconnect._entry_ptr.128 = internal global ptr @qtnf_disconnect._entry.126, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 165, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 186, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"qtn_cfg80211_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 999, i32 28 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1127, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"qtnf_cipher_suites\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 46, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1246, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [14 x i8] c"qtnf_rates_2g\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 18, i32 30 }
@___asan_gen_.176 = private unnamed_addr constant [14 x i8] c"qtnf_rates_5g\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 34, i32 30 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 946, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 952, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 961, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 978, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 984, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 215, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 225, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 237, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 248, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 254, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 262, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 116, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 136, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 150, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 542, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 558, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 561, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 578, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 594, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 349, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 364, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 630, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 609, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 648, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 653, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 673, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 684, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 380, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 386, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 907, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 915, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 889, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 773, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 474, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 876, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 437, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 794, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 800, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 862, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 848, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 818, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 823, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 829, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 699, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 703, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 931, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant [17 x i8] c"qtnf_mgmt_stypes\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 54, i32 1 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1045, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1051, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1062, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 719, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.573 = private constant [53 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 729, i32 3 }
@llvm.compiler.used = appending global [195 x ptr] [ptr @qtnf_add_key._entry, ptr @qtnf_add_key._entry_ptr, ptr @qtnf_add_virtual_intf._entry, ptr @qtnf_add_virtual_intf._entry.23, ptr @qtnf_add_virtual_intf._entry.26, ptr @qtnf_add_virtual_intf._entry.29, ptr @qtnf_add_virtual_intf._entry.32, ptr @qtnf_add_virtual_intf._entry.35, ptr @qtnf_add_virtual_intf._entry_ptr, ptr @qtnf_add_virtual_intf._entry_ptr.25, ptr @qtnf_add_virtual_intf._entry_ptr.28, ptr @qtnf_add_virtual_intf._entry_ptr.31, ptr @qtnf_add_virtual_intf._entry_ptr.34, ptr @qtnf_add_virtual_intf._entry_ptr.37, ptr @qtnf_cfg80211_reg_notifier._entry, ptr @qtnf_cfg80211_reg_notifier._entry.122, ptr @qtnf_cfg80211_reg_notifier._entry_ptr, ptr @qtnf_cfg80211_reg_notifier._entry_ptr.124, ptr @qtnf_change_station._entry, ptr @qtnf_change_station._entry_ptr, ptr @qtnf_change_virtual_intf._entry, ptr @qtnf_change_virtual_intf._entry.42, ptr @qtnf_change_virtual_intf._entry_ptr, ptr @qtnf_change_virtual_intf._entry_ptr.44, ptr @qtnf_channel_switch._entry, ptr @qtnf_channel_switch._entry.107, ptr @qtnf_channel_switch._entry_ptr, ptr @qtnf_channel_switch._entry_ptr.109, ptr @qtnf_connect._entry, ptr @qtnf_connect._entry.69, ptr @qtnf_connect._entry_ptr, ptr @qtnf_connect._entry_ptr.71, ptr @qtnf_del_key._entry, ptr @qtnf_del_key._entry_ptr, ptr @qtnf_del_station._entry, ptr @qtnf_del_station._entry_ptr, ptr @qtnf_del_virtual_intf._entry, ptr @qtnf_del_virtual_intf._entry_ptr, ptr @qtnf_disconnect._entry, ptr @qtnf_disconnect._entry.126, ptr @qtnf_disconnect._entry_ptr, ptr @qtnf_disconnect._entry_ptr.128, ptr @qtnf_external_auth._entry, ptr @qtnf_external_auth._entry.112, ptr @qtnf_external_auth._entry_ptr, ptr @qtnf_external_auth._entry_ptr.114, ptr @qtnf_get_channel._entry, ptr @qtnf_get_channel._entry.96, ptr @qtnf_get_channel._entry_ptr, ptr @qtnf_get_channel._entry_ptr.98, ptr @qtnf_get_tx_power._entry, ptr @qtnf_get_tx_power._entry_ptr, ptr @qtnf_netdev_updown._entry, ptr @qtnf_netdev_updown._entry_ptr, ptr @qtnf_resume._entry, ptr @qtnf_resume._entry.18, ptr @qtnf_resume._entry_ptr, ptr @qtnf_resume._entry_ptr.20, ptr @qtnf_scan._entry, ptr @qtnf_scan._entry_ptr, ptr @qtnf_set_default_key._entry, ptr @qtnf_set_default_key._entry_ptr, ptr @qtnf_set_default_mgmt_key._entry, ptr @qtnf_set_default_mgmt_key._entry_ptr, ptr @qtnf_set_mac_acl._entry, ptr @qtnf_set_mac_acl._entry_ptr, ptr @qtnf_set_power_mgmt._entry, ptr @qtnf_set_power_mgmt._entry_ptr, ptr @qtnf_set_tx_power._entry, ptr @qtnf_set_tx_power._entry.77, ptr @qtnf_set_tx_power._entry_ptr, ptr @qtnf_set_tx_power._entry_ptr.79, ptr @qtnf_set_wiphy_params._entry, ptr @qtnf_set_wiphy_params._entry.73, ptr @qtnf_set_wiphy_params._entry_ptr, ptr @qtnf_set_wiphy_params._entry_ptr.75, ptr @qtnf_start_ap._entry, ptr @qtnf_start_ap._entry_ptr, ptr @qtnf_start_radar_detection._entry, ptr @qtnf_start_radar_detection._entry_ptr, ptr @qtnf_stop_ap._entry, ptr @qtnf_stop_ap._entry_ptr, ptr @qtnf_suspend._entry, ptr @qtnf_suspend._entry.14, ptr @qtnf_suspend._entry_ptr, ptr @qtnf_suspend._entry_ptr.16, ptr @qtnf_update_mgmt_frame_registrations._entry, ptr @qtnf_update_mgmt_frame_registrations._entry_ptr, ptr @qtnf_update_owe_info._entry, ptr @qtnf_update_owe_info._entry_ptr, ptr @qtnf_validate_iface_combinations._entry, ptr @qtnf_validate_iface_combinations._entry_ptr, ptr @qtnf_wiphy_register._entry, ptr @qtnf_wiphy_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @qtn_cfg80211_ops, ptr @.str.3, ptr @.str.4, ptr @qtnf_cipher_suites, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @qtnf_rates_2g, ptr @qtnf_rates_5g, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @qtnf_mgmt_stypes, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.127], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_del_virtual_intf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtn_cfg80211_ops to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_wiphy_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cipher_suites to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_netdev_updown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_rates_2g to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_rates_5g to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_suspend._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_resume._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_add_virtual_intf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_add_virtual_intf._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_add_virtual_intf._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_add_virtual_intf._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_add_virtual_intf._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_add_virtual_intf._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_validate_iface_combinations._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_change_virtual_intf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_change_virtual_intf._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_add_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_del_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_set_default_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_set_default_mgmt_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_start_ap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_stop_ap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_del_station._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_change_station._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_connect._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_set_wiphy_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_set_wiphy_params._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_set_tx_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_set_tx_power._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_get_tx_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_set_power_mgmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_update_mgmt_frame_registrations._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_get_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_get_channel._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_set_mac_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_start_radar_detection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_channel_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_channel_switch._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_external_auth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_external_auth._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_update_owe_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_mgmt_stypes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cfg80211_reg_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_cfg80211_reg_notifier._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_disconnect._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_del_virtual_intf(ptr nocapture readnone %wiphy, ptr nocapture noundef readonly %wdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !273

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac, align 4
  tail call void @qtnf_scan_done(ptr noundef %5, i1 noundef zeroext true) #7
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %1) #7
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then27, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_carrier_off(ptr noundef nonnull %1) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24.if.end28_crit_edge
  %high_pri_tx_queue = getelementptr inbounds %struct.qtnf_vif, ptr %3, i32 0, i32 11
  %call2965 = tail call ptr @skb_dequeue(ptr noundef %high_pri_tx_queue) #7
  %tobool30.not66 = icmp eq ptr %call2965, null
  br i1 %tobool30.not66, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end28.while.body_crit_edge
  %call2967 = phi ptr [ %call29, %while.body.while.body_crit_edge ], [ %call2965, %if.end28.while.body_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call2967, i32 noundef 1) #7
  %call29 = tail call ptr @skb_dequeue(ptr noundef %high_pri_tx_queue) #7
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end28.while.end_crit_edge
  %high_pri_tx_work = getelementptr inbounds %struct.qtnf_vif, ptr %3, i32 0, i32 10
  %call31 = tail call zeroext i1 @cancel_work_sync(ptr noundef %high_pri_tx_work) #7
  %reg_state = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 121
  %9 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 1
  br i1 %cmp, label %if.then32, label %while.end.if.end33_crit_edge

while.end.if.end33_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %ieee80211_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %10 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ieee80211_ptr.i, align 16
  tail call void @cfg80211_unregister_wdev(ptr noundef %11) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %while.end.if.end33_crit_edge
  %call34 = tail call i32 @qtnf_cmd_send_del_intf(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.if.end44_crit_edge, label %do.end39

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %conv = zext i8 %15 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vifid, align 4
  %conv42 = zext i8 %17 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %conv42) #10
  br label %if.end44

if.end44:                                         ; preds = %do.end39, %if.end33.if.end44_crit_edge
  %netdev45 = getelementptr inbounds %struct.qtnf_vif, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %netdev45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev45, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 82
  %20 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ieee80211_ptr, align 16
  store ptr null, ptr %netdev45, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %iftype, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ 0, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_scan_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_del_intf(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qtnf_wiphy_allocate(ptr noundef %bus, ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @qtnf_dfs_offload_get() #7
  br i1 %call, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hw_capab.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 8
  %call.i = tail call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i, i32 noundef 2, i32 noundef 2) #7
  br i1 %call.i, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  store ptr null, ptr getelementptr inbounds (%struct.cfg80211_ops, ptr @qtn_cfg80211_ops, i32 0, i32 82), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %hw_capab.i19 = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 7, i32 8
  %call.i20 = tail call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i19, i32 noundef 4, i32 noundef 2) #7
  br i1 %call.i20, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store ptr null, ptr getelementptr inbounds (%struct.cfg80211_ops, ptr @qtn_cfg80211_ops, i32 0, i32 64), align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call.i21 = tail call ptr @wiphy_new_nm(ptr noundef nonnull @qtn_cfg80211_ops, i32 noundef 9552, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i21, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %tobool9.not = icmp eq ptr %pdev, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 128
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then10
  %dev.sink = phi ptr [ %dev, %if.then10 ], [ %1, %if.else ]
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %call.i21, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev.sink, ptr %parent.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge
  ret ptr %call.i21
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qtnf_dfs_offload_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_wiphy_register(ptr noundef %hw_info, ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %mac, null
  br i1 %tobool.not.i, label %do.body4.i, label %priv_to_wiphy.exit, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5227, 0\0A.popsection", ""() #7, !srcloc !274
  unreachable

priv_to_wiphy.exit:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %mac, i32 -1408
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %priv_to_wiphy.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end:                                           ; preds = %priv_to_wiphy.exit
  %frag_thr = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %frag_thr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frag_thr, align 4
  %frag_threshold = getelementptr i8, ptr %mac, i32 -1200
  %2 = ptrtoint ptr %frag_threshold to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %frag_threshold, align 16
  %rts_thr = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %rts_thr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rts_thr, align 4
  %rts_threshold = getelementptr i8, ptr %mac, i32 -1196
  %5 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rts_threshold, align 4
  %sretry_limit = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 9
  %6 = ptrtoint ptr %sretry_limit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sretry_limit, align 1
  %retry_short = getelementptr i8, ptr %mac, i32 -1204
  %8 = ptrtoint ptr %retry_short to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %retry_short, align 4
  %lretry_limit = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %lretry_limit to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lretry_limit, align 4
  %retry_long = getelementptr i8, ptr %mac, i32 -1203
  %11 = ptrtoint ptr %retry_long to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %retry_long, align 1
  %coverage_class = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 10
  %12 = ptrtoint ptr %coverage_class to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %coverage_class, align 2
  %coverage_class3 = getelementptr i8, ptr %mac, i32 -1192
  %14 = ptrtoint ptr %coverage_class3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %coverage_class3, align 8
  %max_scan_ssids = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 12
  %15 = ptrtoint ptr %max_scan_ssids to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %max_scan_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not = icmp eq i8 %16, 0
  %spec.select = select i1 %tobool4.not, i8 1, i8 %16
  %max_scan_ssids8 = getelementptr i8, ptr %mac, i32 -1248
  %17 = ptrtoint ptr %max_scan_ssids8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select, ptr %max_scan_ssids8, align 32
  %max_scan_ie_len = getelementptr i8, ptr %mac, i32 -1244
  %18 = ptrtoint ptr %max_scan_ie_len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 255, ptr %max_scan_ie_len, align 4
  %mgmt_stypes = getelementptr i8, ptr %mac, i32 -1300
  %19 = ptrtoint ptr %mgmt_stypes to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @qtnf_mgmt_stypes, ptr %mgmt_stypes, align 4
  %max_remain_on_channel_duration = getelementptr i8, ptr %mac, i32 -1144
  %20 = ptrtoint ptr %max_remain_on_channel_duration to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 5000, ptr %max_remain_on_channel_duration, align 8
  %max_acl_mac_addrs = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 14
  %21 = ptrtoint ptr %max_acl_mac_addrs to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %max_acl_mac_addrs, align 2
  %max_acl_mac_addrs9 = getelementptr i8, ptr %mac, i32 -1282
  %23 = ptrtoint ptr %max_acl_mac_addrs9 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %max_acl_mac_addrs9, align 2
  %max_num_csa_counters = getelementptr i8, ptr %mac, i32 -90
  %24 = ptrtoint ptr %max_num_csa_counters to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %max_num_csa_counters, align 2
  %if_comb1.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 18
  %25 = ptrtoint ptr %if_comb1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %if_comb1.i, align 4
  %n_if_comb2.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 19
  %27 = ptrtoint ptr %n_if_comb2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_if_comb2.i, align 4
  %tobool.not.i217 = icmp eq ptr %26, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not.i = icmp eq i32 %28, 0
  %or.cond.i = select i1 %tobool.not.i217, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %radar_detect_widths.i = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc15.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.047.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc16.i, %for.inc15.i.for.body.i_crit_edge ]
  %interface_modes.046.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %interface_modes.1.lcssa.i, %for.inc15.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %radar_detect_widths.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %radar_detect_widths.i, align 1
  %radar_detect_widths4.i = getelementptr %struct.ieee80211_iface_combination, ptr %26, i32 %i.047.i, i32 5
  %31 = ptrtoint ptr %radar_detect_widths4.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %radar_detect_widths4.i, align 4
  %n_limits.i = getelementptr %struct.ieee80211_iface_combination, ptr %26, i32 %i.047.i, i32 3
  %32 = ptrtoint ptr %n_limits.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %n_limits.i, align 2
  %conv.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp742.not.i = icmp eq i8 %33, 0
  br i1 %cmp742.not.i, label %for.body.i.for.inc15.i_crit_edge, label %for.body9.lr.ph.i

for.body.i.for.inc15.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc15.i

for.body9.lr.ph.i:                                ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.ieee80211_iface_combination, ptr %26, i32 %i.047.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %for.body9.lr.ph.i
  %j.044.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %inc.i, %for.body9.i.for.body9.i_crit_edge ]
  %interface_modes.143.i = phi i16 [ %interface_modes.046.i, %for.body9.lr.ph.i ], [ %or41.i, %for.body9.i.for.body9.i_crit_edge ]
  %types.i = getelementptr %struct.ieee80211_iface_limit, ptr %35, i32 %j.044.i, i32 1
  %36 = ptrtoint ptr %types.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %types.i, align 2
  %or41.i = or i16 %37, %interface_modes.143.i
  %inc.i = add nuw nsw i32 %j.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body9.i.for.inc15.i_crit_edge, label %for.body9.i.for.body9.i_crit_edge

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i

for.body9.i.for.inc15.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc15.i

for.inc15.i:                                      ; preds = %for.body9.i.for.inc15.i_crit_edge, %for.body.i.for.inc15.i_crit_edge
  %interface_modes.1.lcssa.i = phi i16 [ %interface_modes.046.i, %for.body.i.for.inc15.i_crit_edge ], [ %or41.i, %for.body9.i.for.inc15.i_crit_edge ]
  %inc16.i = add nuw i32 %i.047.i, 1
  %exitcond49.not.i = icmp eq i32 %inc16.i, %28
  br i1 %exitcond49.not.i, label %if.end13, label %for.inc15.i.for.body.i_crit_edge

for.inc15.i.for.body.i_crit_edge:                 ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end13:                                         ; preds = %for.inc15.i
  %iface_combinations.i = getelementptr i8, ptr %mac, i32 -1296
  %38 = ptrtoint ptr %iface_combinations.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %26, ptr %iface_combinations.i, align 16
  %n_iface_combinations.i = getelementptr i8, ptr %mac, i32 -1292
  %39 = ptrtoint ptr %n_iface_combinations.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %28, ptr %n_iface_combinations.i, align 4
  %interface_modes18.i = getelementptr i8, ptr %mac, i32 -1284
  %40 = ptrtoint ptr %interface_modes18.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %interface_modes.1.lcssa.i, ptr %interface_modes18.i, align 4
  %cipher_suites = getelementptr i8, ptr %mac, i32 -1224
  %41 = ptrtoint ptr %cipher_suites to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @qtnf_cipher_suites, ptr %cipher_suites, align 8
  %n_cipher_suites = getelementptr i8, ptr %mac, i32 -1228
  %42 = ptrtoint ptr %n_cipher_suites to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %n_cipher_suites, align 4
  %signal_type = getelementptr i8, ptr %mac, i32 -1256
  %43 = ptrtoint ptr %signal_type to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %signal_type, align 8
  %flags = getelementptr i8, ptr %mac, i32 -1280
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 32
  %or = and i32 %45, -9060441
  %and = or i32 %or, 9060424
  store i32 %and, ptr %flags, align 32
  %call15 = tail call zeroext i1 @qtnf_dfs_offload_get() #7
  br i1 %call15, label %land.lhs.true, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %hw_capab.i = getelementptr inbounds %struct.qtnf_hw_info, ptr %hw_info, i32 0, i32 8
  %call.i = tail call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i, i32 noundef 2, i32 noundef 2) #7
  br i1 %call.i, label %if.then19, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i218 = getelementptr i8, ptr %mac, i32 -1265
  %46 = ptrtoint ptr %arrayidx.i218 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i218, align 1
  %conv1.i = or i8 %47, 2
  store i8 %conv1.i, ptr %arrayidx.i218, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.lhs.true.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %hw_capab.i219 = getelementptr inbounds %struct.qtnf_hw_info, ptr %hw_info, i32 0, i32 8
  %call.i220 = tail call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i219, i32 noundef 6, i32 noundef 2) #7
  br i1 %call.i220, label %if.then22, label %if.end20.if.end23_crit_edge

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i221 = getelementptr i8, ptr %mac, i32 -1268
  %48 = ptrtoint ptr %arrayidx.i221 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i221, align 1
  %conv1.i222 = or i8 %49, 32
  store i8 %conv1.i222, ptr %arrayidx.i221, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20.if.end23_crit_edge
  %probe_resp_offload = getelementptr i8, ptr %mac, i32 -1132
  %50 = ptrtoint ptr %probe_resp_offload to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %probe_resp_offload, align 4
  %num_tx_chain = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %num_tx_chain to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_tx_chain, align 1
  %conv24 = zext i8 %52 to i32
  %available_antennas_tx = getelementptr i8, ptr %mac, i32 -1140
  %53 = ptrtoint ptr %available_antennas_tx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv24, ptr %available_antennas_tx, align 4
  %num_rx_chain = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 2
  %54 = ptrtoint ptr %num_rx_chain to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_rx_chain, align 2
  %conv25 = zext i8 %55 to i32
  %available_antennas_rx = getelementptr i8, ptr %mac, i32 -1136
  %56 = ptrtoint ptr %available_antennas_rx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv25, ptr %available_antennas_rx, align 16
  %max_ap_assoc_sta = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 4
  %57 = ptrtoint ptr %max_ap_assoc_sta to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %max_ap_assoc_sta, align 4
  %max_ap_assoc_sta26 = getelementptr i8, ptr %mac, i32 -92
  %59 = ptrtoint ptr %max_ap_assoc_sta26 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %max_ap_assoc_sta26, align 4
  %ht_cap_mod_mask = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 15
  %ht_capa_mod_mask = getelementptr i8, ptr %mac, i32 -136
  %60 = ptrtoint ptr %ht_capa_mod_mask to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %ht_cap_mod_mask, ptr %ht_capa_mod_mask, align 8
  %vht_cap_mod_mask = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 16
  %vht_capa_mod_mask = getelementptr i8, ptr %mac, i32 -132
  %61 = ptrtoint ptr %vht_capa_mod_mask to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %vht_cap_mod_mask, ptr %vht_capa_mod_mask, align 4
  %perm_addr = getelementptr i8, ptr %mac, i32 -1316
  %macaddr = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 2
  %62 = ptrtoint ptr %macaddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %macaddr, align 4
  %64 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %perm_addr, align 4
  %add.ptr.i223 = getelementptr %struct.qtnf_wmac, ptr %mac, i32 0, i32 2, i32 4
  %65 = ptrtoint ptr %add.ptr.i223 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr.i223, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 -1312
  %67 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %add.ptr1.i, align 2
  %call.i225 = tail call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i219, i32 noundef 1, i32 noundef 2) #7
  br i1 %call.i225, label %if.then29, label %if.end23.if.end31_crit_edge

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %features = getelementptr i8, ptr %mac, i32 -1272
  %68 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %features, align 8
  %or30 = or i32 %69, 4
  store i32 %or30, ptr %features, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end23.if.end31_crit_edge
  %call.i227 = tail call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i219, i32 noundef 3, i32 noundef 2) #7
  br i1 %call.i227, label %if.then33, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %features34 = getelementptr i8, ptr %mac, i32 -1272
  %70 = ptrtoint ptr %features34 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %features34, align 8
  %or35 = or i32 %71, 536870912
  store i32 %or35, ptr %features34, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end31.if.end36_crit_edge
  %call.i229 = tail call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i219, i32 noundef 5, i32 noundef 2) #7
  br i1 %call.i229, label %if.end36.if.end41_crit_edge, label %if.then38

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %features39 = getelementptr i8, ptr %mac, i32 -1272
  %72 = ptrtoint ptr %features39 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %features39, align 8
  %or40 = or i32 %73, 1024
  store i32 %or40, ptr %features39, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end36.if.end41_crit_edge
  %call.i231 = tail call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i219, i32 noundef 7, i32 noundef 2) #7
  br i1 %call.i231, label %if.then43, label %if.end41.if.end46_crit_edge

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %features44 = getelementptr i8, ptr %mac, i32 -1272
  %74 = ptrtoint ptr %features44 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %features44, align 8
  %or45 = or i32 %75, 32
  store i32 %or45, ptr %features44, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end41.if.end46_crit_edge
  %wowlan = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 24
  %76 = ptrtoint ptr %wowlan to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wowlan, align 4
  %tobool47.not = icmp eq ptr %77, null
  br i1 %tobool47.not, label %if.end46.if.end51_crit_edge, label %if.then48

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %wowlan50 = getelementptr i8, ptr %mac, i32 -1152
  %78 = ptrtoint ptr %wowlan50 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %wowlan50, align 32
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end46.if.end51_crit_edge
  %rd = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 9
  %79 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rd, align 4
  %alpha2 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %alpha2 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %alpha2, align 4
  %conv52 = zext i8 %82 to i32
  %arrayidx53 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv52
  %83 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx53, align 1
  %85 = and i8 %84, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp.not = icmp eq i8 %85, 0
  br i1 %cmp.not, label %if.end51.land.end_crit_edge, label %land.rhs

if.end51.land.end_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx59 = getelementptr %struct.ieee80211_regdomain, ptr %80, i32 0, i32 2, i32 1
  %86 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %87 to i32
  %arrayidx61 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv60
  %88 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx61, align 1
  %90 = and i8 %89, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp64 = icmp ne i8 %90, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end51.land.end_crit_edge
  %91 = phi i1 [ false, %if.end51.land.end_crit_edge ], [ %cmp64, %land.rhs ]
  %call.i233 = tail call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i219, i32 noundef 0, i32 noundef 2) #7
  br i1 %call.i233, label %if.then67, label %if.else90

if.then67:                                        ; preds = %land.end
  %reg_notifier = getelementptr i8, ptr %mac, i32 -1080
  %92 = ptrtoint ptr %reg_notifier to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @qtnf_cfg80211_reg_notifier, ptr %reg_notifier, align 8
  %93 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rd, align 4
  %alpha269 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %alpha269 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %alpha269, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %96)
  %cmp72 = icmp eq i8 %96, 57
  br i1 %cmp72, label %land.lhs.true74, label %if.then67.if.else_crit_edge

if.then67.if.else_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true74:                                  ; preds = %if.then67
  %arrayidx77 = getelementptr %struct.ieee80211_regdomain, ptr %94, i32 0, i32 2, i32 1
  %97 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %98)
  %cmp79 = icmp eq i8 %98, 57
  br i1 %cmp79, label %if.then81, label %land.lhs.true74.if.else_crit_edge

land.lhs.true74.if.else_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then81:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  %regulatory_flags = getelementptr i8, ptr %mac, i32 -1276
  %99 = ptrtoint ptr %regulatory_flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %regulatory_flags, align 4
  %or82 = or i32 %100, 3
  store i32 %or82, ptr %regulatory_flags, align 4
  tail call void @wiphy_apply_custom_regulatory(ptr noundef nonnull %add.ptr.i, ptr noundef %94) #7
  br label %if.end93

if.else:                                          ; preds = %land.lhs.true74.if.else_crit_edge, %if.then67.if.else_crit_edge
  br i1 %91, label %if.then85, label %if.else.if.end93_crit_edge

if.else.if.end93_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then85:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %regulatory_flags86 = getelementptr i8, ptr %mac, i32 -1276
  %101 = ptrtoint ptr %regulatory_flags86 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %regulatory_flags86, align 4
  %or87 = or i32 %102, 2
  store i32 %or87, ptr %regulatory_flags86, align 4
  br label %if.end93

if.else90:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  %regulatory_flags91 = getelementptr i8, ptr %mac, i32 -1276
  %103 = ptrtoint ptr %regulatory_flags91 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %regulatory_flags91, align 4
  %or92 = or i32 %104, 128
  store i32 %or92, ptr %regulatory_flags91, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else90, %if.then85, %if.else.if.end93_crit_edge, %if.then81
  %extended_capabilities_len = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 22
  %105 = ptrtoint ptr %extended_capabilities_len to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %extended_capabilities_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool95.not = icmp eq i8 %106, 0
  br i1 %tobool95.not, label %if.end93.if.end104_crit_edge, label %if.then96

if.end93.if.end104_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %extended_capabilities = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 20
  %107 = ptrtoint ptr %extended_capabilities to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %extended_capabilities, align 4
  %extended_capabilities98 = getelementptr i8, ptr %mac, i32 -1128
  %109 = ptrtoint ptr %extended_capabilities98 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %extended_capabilities98, align 8
  %extended_capabilities_mask = getelementptr inbounds %struct.qtnf_wmac, ptr %mac, i32 0, i32 4, i32 21
  %110 = ptrtoint ptr %extended_capabilities_mask to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %extended_capabilities_mask, align 4
  %extended_capabilities_mask100 = getelementptr i8, ptr %mac, i32 -1124
  %112 = ptrtoint ptr %extended_capabilities_mask100 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %extended_capabilities_mask100, align 4
  %extended_capabilities_len103 = getelementptr i8, ptr %mac, i32 -1120
  %113 = ptrtoint ptr %extended_capabilities_len103 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %106, ptr %extended_capabilities_len103, align 32
  br label %if.end104

if.end104:                                        ; preds = %if.then96, %if.end93.if.end104_crit_edge
  %fw_version = getelementptr i8, ptr %mac, i32 -1191
  %fw_version106 = getelementptr inbounds %struct.qtnf_hw_info, ptr %hw_info, i32 0, i32 6
  %call108 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef %fw_version106, i32 noundef 32) #7
  %hw_version = getelementptr inbounds %struct.qtnf_hw_info, ptr %hw_info, i32 0, i32 7
  %114 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %hw_version, align 4
  %hw_version109 = getelementptr i8, ptr %mac, i32 -1156
  %116 = ptrtoint ptr %hw_version109 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %hw_version109, align 4
  %call110 = tail call i32 @wiphy_register(ptr noundef nonnull %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end104.cleanup_crit_edge, label %if.end114

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end114:                                        ; preds = %if.end104
  %regulatory_flags115 = getelementptr i8, ptr %mac, i32 -1276
  %117 = ptrtoint ptr %regulatory_flags115 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %regulatory_flags115, align 4
  %and116 = and i32 %118, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.else121, label %if.then118

if.then118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rd, align 4
  %call120 = tail call i32 @regulatory_set_wiphy_regd(ptr noundef nonnull %add.ptr.i, ptr noundef %120) #7
  br label %cleanup

if.else121:                                       ; preds = %if.end114
  br i1 %91, label %if.then123, label %if.else121.cleanup_crit_edge

if.else121.cleanup_crit_edge:                     ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then123:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rd, align 4
  %alpha2125 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %122, i32 0, i32 2
  %call127 = tail call i32 @regulatory_hint(ptr noundef nonnull %add.ptr.i, ptr noundef %alpha2125) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %if.else121.cleanup_crit_edge, %if.then118, %if.end104.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ %call110, %if.end104.cleanup_crit_edge ], [ %call120, %if.then118 ], [ %call127, %if.then123 ], [ %call110, %if.else121.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_cfg80211_reg_notifier(ptr noundef %wiphy, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !275
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_cfg80211_reg_notifier.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_cfg80211_reg_notifier, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !276

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv.i, align 4
  %conv = zext i8 %1 to i32
  %initiator = getelementptr inbounds %struct.regulatory_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %initiator, align 4
  %alpha2 = getelementptr inbounds %struct.regulatory_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %alpha2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %alpha2, align 4
  %conv4 = zext i8 %5 to i32
  %arrayidx6 = getelementptr %struct.regulatory_request, ptr %req, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_cfg80211_reg_notifier.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.118, i32 noundef %conv, i32 noundef %3, i32 noundef %conv4, i32 noundef %conv7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %wiphy_priv.exit
  %call8 = tail call zeroext i1 @qtnf_slave_radar_get() #7
  %call9 = tail call zeroext i1 @qtnf_dfs_offload_get() #7
  %call10 = tail call i32 @qtnf_cmd_reg_notify(ptr noundef %priv.i, ptr noundef %req, i1 noundef zeroext %call8, i1 noundef zeroext %call9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.body.preheader, label %do.end15

for.body.preheader:                               ; preds = %do.end
  %arrayidx28 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 0
  %8 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %9, null
  br i1 %tobool29.not, label %for.body.preheader.for.inc_crit_edge, label %if.end31

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %priv.i, align 4
  %conv18 = zext i8 %11 to i32
  %alpha219 = getelementptr inbounds %struct.regulatory_request, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %alpha219 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %alpha219, align 4
  %conv21 = zext i8 %13 to i32
  %arrayidx23 = getelementptr %struct.regulatory_request, ptr %req, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %15 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.118, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24, i32 noundef %call10) #10
  br label %cleanup

if.end31:                                         ; preds = %for.body.preheader
  %call34 = tail call i32 @qtnf_cmd_band_info_get(ptr noundef %priv.i, ptr noundef nonnull %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end31.for.inc_crit_edge, label %do.end39

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %priv.i, align 4
  %conv42 = zext i8 %17 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.118, i32 noundef %conv42, i32 noundef 0) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end39, %if.end31.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx28.1 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 1
  %18 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx28.1, align 4
  %tobool29.not.1 = icmp eq ptr %19, null
  br i1 %tobool29.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end31.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end31.1:                                       ; preds = %for.inc
  %call34.1 = tail call i32 @qtnf_cmd_band_info_get(ptr noundef %priv.i, ptr noundef nonnull %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.1)
  %tobool35.not.1 = icmp eq i32 %call34.1, 0
  br i1 %tobool35.not.1, label %if.end31.1.for.inc.1_crit_edge, label %do.end39.1

if.end31.1.for.inc.1_crit_edge:                   ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

do.end39.1:                                       ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %priv.i, align 4
  %conv42.1 = zext i8 %21 to i32
  %call43.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.118, i32 noundef %conv42.1, i32 noundef 1) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end39.1, %if.end31.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx28.2 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 2
  %22 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx28.2, align 4
  %tobool29.not.2 = icmp eq ptr %23, null
  br i1 %tobool29.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end31.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end31.2:                                       ; preds = %for.inc.1
  %call34.2 = tail call i32 @qtnf_cmd_band_info_get(ptr noundef %priv.i, ptr noundef nonnull %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.2)
  %tobool35.not.2 = icmp eq i32 %call34.2, 0
  br i1 %tobool35.not.2, label %if.end31.2.for.inc.2_crit_edge, label %do.end39.2

if.end31.2.for.inc.2_crit_edge:                   ; preds = %if.end31.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

do.end39.2:                                       ; preds = %if.end31.2
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %priv.i, align 4
  %conv42.2 = zext i8 %25 to i32
  %call43.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.118, i32 noundef %conv42.2, i32 noundef 2) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end39.2, %if.end31.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx28.3 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 3
  %26 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx28.3, align 4
  %tobool29.not.3 = icmp eq ptr %27, null
  br i1 %tobool29.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end31.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end31.3:                                       ; preds = %for.inc.2
  %call34.3 = tail call i32 @qtnf_cmd_band_info_get(ptr noundef %priv.i, ptr noundef nonnull %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.3)
  %tobool35.not.3 = icmp eq i32 %call34.3, 0
  br i1 %tobool35.not.3, label %if.end31.3.for.inc.3_crit_edge, label %do.end39.3

if.end31.3.for.inc.3_crit_edge:                   ; preds = %if.end31.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

do.end39.3:                                       ; preds = %if.end31.3
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %priv.i, align 4
  %conv42.3 = zext i8 %29 to i32
  %call43.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.118, i32 noundef %conv42.3, i32 noundef 3) #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end39.3, %if.end31.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx28.4 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 4
  %30 = ptrtoint ptr %arrayidx28.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx28.4, align 4
  %tobool29.not.4 = icmp eq ptr %31, null
  br i1 %tobool29.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end31.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.end31.4:                                       ; preds = %for.inc.3
  %call34.4 = tail call i32 @qtnf_cmd_band_info_get(ptr noundef %priv.i, ptr noundef nonnull %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.4)
  %tobool35.not.4 = icmp eq i32 %call34.4, 0
  br i1 %tobool35.not.4, label %if.end31.4.for.inc.4_crit_edge, label %do.end39.4

if.end31.4.for.inc.4_crit_edge:                   ; preds = %if.end31.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

do.end39.4:                                       ; preds = %if.end31.4
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %priv.i, align 4
  %conv42.4 = zext i8 %33 to i32
  %call43.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.118, i32 noundef %conv42.4, i32 noundef 4) #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end39.4, %if.end31.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx28.5 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 5
  %34 = ptrtoint ptr %arrayidx28.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx28.5, align 4
  %tobool29.not.5 = icmp eq ptr %35, null
  br i1 %tobool29.not.5, label %for.inc.4.cleanup_crit_edge, label %if.end31.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31.5:                                       ; preds = %for.inc.4
  %call34.5 = tail call i32 @qtnf_cmd_band_info_get(ptr noundef %priv.i, ptr noundef nonnull %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.5)
  %tobool35.not.5 = icmp eq i32 %call34.5, 0
  br i1 %tobool35.not.5, label %if.end31.5.cleanup_crit_edge, label %do.end39.5

if.end31.5.cleanup_crit_edge:                     ; preds = %if.end31.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end39.5:                                       ; preds = %if.end31.5
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %priv.i, align 4
  %conv42.5 = zext i8 %37 to i32
  %call43.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.118, i32 noundef %conv42.5, i32 noundef 5) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end39.5, %if.end31.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %do.end15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_apply_custom_regulatory(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_set_wiphy_regd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_netdev_updown(ptr nocapture noundef readonly %ndev, i1 noundef zeroext %up) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call i32 @qtnf_cmd_send_updown_intf(ptr noundef %1, i1 noundef zeroext %up) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %up, ptr @.str.7, ptr @.str.8
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv = zext i8 %5 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid, align 4
  %conv4 = zext i8 %7 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %conv4) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_updown_intf(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_virtual_intf_cleanup(ptr nocapture noundef readonly %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !275
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %wiphy_priv.exit.if.end_crit_edge

wiphy_priv.exit.if.end_crit_edge:                 ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @qtnf_disconnect(ptr noundef nonnull %3, ptr noundef %ndev, i16 noundef zeroext 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %wiphy_priv.exit.if.end_crit_edge
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 86
  tail call void @qtnf_scan_done(ptr noundef %priv.i, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_disconnect(ptr noundef %wiphy, ptr nocapture noundef readnone %dev, i16 noundef zeroext %reason_code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !275
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %call1 = tail call ptr @qtnf_mac_get_base_vif(ptr noundef %priv.i) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv.i, align 4
  %conv = zext i8 %1 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.125, i32 noundef %conv) #10
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @qtnf_cmd_send_disconnect(ptr noundef nonnull %call1, i16 noundef zeroext %reason_code) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.if.end17_crit_edge, label %do.end11

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv.i, align 4
  %conv14 = zext i8 %5 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %call1, i32 0, i32 3
  %6 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid, align 4
  %conv15 = zext i8 %7 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.125, i32 noundef %conv14, i32 noundef %conv15) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end11, %if.end5.if.end17_crit_edge
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %call1, i32 0, i32 25
  %8 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %current_bss, align 4
  %tobool19.not = icmp eq ptr %9, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.then20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %call1, i32 0, i32 7
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  tail call void @netif_carrier_off(ptr noundef %11) #7
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  tail call void @cfg80211_disconnected(ptr noundef %13, i16 noundef zeroext %reason_code, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i32 noundef 3264) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ -95, %if.end.cleanup_crit_edge ], [ %call6, %if.then20 ], [ %call6, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_cfg80211_vif_reset(ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %vif, i32 0, i32 1
  %0 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 7
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void @cfg80211_disconnected(ptr noundef %3, i16 noundef zeroext 3, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i32 noundef 3264) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif, align 4
  tail call void @cfg80211_shutdown_all_interfaces(ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_shutdown_all_interfaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qtnf_band_init_rates(ptr nocapture noundef %band) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %band1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 2
  %0 = ptrtoint ptr %band1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink13 = phi ptr [ null, %sw.default ], [ @qtnf_rates_5g, %sw.bb2 ], [ @qtnf_rates_2g, %entry.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 0, %sw.default ], [ 8, %sw.bb2 ], [ 12, %entry.sw.epilog_crit_edge ]
  %bitrates5 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 1
  %3 = ptrtoint ptr %bitrates5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %.sink13, ptr %bitrates5, align 4
  %n_bitrates6 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %band, i32 0, i32 4
  %4 = ptrtoint ptr %n_bitrates6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %n_bitrates6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qtnf_utils_is_bit_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_suspend(ptr noundef %wiphy, ptr noundef %wowlan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !275
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %call1 = tail call ptr @qtnf_mac_get_base_vif(ptr noundef %priv.i) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv.i, align 4
  %conv = zext i8 %1 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %conv) #10
  br label %exit

if.end:                                           ; preds = %wiphy_priv.exit
  %tobool3.not = icmp eq ptr %wowlan, null
  br i1 %tobool3.not, label %do.body5, label %if.end15

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_suspend.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_suspend, %if.then11)) #7
          to label %do.end14 [label %if.then11], !srcloc !276

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_suspend.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body5
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %call1, i32 0, i32 7
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %wiphy_priv.exit.i, !prof !273

do.body4.i.i:                                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !275
  unreachable

wiphy_priv.exit.i:                                ; preds = %do.end14
  %iftype.i = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %iftype.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iftype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp eq i32 %9, 2
  br i1 %cmp.i, label %if.then.i, label %wiphy_priv.exit.i.qtnf_virtual_intf_cleanup.exit_crit_edge

wiphy_priv.exit.i.qtnf_virtual_intf_cleanup.exit_crit_edge: ; preds = %wiphy_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_virtual_intf_cleanup.exit

if.then.i:                                        ; preds = %wiphy_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 @qtnf_disconnect(ptr noundef nonnull %7, ptr noundef %3, i16 noundef zeroext 3) #7
  br label %qtnf_virtual_intf_cleanup.exit

qtnf_virtual_intf_cleanup.exit:                   ; preds = %if.then.i, %wiphy_priv.exit.i.qtnf_virtual_intf_cleanup.exit_crit_edge
  %priv.i.i = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 86
  tail call void @qtnf_scan_done(ptr noundef %priv.i.i, i1 noundef zeroext true) #7
  br label %exit

if.end15:                                         ; preds = %if.end
  %mac16 = getelementptr inbounds %struct.qtnf_vif, ptr %call1, i32 0, i32 8
  %10 = ptrtoint ptr %mac16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac16, align 4
  tail call void @qtnf_scan_done(ptr noundef %11, i1 noundef zeroext true) #7
  %call17 = tail call i32 @qtnf_cmd_send_wowlan_set(ptr noundef nonnull %call1, ptr noundef nonnull %wowlan) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.exit_crit_edge, label %do.end22

if.end15.exit_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %priv.i, align 4
  %conv25 = zext i8 %13 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10, i32 noundef %conv25) #10
  br label %exit

exit:                                             ; preds = %do.end22, %if.end15.exit_crit_edge, %qtnf_virtual_intf_cleanup.exit, %do.end
  %ret.0 = phi i32 [ %call17, %do.end22 ], [ 0, %if.end15.exit_crit_edge ], [ 0, %qtnf_virtual_intf_cleanup.exit ], [ -14, %do.end ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_resume(ptr noundef %wiphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !275
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %call1 = tail call ptr @qtnf_mac_get_base_vif(ptr noundef %priv.i) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %wiphy_priv.exit.cleanup.sink.split_crit_edge, label %if.end

wiphy_priv.exit.cleanup.sink.split_crit_edge:     ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %wiphy_priv.exit
  %call3 = tail call i32 @qtnf_cmd_send_wowlan_set(ptr noundef nonnull %call1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %wiphy_priv.exit.cleanup.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.9, %wiphy_priv.exit.cleanup.sink.split_crit_edge ], [ @.str.19, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -14, %wiphy_priv.exit.cleanup.sink.split_crit_edge ], [ %call3, %if.end.cleanup.sink.split_crit_edge ]
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv.i, align 4
  %conv11 = zext i8 %1 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.19.sink, ptr noundef nonnull @.str.17, i32 noundef %conv11) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_set_wakeup(ptr noundef readonly %wiphy, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !275
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bus1 = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %call2 = tail call i32 @device_set_wakeup_enable(ptr noundef %3, i1 noundef zeroext %enabled) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qtnf_add_virtual_intf(ptr noundef %wiphy, ptr noundef %name, i8 noundef zeroext %name_assign_t, i32 noundef %type, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !275
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %tobool.not = icmp eq ptr %priv.i, null
  br i1 %tobool.not, label %wiphy_priv.exit.cleanup_crit_edge, label %if.end

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %wiphy_priv.exit
  %call2 = tail call fastcc i32 @qtnf_validate_iface_combinations(ptr noundef nonnull %wiphy, ptr noundef null, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv.i, align 4
  %conv = zext i8 %1 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %conv, i32 noundef %type) #10
  %2 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = and i32 %type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp eq i32 %3, 2
  br i1 %switch, label %sw.bb, label %do.end27

sw.bb:                                            ; preds = %if.end7
  %call8 = tail call ptr @qtnf_mac_get_free_vif(ptr noundef nonnull %priv.i) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end19

do.end13:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv.i, align 4
  %conv16 = zext i8 %5 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %conv16) #10
  br label %cleanup

if.end19:                                         ; preds = %sw.bb
  %mac_addr20 = getelementptr inbounds %struct.qtnf_vif, ptr %call8, i32 0, i32 2
  %bss_priority = getelementptr inbounds %struct.qtnf_vif, ptr %call8, i32 0, i32 4
  %6 = ptrtoint ptr %bss_priority to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %bss_priority, align 1
  %7 = getelementptr inbounds i8, ptr %call8, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 968)
  %9 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wiphy, ptr %call8, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %call8, i32 0, i32 1
  %10 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %type, ptr %iftype, align 4
  %tobool33.not = icmp eq ptr %params, null
  br i1 %tobool33.not, label %if.end19.if.end36_crit_edge, label %if.then34

if.end19.if.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end27:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %priv.i, align 4
  %conv30 = zext i8 %12 to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22, i32 noundef %conv30, i32 noundef %type) #10
  br label %cleanup

if.then34:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %macaddr = getelementptr inbounds %struct.vif_params, ptr %params, i32 0, i32 2
  %use_4addr = getelementptr inbounds %struct.vif_params, ptr %params, i32 0, i32 1
  %13 = ptrtoint ptr %use_4addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %use_4addr, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end19.if.end36_crit_edge
  %use4addr.0 = phi i32 [ %14, %if.then34 ], [ 0, %if.end19.if.end36_crit_edge ]
  %mac_addr.0 = phi ptr [ %macaddr, %if.then34 ], [ null, %if.end19.if.end36_crit_edge ]
  %call37 = tail call i32 @qtnf_cmd_send_add_intf(ptr noundef nonnull %call8, i32 noundef %type, i32 noundef %use4addr.0, ptr noundef %mac_addr.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end48, label %do.end42

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %priv.i, align 4
  %conv45 = zext i8 %16 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %call8, i32 0, i32 3
  %17 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vifid, align 4
  %conv46 = zext i8 %18 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.22, i32 noundef %conv45, i32 noundef %conv46, ptr noundef %mac_addr.0) #10
  br label %err_cmd

if.end48:                                         ; preds = %if.end36
  %19 = ptrtoint ptr %mac_addr20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mac_addr20, align 4
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end48.do.end55_crit_edge

if.end48.do.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

is_valid_ether_addr.exit:                         ; preds = %if.end48
  %add.ptr.i.i = getelementptr %struct.qtnf_vif, ptr %call8, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %23 to i32
  %or.i.i = or i32 %20, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end55_crit_edge, label %if.end64

is_valid_ether_addr.exit.do.end55_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

do.end55:                                         ; preds = %is_valid_ether_addr.exit.do.end55_crit_edge, %if.end48.do.end55_crit_edge
  %24 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %priv.i, align 4
  %conv58 = zext i8 %25 to i32
  %vifid59 = getelementptr inbounds %struct.qtnf_vif, ptr %call8, i32 0, i32 3
  %26 = ptrtoint ptr %vifid59 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %vifid59, align 4
  %conv60 = zext i8 %27 to i32
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.22, i32 noundef %conv58, i32 noundef %conv60, ptr noundef %mac_addr20) #10
  br label %error_del_vif

if.end64:                                         ; preds = %is_valid_ether_addr.exit
  %call65 = tail call i32 @qtnf_core_net_attach(ptr noundef nonnull %priv.i, ptr noundef nonnull %call8, ptr noundef %name, i8 noundef zeroext %name_assign_t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end77, label %do.end70

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %priv.i, align 4
  %conv73 = zext i8 %29 to i32
  %vifid74 = getelementptr inbounds %struct.qtnf_vif, ptr %call8, i32 0, i32 3
  %30 = ptrtoint ptr %vifid74 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vifid74, align 4
  %conv75 = zext i8 %31 to i32
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.22, i32 noundef %conv73, i32 noundef %conv75) #10
  br label %error_del_vif

if.end77:                                         ; preds = %if.end64
  %bus = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %hw_capab.i = getelementptr inbounds %struct.qtnf_bus, ptr %33, i32 0, i32 7, i32 8
  %call.i = tail call zeroext i1 @qtnf_utils_is_bit_set(ptr noundef %hw_capab.i, i32 noundef 8, i32 noundef 2) #7
  br i1 %call.i, label %if.then79, label %if.end77.if.end86_crit_edge

if.end77.if.end86_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then79:                                        ; preds = %if.end77
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %call8, i32 0, i32 7
  %34 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ifindex, align 4
  %call80 = tail call i32 @qtnf_cmd_netdev_changeupper(ptr noundef nonnull %call8, i32 noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then79.if.end86_crit_edge, label %if.then82

if.then79.if.end86_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then82:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev, align 4
  %ieee80211_ptr.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 82
  %40 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ieee80211_ptr.i, align 16
  tail call void @cfg80211_unregister_wdev(ptr noundef %41) #7
  %42 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %netdev, align 4
  br label %error_del_vif

if.end86:                                         ; preds = %if.then79.if.end86_crit_edge, %if.end77.if.end86_crit_edge
  %netdev87 = getelementptr inbounds %struct.qtnf_vif, ptr %call8, i32 0, i32 7
  %43 = ptrtoint ptr %netdev87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev87, align 4
  %netdev89 = getelementptr inbounds %struct.wireless_dev, ptr %call8, i32 0, i32 3
  %45 = ptrtoint ptr %netdev89 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %netdev89, align 4
  br label %cleanup

error_del_vif:                                    ; preds = %if.then82, %do.end70, %do.end55
  %ret.0 = phi i32 [ %call65, %do.end70 ], [ %call80, %if.then82 ], [ -22, %do.end55 ]
  %call91 = tail call i32 @qtnf_cmd_send_del_intf(ptr noundef nonnull %call8) #7
  br label %err_cmd

err_cmd:                                          ; preds = %error_del_vif, %do.end42
  %ret.1 = phi i32 [ %call37, %do.end42 ], [ %ret.0, %error_del_vif ]
  %46 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %iftype, align 4
  %47 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_cmd, %if.end86, %do.end27, %do.end13, %do.end, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %do.end ], [ inttoptr (i32 -524 to ptr), %do.end27 ], [ %47, %err_cmd ], [ %call8, %if.end86 ], [ inttoptr (i32 -14 to ptr), %do.end13 ], [ inttoptr (i32 -14 to ptr), %wiphy_priv.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_change_virtual_intf(ptr noundef %wiphy, ptr nocapture noundef readonly %dev, i32 noundef %type, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call fastcc i32 @qtnf_validate_iface_combinations(ptr noundef %wiphy, ptr noundef %1, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv = zext i8 %5 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid, align 4
  %conv2 = zext i8 %7 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %conv2, i32 noundef %type) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %params, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %macaddr = getelementptr inbounds %struct.vif_params, ptr %params, i32 0, i32 2
  %use_4addr = getelementptr inbounds %struct.vif_params, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %use_4addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %use_4addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %mac_addr.0 = phi ptr [ %macaddr, %if.then5 ], [ null, %if.end.if.end6_crit_edge ]
  %use4addr.0 = phi i32 [ %9, %if.then5 ], [ 0, %if.end.if.end6_crit_edge ]
  %mac7 = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %mac7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac7, align 4
  tail call void @qtnf_scan_done(ptr noundef %11, i1 noundef zeroext true) #7
  %call8 = tail call i32 @qtnf_cmd_send_change_intf_type(ptr noundef %1, i32 noundef %type, i32 noundef %use4addr.0, ptr noundef %mac_addr.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end21, label %do.end13

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %mac7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac7, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %conv17 = zext i8 %15 to i32
  %vifid18 = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %vifid18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vifid18, align 4
  %conv19 = zext i8 %17 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %type) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %type, ptr %iftype, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end13, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call8, %do.end13 ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_add_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef %mac_addr, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call i32 @qtnf_cmd_send_add_key(ptr noundef %1, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef %mac_addr, ptr noundef %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv = zext i8 %5 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid, align 4
  %conv3 = zext i8 %7 to i32
  %cipher = getelementptr inbounds %struct.key_params, ptr %params, i32 0, i32 5
  %8 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cipher, align 4
  %conv4 = zext i8 %key_index to i32
  %conv6 = zext i1 %pairwise to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %conv3, i32 noundef %9, i32 noundef %conv4, i32 noundef %conv6) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_del_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call i32 @qtnf_cmd_send_del_key(ptr noundef %1, i8 noundef zeroext %key_index, i1 noundef zeroext %pairwise, ptr noundef %mac_addr) #7
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %call1, label %do.end14 [
    i32 0, label %entry.if.end26_crit_edge
    i32 -2, label %do.body
  ]

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_del_key.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_del_key, %if.then9)) #7
          to label %if.end26 [label %if.then9], !srcloc !276

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mac, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  %conv = zext i8 %6 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vifid, align 4
  %conv10 = zext i8 %8 to i32
  %conv11 = zext i8 %key_index to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_del_key.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv11) #7
  br label %if.end26

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mac16 = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %mac16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mac16, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv18 = zext i8 %12 to i32
  %vifid19 = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %vifid19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vifid19, align 4
  %conv20 = zext i8 %14 to i32
  %conv21 = zext i8 %key_index to i32
  %conv23 = zext i1 %pairwise to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.47, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv21, i32 noundef %conv23) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end14, %if.then9, %do.body, %entry.if.end26_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_set_default_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i8 noundef zeroext %key_index, i1 noundef zeroext %unicast, i1 noundef zeroext %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call3 = tail call i32 @qtnf_cmd_send_set_default_key(ptr noundef %1, i8 noundef zeroext %key_index, i1 noundef zeroext %unicast, i1 noundef zeroext %multicast) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv = zext i8 %5 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid, align 4
  %conv5 = zext i8 %7 to i32
  %conv6 = zext i8 %key_index to i32
  %conv8 = zext i1 %unicast to i32
  %conv10 = zext i1 %multicast to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_set_default_mgmt_key(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i8 noundef zeroext %key_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call i32 @qtnf_cmd_send_set_default_mgmt_key(ptr noundef %1, i8 noundef zeroext %key_index) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv = zext i8 %5 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid, align 4
  %conv2 = zext i8 %7 to i32
  %conv3 = zext i8 %key_index to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_start_ap(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %settings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call i32 @qtnf_cmd_send_start_ap(ptr noundef %1, ptr noundef %settings) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv = zext i8 %5 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid, align 4
  %conv2 = zext i8 %7 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %conv, i32 noundef %conv2) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_change_beacon(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %beacon_ies.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %beacon_ies.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %beacon_ies.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %beacon_ies_len.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 12
  %4 = ptrtoint ptr %beacon_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %beacon_ies_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call.i = tail call i32 @qtnf_cmd_send_mgmt_set_appie(ptr noundef %1, i8 noundef zeroext 7, ptr noundef null, i32 noundef 0) #7
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 @qtnf_cmd_send_mgmt_set_appie(ptr noundef %1, i8 noundef zeroext 7, ptr noundef nonnull %3, i32 noundef %5) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call4.i, %if.else.i ], [ %call.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool5.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.qtnf_mgmt_set_appie.exit_crit_edge

if.end.i.qtnf_mgmt_set_appie.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_mgmt_set_appie.exit

if.end7.i:                                        ; preds = %if.end.i
  %proberesp_ies.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %proberesp_ies.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proberesp_ies.i, align 4
  %tobool8.not.i = icmp eq ptr %7, null
  br i1 %tobool8.not.i, label %if.end7.i.if.then11.i_crit_edge, label %lor.lhs.false9.i

if.end7.i.if.then11.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i

lor.lhs.false9.i:                                 ; preds = %if.end7.i
  %proberesp_ies_len.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 13
  %8 = ptrtoint ptr %proberesp_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %proberesp_ies_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not.i = icmp eq i32 %9, 0
  br i1 %tobool10.not.i, label %lor.lhs.false9.i.if.then11.i_crit_edge, label %if.else13.i

lor.lhs.false9.i.if.then11.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false9.i.if.then11.i_crit_edge, %if.end7.i.if.then11.i_crit_edge
  %call12.i = tail call i32 @qtnf_cmd_send_mgmt_set_appie(ptr noundef %1, i8 noundef zeroext 9, ptr noundef null, i32 noundef 0) #7
  br label %if.end17.i

if.else13.i:                                      ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i = tail call i32 @qtnf_cmd_send_mgmt_set_appie(ptr noundef %1, i8 noundef zeroext 9, ptr noundef nonnull %7, i32 noundef %9) #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else13.i, %if.then11.i
  %ret.1.i = phi i32 [ %call16.i, %if.else13.i ], [ %call12.i, %if.then11.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool18.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end17.i.qtnf_mgmt_set_appie.exit_crit_edge

if.end17.i.qtnf_mgmt_set_appie.exit_crit_edge:    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qtnf_mgmt_set_appie.exit

if.end20.i:                                       ; preds = %if.end17.i
  %assocresp_ies.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 4
  %10 = ptrtoint ptr %assocresp_ies.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %assocresp_ies.i, align 4
  %tobool21.not.i = icmp eq ptr %11, null
  br i1 %tobool21.not.i, label %if.end20.i.if.then24.i_crit_edge, label %lor.lhs.false22.i

if.end20.i.if.then24.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

lor.lhs.false22.i:                                ; preds = %if.end20.i
  %assocresp_ies_len.i = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %info, i32 0, i32 14
  %12 = ptrtoint ptr %assocresp_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %assocresp_ies_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool23.not.i = icmp eq i32 %13, 0
  br i1 %tobool23.not.i, label %lor.lhs.false22.i.if.then24.i_crit_edge, label %if.else26.i

lor.lhs.false22.i.if.then24.i_crit_edge:          ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

if.then24.i:                                      ; preds = %lor.lhs.false22.i.if.then24.i_crit_edge, %if.end20.i.if.then24.i_crit_edge
  %call25.i = tail call i32 @qtnf_cmd_send_mgmt_set_appie(ptr noundef %1, i8 noundef zeroext 2, ptr noundef null, i32 noundef 0) #7
  br label %qtnf_mgmt_set_appie.exit

if.else26.i:                                      ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i = tail call i32 @qtnf_cmd_send_mgmt_set_appie(ptr noundef %1, i8 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef %13) #7
  br label %qtnf_mgmt_set_appie.exit

qtnf_mgmt_set_appie.exit:                         ; preds = %if.else26.i, %if.then24.i, %if.end17.i.qtnf_mgmt_set_appie.exit_crit_edge, %if.end.i.qtnf_mgmt_set_appie.exit_crit_edge
  %ret.2.i = phi i32 [ %ret.0.i, %if.end.i.qtnf_mgmt_set_appie.exit_crit_edge ], [ %ret.1.i, %if.end17.i.qtnf_mgmt_set_appie.exit_crit_edge ], [ %call29.i, %if.else26.i ], [ %call25.i, %if.then24.i ]
  ret i32 %ret.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_stop_ap(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 4
  tail call void @qtnf_scan_done(ptr noundef %3, i1 noundef zeroext true) #7
  %call1 = tail call i32 @qtnf_cmd_send_stop_ap(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv = zext i8 %7 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vifid, align 4
  %conv3 = zext i8 %9 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %conv, i32 noundef %conv3) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  tail call void @netif_carrier_off(ptr noundef %11) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_del_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %land.lhs.true1, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 2
  %add.ptr1.i = getelementptr i8, ptr %3, i32 2
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %9, %7
  %add.ptr3.i = getelementptr i8, ptr %3, i32 4
  %10 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %11
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %land.lhs.true1.if.end_crit_edge, label %land.lhs.true4

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %sta_list = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 12
  %call6 = tail call ptr @qtnf_sta_list_lookup(ptr noundef %sta_list, ptr noundef nonnull %3) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call8 = tail call i32 @qtnf_cmd_send_del_sta(ptr noundef %1, ptr noundef %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mac11 = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %mac11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %conv = zext i8 %15 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vifid, align 4
  %conv12 = zext i8 %17 to i32
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %conv, i32 noundef %conv12, ptr noundef %19) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true4.cleanup_crit_edge ], [ %call8, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_change_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %mac, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call i32 @qtnf_cmd_send_change_sta(ptr noundef %1, ptr noundef %mac, ptr noundef %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mac2 = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mac2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv = zext i8 %5 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vifid, align 4
  %conv3 = zext i8 %7 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %conv, i32 noundef %conv3, ptr noundef %mac) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_get_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %mac, ptr noundef %sinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %generation = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %generation, align 4
  %generation1 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 23
  %4 = ptrtoint ptr %generation1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %generation1, align 4
  %call2 = tail call i32 @qtnf_cmd_get_sta_info(ptr noundef %1, ptr noundef %mac, ptr noundef %sinfo) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_dump_station(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, i32 noundef %idx, ptr noundef %mac, ptr noundef %sinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp.not = icmp eq i32 %idx, 0
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %current_bss = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %current_bss to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %current_bss, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %bssid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bssid, align 4
  %9 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mac, align 4
  %add.ptr.i = getelementptr %struct.qtnf_vif, ptr %1, i32 0, i32 1, i32 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %sta_list = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 12
  %call3 = tail call ptr @qtnf_sta_list_lookup_index(ptr noundef %sta_list, i32 noundef %idx) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %sw.bb2.cleanup_crit_edge, label %if.end9, !prof !273

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %mac_addr = getelementptr inbounds %struct.qtnf_sta_node, ptr %call3, i32 0, i32 1
  %10 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mac_addr, align 4
  %12 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mac, align 4
  %add.ptr.i38 = getelementptr %struct.qtnf_sta_node, ptr %call3, i32 0, i32 1, i32 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end9, %if.end
  %add.ptr.i38.sink = phi ptr [ %add.ptr.i38, %if.end9 ], [ %add.ptr.i, %if.end ]
  %13 = ptrtoint ptr %add.ptr.i38.sink to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i38.sink, align 2
  %add.ptr1.i39 = getelementptr i8, ptr %mac, i32 4
  %15 = ptrtoint ptr %add.ptr1.i39 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i39, align 2
  %call11 = tail call i32 @qtnf_cmd_get_sta_info(ptr noundef %1, ptr noundef %mac, ptr noundef %sinfo) #7
  %16 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp14 = icmp eq i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call11)
  %cmp16 = icmp eq i32 %call11, -2
  %or.cond = select i1 %cmp14, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.then17, label %sw.epilog.if.end19_crit_edge

sw.epilog.if.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 4
  tail call void @cfg80211_del_sta_sinfo(ptr noundef %19, ptr noundef %mac, ptr noundef null, i32 noundef 3264) #7
  %20 = ptrtoint ptr %sinfo to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %sinfo, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %sw.epilog.if.end19_crit_edge
  %generation = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %generation, align 4
  %generation20 = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 23
  %23 = ptrtoint ptr %generation20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %generation20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %sw.bb2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end19 ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %sw.bb.cleanup_crit_edge ], [ -2, %sw.bb2.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_scan(ptr noundef %wiphy, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !275
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %scan_timeout = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 7, i32 56, i32 12, i32 11, i32 1, i32 1
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scan_timeout) #7
  %scan_req = getelementptr inbounds %struct.qtnf_wmac, ptr %priv.i, i32 0, i32 6
  %0 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %request, ptr %scan_req, align 4
  %call2 = tail call i32 @qtnf_cmd_send_scan(ptr noundef %priv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body5, label %do.end

do.end:                                           ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %priv.i, align 4
  %conv = zext i8 %2 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %conv) #10
  %3 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %scan_req, align 4
  br label %out

do.body5:                                         ; preds = %wiphy_priv.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_scan.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_scan, %if.then11)) #7
          to label %do.end16 [label %if.then11], !srcloc !276

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv.i, align 4
  %conv13 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_scan.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef %conv13) #7
  br label %do.end16

do.end16:                                         ; preds = %if.then11, %do.body5
  %bus = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %workqueue = getelementptr inbounds %struct.qtnf_bus, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %workqueue, align 128
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %scan_timeout, i32 noundef 1500) #7
  br label %out

out:                                              ; preds = %do.end16, %do.end
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_connect(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %sme) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %auth_type = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 6
  %4 = ptrtoint ptr %auth_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %auth_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp eq i32 %5, 4
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 15
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68) #10
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %bssid = getelementptr inbounds %struct.cfg80211_connect_params, ptr %sme, i32 0, i32 2
  %8 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bssid, align 4
  %tobool5.not = icmp eq ptr %9, null
  %bssid9 = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 1
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = ptrtoint ptr %bssid9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bssid9, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qtnf_vif, ptr %1, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i, align 2
  br label %if.end11

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %16 = call ptr @memset(ptr %bssid9, i32 0, i32 6)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %call12 = tail call i32 @qtnf_cmd_send_connect(ptr noundef %1, ptr noundef %sme) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %do.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 4
  %conv = zext i8 %20 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vifid, align 4
  %conv19 = zext i8 %22 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef %conv, i32 noundef %conv19) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ -95, %entry.cleanup_crit_edge ], [ %call12, %do.end17 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_set_wiphy_params(ptr noundef %wiphy, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !275
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %call1 = tail call ptr @qtnf_mac_get_base_vif(ptr noundef %priv.i) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %wiphy_priv.exit.cleanup.sink.split_crit_edge, label %if.end

wiphy_priv.exit.cleanup.sink.split_crit_edge:     ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %wiphy_priv.exit
  %call3 = tail call i32 @qtnf_cmd_send_update_phy_params(ptr noundef %priv.i, i32 noundef %changed) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %wiphy_priv.exit.cleanup.sink.split_crit_edge
  %.str.74.sink = phi ptr [ @.str.9, %wiphy_priv.exit.cleanup.sink.split_crit_edge ], [ @.str.74, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -14, %wiphy_priv.exit.cleanup.sink.split_crit_edge ], [ %call3, %if.end.cleanup.sink.split_crit_edge ]
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv.i, align 4
  %conv11 = zext i8 %1 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.74.sink, ptr noundef nonnull @.str.72, i32 noundef %conv11) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_set_tx_power(ptr noundef %wiphy, ptr noundef readonly %wdev, i32 noundef %type, i32 noundef %mbm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wdev, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !273

do.body4.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !275
  unreachable

wiphy_priv.exit:                                  ; preds = %if.else
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %call2 = tail call ptr @qtnf_mac_get_base_vif(ptr noundef %priv.i) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %wiphy_priv.exit.cleanup19.sink.split_crit_edge, label %wiphy_priv.exit.if.end6_crit_edge

wiphy_priv.exit.if.end6_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

wiphy_priv.exit.cleanup19.sink.split_crit_edge:   ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup19.sink.split

if.end6:                                          ; preds = %wiphy_priv.exit.if.end6_crit_edge, %if.then
  %vif.0 = phi ptr [ %3, %if.then ], [ %call2, %wiphy_priv.exit.if.end6_crit_edge ]
  %call7 = tail call i32 @qtnf_cmd_set_tx_power(ptr noundef %vif.0, i32 noundef %type, i32 noundef %mbm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup19_crit_edge, label %do.end12

if.end6.cleanup19_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup19

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %mac14 = getelementptr inbounds %struct.qtnf_vif, ptr %vif.0, i32 0, i32 8
  %4 = ptrtoint ptr %mac14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac14, align 4
  br label %cleanup19.sink.split

cleanup19.sink.split:                             ; preds = %do.end12, %wiphy_priv.exit.cleanup19.sink.split_crit_edge
  %.sink26 = phi ptr [ %5, %do.end12 ], [ %priv.i, %wiphy_priv.exit.cleanup19.sink.split_crit_edge ]
  %.str.78.sink = phi ptr [ @.str.78, %do.end12 ], [ @.str.9, %wiphy_priv.exit.cleanup19.sink.split_crit_edge ]
  %retval.1.ph = phi i32 [ %call7, %do.end12 ], [ -14, %wiphy_priv.exit.cleanup19.sink.split_crit_edge ]
  %6 = ptrtoint ptr %.sink26 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %.sink26, align 4
  %conv16 = zext i8 %7 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.78.sink, ptr noundef nonnull @.str.76, i32 noundef %conv16) #10
  br label %cleanup19

cleanup19:                                        ; preds = %cleanup19.sink.split, %if.end6.cleanup19_crit_edge
  %retval.1 = phi i32 [ 0, %if.end6.cleanup19_crit_edge ], [ %retval.1.ph, %cleanup19.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_get_tx_power(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %wdev, ptr noundef %dbm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call i32 @qtnf_cmd_get_tx_power(ptr noundef %3, ptr noundef %dbm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv = zext i8 %7 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, i32 noundef %conv) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_dump_survey(ptr noundef %wiphy, ptr nocapture noundef readonly %dev, i32 noundef %idx, ptr noundef %survey) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !275
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 82
  %0 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211_ptr, align 16
  %chandef1 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 27
  %bands = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 53
  %2 = ptrtoint ptr %bands to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bands, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %wiphy_priv.exit.if.end7_crit_edge, label %land.lhs.true

wiphy_priv.exit.if.end7_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %wiphy_priv.exit
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %idx)
  %cmp.not = icmp sgt i32 %5, %idx
  %sub = sub i32 %idx, %5
  br i1 %cmp.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %wiphy_priv.exit.if.end7_crit_edge
  %idx.addr.0.ph = phi i32 [ %sub, %land.lhs.true.if.end7_crit_edge ], [ %idx, %wiphy_priv.exit.if.end7_crit_edge ]
  %arrayidx6 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end7.lor.lhs.false_crit_edge

if.end7.lor.lhs.false_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge
  %sband.163 = phi ptr [ %7, %if.end7.lor.lhs.false_crit_edge ], [ %3, %land.lhs.true.lor.lhs.false_crit_edge ]
  %idx.addr.05762 = phi i32 [ %idx.addr.0.ph, %if.end7.lor.lhs.false_crit_edge ], [ %idx, %land.lhs.true.lor.lhs.false_crit_edge ]
  %n_channels9 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband.163, i32 0, i32 3
  %8 = ptrtoint ptr %n_channels9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_channels9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.addr.05762, i32 %9)
  %cmp10.not = icmp slt i32 %idx.addr.05762, %9
  br i1 %cmp10.not, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %sband.163 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sband.163, align 4
  %arrayidx13 = getelementptr %struct.ieee80211_channel, ptr %11, i32 %idx.addr.05762
  %12 = ptrtoint ptr %survey to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx13, ptr %survey, align 8
  %filled = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %13 = ptrtoint ptr %filled to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %filled, align 8
  %14 = ptrtoint ptr %chandef1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chandef1, align 4
  %cmp15 = icmp eq ptr %arrayidx13, %15
  %spec.store.select = select i1 %cmp15, i32 2, i32 0
  store i32 %spec.store.select, ptr %filled, align 8
  %center_freq = getelementptr %struct.ieee80211_channel, ptr %11, i32 %idx.addr.05762, i32 1
  %16 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %center_freq, align 4
  %call19 = tail call i32 @qtnf_cmd_get_chan_stats(ptr noundef %priv.i, i32 noundef %17, ptr noundef %survey) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end12.cleanup_crit_edge, label %do.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_dump_survey.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_dump_survey, %if.then26)) #7
          to label %cleanup [label %if.then26], !srcloc !276

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %hw_value = getelementptr %struct.ieee80211_channel, ptr %11, i32 %idx.addr.05762, i32 3
  %18 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_dump_survey.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.82, i32 noundef %conv) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.end7.cleanup_crit_edge ], [ %call19, %if.then26 ], [ 0, %if.end12.cleanup_crit_edge ], [ %call19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_mgmt_tx(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %wdev, ptr nocapture noundef readonly %params, ptr nocapture noundef writeonly %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %buf = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  %call1 = tail call i32 @prandom_u32() #7
  %conv = zext i32 %call1 to i64
  %6 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %cookie, align 8
  %offchan = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %offchan to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %offchan, align 4, !range !277
  %9 = zext i8 %8 to i16
  %no_cck = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 5
  %10 = ptrtoint ptr %no_cck to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %no_cck, align 4, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  %12 = or i16 %9, 2
  %flags.1 = select i1 %tobool4.not, i16 %9, i16 %12
  %dont_wait_for_ack = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 6
  %13 = ptrtoint ptr %dont_wait_for_ack to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dont_wait_for_ack, align 1, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not = icmp eq i8 %14, 0
  %15 = or i16 %flags.1, 4
  %flags.2 = select i1 %tobool10.not, i16 %flags.1, i16 %15
  %16 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %params, align 4
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %entry.do.body_crit_edge, label %if.then17

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %center_freq, align 4
  %conv19 = trunc i32 %19 to i16
  br label %do.body

do.body:                                          ; preds = %if.then17, %entry.do.body_crit_edge
  %freq.0 = phi i16 [ %conv19, %if.then17 ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_mgmt_tx.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_mgmt_tx, %if.then25)) #7
          to label %do.end [label %if.then25], !srcloc !276

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 4
  %conv27 = zext i16 %freq.0 to i32
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %5, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv28 = zext i16 %24 to i32
  %da = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 2
  %len = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %conv30 = zext i16 %flags.2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_mgmt_tx.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, ptr noundef %21, i32 noundef %conv27, i32 noundef %conv28, ptr noundef %da, i32 noundef %26, i32 noundef %call1, i32 noundef %conv30) #7
  br label %do.end

do.end:                                           ; preds = %if.then25, %do.body
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf, align 4
  %len33 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %params, i32 0, i32 4
  %29 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len33, align 4
  %call34 = tail call i32 @qtnf_cmd_send_frame(ptr noundef %3, i32 noundef %call1, i16 noundef zeroext %flags.2, i16 noundef zeroext %freq.0, ptr noundef %28, i32 noundef %30) #7
  ret i32 %call34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_set_power_mgmt(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, i1 noundef zeroext %enabled, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %conv = zext i1 %enabled to i8
  %call1 = tail call i32 @qtnf_cmd_send_pm_set(ptr noundef %1, i8 noundef zeroext %conv, i32 noundef %timeout) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, ptr noundef %dev, i32 noundef %call1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_update_mgmt_frame_registrations(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %wdev, ptr nocapture noundef readonly %upd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %interface_stypes = getelementptr inbounds %struct.mgmt_frame_regs, ptr %upd, i32 0, i32 1
  %4 = ptrtoint ptr %interface_stypes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface_stypes, align 4
  %conv = trunc i32 %5 to i16
  %mgmt_frames_bitmask = getelementptr inbounds %struct.qtnf_vif, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %mgmt_frames_bitmask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mgmt_frames_bitmask, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %conv)
  %cmp = icmp eq i16 %7, %conv
  br i1 %cmp, label %entry.cleanup38_crit_edge, label %for.cond.preheader

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

for.cond.preheader:                               ; preds = %entry
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %3, i32 0, i32 8
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %3, i32 0, i32 3
  %and = and i32 %5, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %and1259 = and i16 %7, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and1259)
  %tobool13.not = icmp eq i16 %and1259, 0
  %cmp16 = xor i1 %tobool13.not, %tobool
  br i1 %cmp16, label %for.cond.preheader.cleanup_crit_edge, label %if.end19

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %for.cond.preheader
  %call25 = tail call i32 @qtnf_cmd_send_register_mgmt(ptr noundef %3, i16 noundef zeroext 0, i1 noundef zeroext %tobool) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end19.cleanup_crit_edge, label %do.end

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv28 = zext i8 %11 to i32
  %12 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vifid, align 4
  %conv29 = zext i8 %13 to i32
  %cond = select i1 %tobool, ptr @.str.92, ptr @.str.93
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef %conv28, i32 noundef %conv29, ptr noundef nonnull %cond, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end19.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %and.1 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.1 = icmp ne i32 %and.1, 0
  %and1259.1 = and i16 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and1259.1)
  %tobool13.not.1 = icmp eq i16 %and1259.1, 0
  %cmp16.1 = xor i1 %tobool13.not.1, %tobool.1
  br i1 %cmp16.1, label %cleanup.cleanup.1_crit_edge, label %if.end19.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.end19.1:                                       ; preds = %cleanup
  %call25.1 = tail call i32 @qtnf_cmd_send_register_mgmt(ptr noundef %3, i16 noundef zeroext 9, i1 noundef zeroext %tobool.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1)
  %tobool26.not.1 = icmp eq i32 %call25.1, 0
  br i1 %tobool26.not.1, label %if.end19.1.cleanup.1_crit_edge, label %do.end.1

if.end19.1.cleanup.1_crit_edge:                   ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

do.end.1:                                         ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4
  %conv28.1 = zext i8 %17 to i32
  %18 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vifid, align 4
  %conv29.1 = zext i8 %19 to i32
  %cond.1 = select i1 %tobool.1, ptr @.str.92, ptr @.str.93
  %call33.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef %conv28.1, i32 noundef %conv29.1, ptr noundef nonnull %cond.1, i32 noundef 9) #10
  br label %cleanup.1

cleanup.1:                                        ; preds = %do.end.1, %if.end19.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %and.2 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.2 = icmp ne i32 %and.2, 0
  %and1259.2 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and1259.2)
  %tobool13.not.2 = icmp eq i16 %and1259.2, 0
  %cmp16.2 = xor i1 %tobool13.not.2, %tobool.2
  br i1 %cmp16.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end19.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2

if.end19.2:                                       ; preds = %cleanup.1
  %call25.2 = tail call i32 @qtnf_cmd_send_register_mgmt(ptr noundef %3, i16 noundef zeroext 4, i1 noundef zeroext %tobool.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.2)
  %tobool26.not.2 = icmp eq i32 %call25.2, 0
  br i1 %tobool26.not.2, label %if.end19.2.cleanup.2_crit_edge, label %do.end.2

if.end19.2.cleanup.2_crit_edge:                   ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2

do.end.2:                                         ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  %conv28.2 = zext i8 %23 to i32
  %24 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vifid, align 4
  %conv29.2 = zext i8 %25 to i32
  %cond.2 = select i1 %tobool.2, ptr @.str.92, ptr @.str.93
  %call33.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef %conv28.2, i32 noundef %conv29.2, ptr noundef nonnull %cond.2, i32 noundef 4) #10
  br label %cleanup.2

cleanup.2:                                        ; preds = %do.end.2, %if.end19.2.cleanup.2_crit_edge, %cleanup.1.cleanup.2_crit_edge
  %and.3 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.3 = icmp ne i32 %and.3, 0
  %and1259.3 = and i16 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and1259.3)
  %tobool13.not.3 = icmp eq i16 %and1259.3, 0
  %cmp16.3 = xor i1 %tobool13.not.3, %tobool.3
  br i1 %cmp16.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end19.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3

if.end19.3:                                       ; preds = %cleanup.2
  %call25.3 = tail call i32 @qtnf_cmd_send_register_mgmt(ptr noundef %3, i16 noundef zeroext 11, i1 noundef zeroext %tobool.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.3)
  %tobool26.not.3 = icmp eq i32 %call25.3, 0
  br i1 %tobool26.not.3, label %if.end19.3.cleanup.3_crit_edge, label %do.end.3

if.end19.3.cleanup.3_crit_edge:                   ; preds = %if.end19.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3

do.end.3:                                         ; preds = %if.end19.3
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mac, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %conv28.3 = zext i8 %29 to i32
  %30 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vifid, align 4
  %conv29.3 = zext i8 %31 to i32
  %cond.3 = select i1 %tobool.3, ptr @.str.92, ptr @.str.93
  %call33.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef %conv28.3, i32 noundef %conv29.3, ptr noundef nonnull %cond.3, i32 noundef 11) #10
  br label %cleanup.3

cleanup.3:                                        ; preds = %do.end.3, %if.end19.3.cleanup.3_crit_edge, %cleanup.2.cleanup.3_crit_edge
  %32 = ptrtoint ptr %mgmt_frames_bitmask to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %mgmt_frames_bitmask, align 4
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup.3, %entry.cleanup38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_get_channel(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %wdev, ptr noundef %chandef) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %call2 = tail call i32 @qtnf_cmd_get_channel(ptr noundef %3, ptr noundef %chandef) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, ptr noundef nonnull %1, i32 noundef %call2) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %chandef) #7
  br i1 %call7, label %if.end6.cleanup_crit_edge, label %do.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %center_freq, align 4
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %8 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %center_freq1, align 4
  %center_freq2 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 3
  %10 = ptrtoint ptr %center_freq2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %center_freq2, align 4
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.95, ptr noundef nonnull %1, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -61, %do.end ], [ 0, %if.end6.cleanup_crit_edge ], [ -61, %do.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_set_mac_acl(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call i32 @qtnf_cmd_set_mac_acl(ptr noundef %1, ptr noundef %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, ptr noundef %dev, i32 noundef %call1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_start_radar_detection(ptr nocapture noundef readonly %wiphy, ptr noundef %ndev, ptr noundef %chandef, i32 noundef %cac_time_ms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 14, i32 3
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.i.not = icmp eq i8 %2, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 4
  %call2 = tail call i32 @qtnf_cmd_start_cac(ptr noundef %4, ptr noundef %chandef, i32 noundef %cac_time_ms) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, ptr noundef %ndev, i32 noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ %call2, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_channel_switch(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_channel_switch.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_channel_switch, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !276

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %5 to i32
  %count = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 9
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %count, align 2
  %conv4 = zext i8 %7 to i32
  %radar_required = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 7
  %8 = ptrtoint ptr %radar_required to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %radar_required, align 4, !range !277
  %10 = zext i8 %9 to i32
  %block_tx = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 8
  %11 = ptrtoint ptr %block_tx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %block_tx, align 1, !range !277
  %13 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_channel_switch.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.103, ptr noundef %dev, i32 noundef %conv, i32 noundef %conv4, i32 noundef %10, i32 noundef %13) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call10 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %params) #7
  br i1 %call10, label %if.end19, label %do.end14

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.103, ptr noundef %dev) #10
  br label %cleanup

if.end19:                                         ; preds = %do.end
  %call20 = tail call i32 @qtnf_cmd_send_chan_switch(ptr noundef %1, ptr noundef %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %do.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %params, align 4
  %hw_value31 = getelementptr inbounds %struct.ieee80211_channel, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %hw_value31 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hw_value31, align 2
  %conv32 = zext i16 %17 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.103, ptr noundef %dev, i32 noundef %conv32) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end19.cleanup_crit_edge, %do.end14
  %retval.0 = phi i32 [ -22, %do.end14 ], [ %call20, %do.end25 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_external_auth(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %auth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bssid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 1
  %bssid1 = getelementptr inbounds %struct.cfg80211_external_auth_params, ptr %auth, i32 0, i32 1
  %4 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bssid, align 4
  %6 = ptrtoint ptr %bssid1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bssid1, align 4
  %xor.i = xor i32 %7, %5
  %add.ptr.i = getelementptr %struct.qtnf_vif, ptr %1, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.cfg80211_external_auth_params, ptr %auth, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %11, %9
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, ptr noundef %bssid1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call7 = tail call i32 @qtnf_cmd_send_external_auth(ptr noundef %1, ptr noundef %auth) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %do.end11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %conv = zext i8 %15 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vifid, align 4
  %conv13 = zext i8 %17 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111, i32 noundef %conv, i32 noundef %conv13) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end11, %if.end.if.end15_crit_edge
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_update_owe_info(ptr nocapture noundef readnone %wiphy, ptr nocapture noundef readonly %dev, ptr noundef %owe_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @qtnf_cmd_send_update_owe(ptr noundef %1, ptr noundef %owe_info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mac = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv = zext i8 %7 to i32
  %vifid = getelementptr inbounds %struct.qtnf_vif, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %vifid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vifid, align 4
  %conv3 = zext i8 %9 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef %conv, i32 noundef %conv3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call1, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qtnf_mac_get_base_vif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_wowlan_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qtnf_validate_iface_combinations(ptr noundef %wiphy, ptr noundef readonly %change_vif, i32 noundef %new_type) unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.iface_combination_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %params) #7
  %0 = getelementptr inbounds i8, ptr %params, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %2 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %params, align 4
  %tobool.not.i = icmp eq ptr %wiphy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wiphy_priv.exit, !prof !273

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !275
  unreachable

wiphy_priv.exit:                                  ; preds = %entry
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 86
  %tobool.not = icmp eq ptr %priv.i, null
  br i1 %tobool.not, label %wiphy_priv.exit.cleanup_crit_edge, label %for.body.preheader

wiphy_priv.exit.cleanup_crit_edge:                ; preds = %wiphy_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %wiphy_priv.exit
  %iftype = getelementptr %struct.wiphy, ptr %wiphy, i32 1, i32 3
  %3 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %for.body.preheader.for.inc_crit_edge, label %if.then2

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then2:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5 = getelementptr %struct.iface_combination_params, ptr %params, i32 0, i32 2, i32 %4
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.preheader.for.inc_crit_edge
  %iftype.1 = getelementptr %struct.wiphy, ptr %wiphy, i32 1, i32 56, i32 39
  %7 = ptrtoint ptr %iftype.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iftype.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.not.1 = icmp eq i32 %8, 0
  br i1 %cmp1.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then2.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then2.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.1 = getelementptr %struct.iface_combination_params, ptr %params, i32 0, i32 2, i32 %8
  %9 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5.1, align 4
  %inc.1 = add i32 %10, 1
  store i32 %inc.1, ptr %arrayidx5.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then2.1, %for.inc.for.inc.1_crit_edge
  %iftype.2 = getelementptr %struct.wiphy, ptr %wiphy, i32 2, i32 56, i32 12, i32 14
  %11 = ptrtoint ptr %iftype.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iftype.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.not.2 = icmp eq i32 %12, 0
  br i1 %cmp1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then2.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then2.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.2 = getelementptr %struct.iface_combination_params, ptr %params, i32 0, i32 2, i32 %12
  %13 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5.2, align 4
  %inc.2 = add i32 %14, 1
  store i32 %inc.2, ptr %arrayidx5.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then2.2, %for.inc.1.for.inc.2_crit_edge
  %iftype.3 = getelementptr %struct.wiphy, ptr %wiphy, i32 3, i32 56, i32 12, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %15 = ptrtoint ptr %iftype.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iftype.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1.not.3 = icmp eq i32 %16, 0
  br i1 %cmp1.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then2.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then2.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.3 = getelementptr %struct.iface_combination_params, ptr %params, i32 0, i32 2, i32 %16
  %17 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx5.3, align 4
  %inc.3 = add i32 %18, 1
  store i32 %inc.3, ptr %arrayidx5.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then2.3, %for.inc.2.for.inc.3_crit_edge
  %iftype.4 = getelementptr %struct.wiphy, ptr %wiphy, i32 4, i32 56, i32 9
  %19 = ptrtoint ptr %iftype.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iftype.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1.not.4 = icmp eq i32 %20, 0
  br i1 %cmp1.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then2.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then2.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.4 = getelementptr %struct.iface_combination_params, ptr %params, i32 0, i32 2, i32 %20
  %21 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx5.4, align 4
  %inc.4 = add i32 %22, 1
  store i32 %inc.4, ptr %arrayidx5.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then2.4, %for.inc.3.for.inc.4_crit_edge
  %iftype.5 = getelementptr %struct.wiphy, ptr %wiphy, i32 5, i32 39
  %23 = ptrtoint ptr %iftype.5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iftype.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1.not.5 = icmp eq i32 %24, 0
  br i1 %cmp1.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then2.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then2.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.5 = getelementptr %struct.iface_combination_params, ptr %params, i32 0, i32 2, i32 %24
  %25 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx5.5, align 4
  %inc.5 = add i32 %26, 1
  store i32 %inc.5, ptr %arrayidx5.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then2.5, %for.inc.4.for.inc.5_crit_edge
  %iftype.6 = getelementptr %struct.wiphy, ptr %wiphy, i32 6
  %27 = ptrtoint ptr %iftype.6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iftype.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1.not.6 = icmp eq i32 %28, 0
  br i1 %cmp1.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then2.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then2.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.6 = getelementptr %struct.iface_combination_params, ptr %params, i32 0, i32 2, i32 %28
  %29 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx5.6, align 4
  %inc.6 = add i32 %30, 1
  store i32 %inc.6, ptr %arrayidx5.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then2.6, %for.inc.5.for.inc.6_crit_edge
  %iftype.7 = getelementptr %struct.wiphy, ptr %wiphy, i32 6, i32 56, i32 25
  %31 = ptrtoint ptr %iftype.7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iftype.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp1.not.7 = icmp eq i32 %32, 0
  br i1 %cmp1.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then2.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then2.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.7 = getelementptr %struct.iface_combination_params, ptr %params, i32 0, i32 2, i32 %32
  %33 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx5.7, align 4
  %inc.7 = add i32 %34, 1
  store i32 %inc.7, ptr %arrayidx5.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then2.7, %for.inc.6.for.inc.7_crit_edge
  %tobool8.not = icmp eq ptr %change_vif, null
  %arrayidx18 = getelementptr %struct.iface_combination_params, ptr %params, i32 0, i32 2, i32 %new_type
  %35 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx18, align 4
  %inc19 = add i32 %36, 1
  store i32 %inc19, ptr %arrayidx18, align 4
  br i1 %tobool8.not, label %for.inc.7.if.end20_crit_edge, label %if.then9

for.inc.7.if.end20_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then9:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  %iftype15 = getelementptr inbounds %struct.wireless_dev, ptr %change_vif, i32 0, i32 1
  %37 = ptrtoint ptr %iftype15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iftype15, align 4
  %arrayidx16 = getelementptr %struct.iface_combination_params, ptr %params, i32 0, i32 2, i32 %38
  %39 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx16, align 4
  %dec = add i32 %40, -1
  store i32 %dec, ptr %arrayidx16, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then9, %for.inc.7.if.end20_crit_edge
  %call21 = call i32 @cfg80211_check_combinations(ptr noundef nonnull %wiphy, ptr noundef nonnull %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = call ptr @qtnf_mac_get_base_vif(ptr noundef nonnull %priv.i) #7
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %land.lhs.true

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end24
  %iftype28 = getelementptr inbounds %struct.wireless_dev, ptr %call25, i32 0, i32 1
  %41 = ptrtoint ptr %iftype28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iftype28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp29 = icmp eq i32 %42, 3
  %cmp31.not = icmp ne ptr %call25, %change_vif
  %or.cond = select i1 %cmp29, i1 %cmp31.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %new_type)
  %cmp33 = icmp eq i32 %new_type, 2
  %or.cond57 = and i1 %cmp33, %or.cond
  br i1 %or.cond57, label %if.then34, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %priv.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %priv.i, align 4
  %conv = zext i8 %44 to i32
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %land.lhs.true.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %wiphy_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %wiphy_priv.exit.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ -22, %if.then34 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %params) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qtnf_mac_get_free_vif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_add_intf(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_core_net_attach(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_netdev_changeupper(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_check_combinations(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_change_intf_type(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_add_key(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_del_key(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_set_default_key(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_set_default_mgmt_key(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_start_ap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_mgmt_set_appie(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_stop_ap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qtnf_sta_list_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_del_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_change_sta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_get_sta_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qtnf_sta_list_lookup_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_del_sta_sinfo(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_connect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_update_phy_params(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_set_tx_power(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_get_tx_power(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_get_chan_stats(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_frame(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_pm_set(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_register_mgmt(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_get_channel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_set_mac_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_start_cac(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_chan_switch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_external_auth(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_update_owe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_reg_notify(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qtnf_slave_radar_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_band_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_cmd_send_disconnect(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !184, !185, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !239, !241, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270, !271}
!llvm.ident = !{!272}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 165, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 186, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @qtnf_del_virtual_intf._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @qtnf_del_virtual_intf._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 1127, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @qtnf_wiphy_register._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @qtnf_wiphy_register._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 1246, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @qtnf_netdev_updown._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @qtnf_netdev_updown._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @qtn_cfg80211_ops, !20, !"qtn_cfg80211_ops", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 999, i32 28}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 946, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @qtnf_suspend._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @qtnf_suspend._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 952, i32 3}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qtnf_suspend.__UNIQUE_ID_ddebug468, !27, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!30 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 961, i32 3}
!33 = !{ptr @qtnf_suspend._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @qtnf_suspend._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 978, i32 3}
!37 = !{ptr @qtnf_resume._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @qtnf_resume._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 984, i32 3}
!41 = !{ptr @qtnf_resume._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @qtnf_resume._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 215, i32 3}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @qtnf_add_virtual_intf._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @qtnf_add_virtual_intf._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 225, i32 4}
!50 = !{ptr @qtnf_add_virtual_intf._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qtnf_add_virtual_intf._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 237, i32 3}
!54 = !{ptr @qtnf_add_virtual_intf._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @qtnf_add_virtual_intf._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 248, i32 3}
!58 = !{ptr @qtnf_add_virtual_intf._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @qtnf_add_virtual_intf._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 254, i32 3}
!62 = !{ptr @qtnf_add_virtual_intf._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @qtnf_add_virtual_intf._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 262, i32 3}
!66 = !{ptr @qtnf_add_virtual_intf._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @qtnf_add_virtual_intf._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 116, i32 3}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @qtnf_validate_iface_combinations._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @qtnf_validate_iface_combinations._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 136, i32 3}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @qtnf_change_virtual_intf._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @qtnf_change_virtual_intf._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 150, i32 3}
!80 = !{ptr @qtnf_change_virtual_intf._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @qtnf_change_virtual_intf._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 542, i32 3}
!84 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @qtnf_add_key._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @qtnf_add_key._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 558, i32 4}
!89 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @qtnf_del_key.__UNIQUE_ID_ddebug464, !88, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!91 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 561, i32 4}
!94 = !{ptr @qtnf_del_key._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @qtnf_del_key._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 578, i32 3}
!98 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @qtnf_set_default_key._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @qtnf_set_default_key._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 594, i32 3}
!103 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @qtnf_set_default_mgmt_key._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @qtnf_set_default_mgmt_key._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 349, i32 3}
!108 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @qtnf_start_ap._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @qtnf_start_ap._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 364, i32 3}
!113 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @qtnf_stop_ap._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @qtnf_stop_ap._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 630, i32 3}
!118 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @qtnf_del_station._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @qtnf_del_station._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 609, i32 3}
!123 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @qtnf_change_station._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @qtnf_change_station._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 648, i32 3}
!128 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @qtnf_scan._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @qtnf_scan._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 653, i32 2}
!133 = !{ptr @qtnf_scan.__UNIQUE_ID_ddebug465, !132, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!134 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 673, i32 3}
!137 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @qtnf_connect._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @qtnf_connect._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 684, i32 3}
!142 = !{ptr @qtnf_connect._entry.69, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @qtnf_connect._entry_ptr.71, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 380, i32 3}
!146 = !{ptr @qtnf_set_wiphy_params._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @qtnf_set_wiphy_params._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 386, i32 3}
!150 = !{ptr @qtnf_set_wiphy_params._entry.73, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @qtnf_set_wiphy_params._entry_ptr.75, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 907, i32 4}
!154 = !{ptr @qtnf_set_tx_power._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @qtnf_set_tx_power._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 915, i32 3}
!158 = !{ptr @qtnf_set_tx_power._entry.77, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @qtnf_set_tx_power._entry_ptr.79, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 889, i32 3}
!162 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @qtnf_get_tx_power._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @qtnf_get_tx_power._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 773, i32 3}
!167 = !{ptr @.str.83, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @qtnf_dump_survey.__UNIQUE_ID_ddebug466, !166, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!169 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 474, i32 2}
!172 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @qtnf_mgmt_tx.__UNIQUE_ID_ddebug463, !171, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!174 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.88, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 876, i32 3}
!177 = !{ptr @.str.89, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @qtnf_set_power_mgmt._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @qtnf_set_power_mgmt._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = distinct !{null, !181, !"updates", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 401, i32 4}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 437, i32 4}
!184 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @qtnf_update_mgmt_frame_registrations._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @qtnf_update_mgmt_frame_registrations._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.93, !183, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 794, i32 3}
!191 = !{ptr @.str.95, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @qtnf_get_channel._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @qtnf_get_channel._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 800, i32 3}
!196 = !{ptr @qtnf_get_channel._entry.96, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @qtnf_get_channel._entry_ptr.98, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 862, i32 3}
!200 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @qtnf_set_mac_acl._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @qtnf_set_mac_acl._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 848, i32 3}
!205 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @qtnf_start_radar_detection._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @qtnf_start_radar_detection._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 818, i32 2}
!210 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @qtnf_channel_switch.__UNIQUE_ID_ddebug467, !209, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!212 = !{ptr @.str.105, !209, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 823, i32 3}
!215 = !{ptr @qtnf_channel_switch._entry, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @qtnf_channel_switch._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 829, i32 3}
!219 = !{ptr @qtnf_channel_switch._entry.107, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @qtnf_channel_switch._entry_ptr.109, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 699, i32 3}
!223 = !{ptr @.str.111, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @qtnf_external_auth._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @qtnf_external_auth._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 703, i32 3}
!228 = !{ptr @qtnf_external_auth._entry.112, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @qtnf_external_auth._entry_ptr.114, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.115, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 931, i32 3}
!232 = !{ptr @.str.116, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @qtnf_update_owe_info._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @qtnf_update_owe_info._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @qtnf_mgmt_stypes, !236, !"qtnf_mgmt_stypes", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 54, i32 1}
!237 = !{ptr @qtnf_cipher_suites, !238, !"qtnf_cipher_suites", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 46, i32 18}
!239 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 1045, i32 2}
!241 = !{ptr @.str.119, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @qtnf_cfg80211_reg_notifier.__UNIQUE_ID_ddebug469, !240, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!243 = !{ptr @.str.120, !240, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.121, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 1051, i32 3}
!246 = !{ptr @qtnf_cfg80211_reg_notifier._entry, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @qtnf_cfg80211_reg_notifier._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 1062, i32 4}
!250 = !{ptr @qtnf_cfg80211_reg_notifier._entry.122, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @qtnf_cfg80211_reg_notifier._entry_ptr.124, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.125, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 719, i32 3}
!254 = !{ptr @qtnf_disconnect._entry, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @qtnf_disconnect._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.127, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 729, i32 3}
!258 = !{ptr @qtnf_disconnect._entry.126, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @qtnf_disconnect._entry_ptr.128, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @qtnf_rates_2g, !261, !"qtnf_rates_2g", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 18, i32 30}
!262 = !{ptr @qtnf_rates_5g, !263, !"qtnf_rates_5g", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/quantenna/qtnfmac/cfg80211.c", i32 34, i32 30}
!264 = !{i32 1, !"wchar_size", i32 2}
!265 = !{i32 1, !"min_enum_size", i32 4}
!266 = !{i32 8, !"branch-target-enforcement", i32 0}
!267 = !{i32 8, !"sign-return-address", i32 0}
!268 = !{i32 8, !"sign-return-address-all", i32 0}
!269 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!270 = !{i32 7, !"uwtable", i32 1}
!271 = !{i32 7, !"frame-pointer", i32 2}
!272 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!273 = !{!"branch_weights", i32 1, i32 2000}
!274 = !{i64 2157003227, i64 2157003715, i64 2157003264, i64 2157003320, i64 2157003354, i64 2157003378, i64 2157003419, i64 2157003440, i64 2157003468, i64 2157003502}
!275 = !{i64 2157001480, i64 2157001968, i64 2157001517, i64 2157001573, i64 2157001607, i64 2157001631, i64 2157001672, i64 2157001693, i64 2157001721, i64 2157001755}
!276 = !{i64 2148722292, i64 2148722297, i64 2148722310, i64 2148722354, i64 2148722388, i64 2148722409}
!277 = !{i8 0, i8 2}
