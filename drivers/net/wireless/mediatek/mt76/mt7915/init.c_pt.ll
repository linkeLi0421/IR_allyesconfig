; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7915/init.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7915/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mt76_testmode_ops = type { ptr, ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.134], ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.133 }
%struct.anon.133 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt7915_phy = type { ptr, ptr, [2 x [13 x %struct.ieee80211_sband_iftype_data]], ptr, ptr, i8, [2 x i32], i32, i64, i16, i16, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.mt76_channel_state, %struct.anon.138 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.127 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_channel_state = type { i64, i64, i64, i64, i64, i8 }
%struct.anon.138 = type { ptr, i32, [4 x i8], [4 x i8], [4 x i8], i8, i8 }
%struct.mt7915_dev = type { %union.anon.139, ptr, ptr, %struct.tasklet_struct, %struct.mt7915_phy, i16, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i8, i8, i8, i8, i8, i8, ptr, %struct.anon.147, [14 x i8] }
%union.anon.139 = type { %struct.mt76_dev }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.144, ptr, %union.anon.145, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.140, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.140 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.142 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.144 = type { ptr, i32 }
%union.anon.145 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.141, i32 }
%union.anon.141 = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.147 = type { i8, i8 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.129 = type { i64, i64, i8 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.mt76_power_limits = type { [4 x i8], [8 x i8], [4 x [10 x i8]], [7 x [12 x i8]] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@mt7915_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&dev->rc_work)\00", [63 x i8] zeroinitializer }, align 32
@mt7915_register_device.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&dev->mphy.mac_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@mt7915_register_device.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&dev->mphy.mac_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@mt7915_register_device.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->sta_poll_lock\00", [44 x i8] zeroinitializer }, align 32
@mt7915_register_device.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->reset_wait\00", [47 x i8] zeroinitializer }, align 32
@mt7915_register_device.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&dev->reset_work)\00", [60 x i8] zeroinitializer }, align 32
@mt7915_testmode_ops = external dso_local constant %struct.mt76_testmode_ops, align 4
@mt76_rates = external dso_local global [12 x %struct.ieee80211_rate], align 4
@__const.mt7915_gen_ppe_thresh.ppet16_ppet8_ru3_ru0 = private unnamed_addr constant [3 x i8] c"\1C\C7q", align 1
@mt7915_init_hardware.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&dev->init_work)\00", [61 x i8] zeroinitializer }, align 32
@mt76_tx_power_nss_delta.nss_delta = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\06\09\0C", [28 x i8] zeroinitializer }, align 32
@mt7915_wfsys_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 530, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wifi subsystem reset failure\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt7915_wfsys_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/mediatek/mt76/mt7915/init.c\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7915_wfsys_reset._entry_ptr = internal global ptr @mt7915_wfsys_reset._entry, section ".printk_index", align 4
@if_comb = internal constant { [1 x %struct.ieee80211_iface_combination], [44 x i8] } { [1 x %struct.ieee80211_iface_combination] [%struct.ieee80211_iface_combination { ptr @if_limits, i32 1, i16 19, i8 3, i8 1, i8 63, i8 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@if_limits = internal constant { [3 x %struct.ieee80211_iface_limit], [20 x i8] } { [3 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 1, i16 2 }, %struct.ieee80211_iface_limit { i16 16, i16 136 }, %struct.ieee80211_iface_limit { i16 19, i16 4 }], [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mt7915_%s\00", [22 x i8] zeroinitializer }, align 32
@mt7915_thermal_ops = internal constant { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @mt7915_thermal_get_max_throttle_state, ptr @mt7915_thermal_get_cur_throttle_state, ptr @mt7915_thermal_set_cur_throttle_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cooling_device\00", [17 x i8] zeroinitializer }, align 32
@mt7915_hwmon_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mt7915_hwmon_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mt7915_hwmon_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mt7915_hwmon_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mt7915_hwmon_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_max, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mt7915_thermal_temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mt7915_thermal_temp_show, ptr @mt7915_thermal_temp_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mt7915_thermal_temp_show, ptr @mt7915_thermal_temp_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@mt7915_ops = external dso_local constant %struct.ieee80211_ops, align 4
@mt7915_register_ext_phy.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&mphy->mac_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@mt7915_register_ext_phy.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&mphy->mac_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 911, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 912, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 916, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 918, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 919, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 546, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"nss_delta\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7915/../mt76.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 1069, i32 18 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 530, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [8 x i8] c"if_comb\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 29, i32 49 }
@___asan_gen_.93 = private unnamed_addr constant [10 x i8] c"if_limits\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 13, i32 43 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 165, i32 49 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"mt7915_thermal_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 141, i32 48 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 171, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"mt7915_hwmon_groups\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"mt7915_hwmon_group\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 94, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"mt7915_hwmon_attrs\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 88, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 84, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 54, i32 23 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 85, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 86, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7915/init.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 455, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @mt7915_wfsys_reset._entry, ptr @mt7915_wfsys_reset._entry_ptr, ptr @mt7915_register_device.__key, ptr @.str, ptr @mt7915_register_device.__key.1, ptr @.str.2, ptr @mt7915_register_device.__key.3, ptr @.str.4, ptr @mt7915_register_device.__key.5, ptr @.str.6, ptr @mt7915_register_device.__key.7, ptr @.str.8, ptr @mt7915_register_device.__key.9, ptr @.str.10, ptr @mt7915_init_hardware.__key, ptr @.str.11, ptr @mt76_tx_power_nss_delta.nss_delta, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @if_comb, ptr @if_limits, ptr @.str.17, ptr @mt7915_thermal_ops, ptr @.str.18, ptr @mt7915_hwmon_groups, ptr @mt7915_hwmon_group, ptr @mt7915_hwmon_attrs, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_max, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @mt7915_register_ext_phy.__key, ptr @.str.23, ptr @mt7915_register_ext_phy.__key.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_register_device.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_register_device.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_register_device.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_register_device.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_register_device.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_init_hardware.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76_tx_power_nss_delta.nss_delta to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_wfsys_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_comb to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_limits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_thermal_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_hwmon_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_hwmon_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_hwmon_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_register_ext_phy.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7915_register_ext_phy.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_set_stream_vht_txbf_caps(ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %has_5ghz = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %has_5ghz to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_5ghz, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false:                                       ; preds = %entry
  %chainmask = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %chainmask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chainmask, align 2
  %conv78 = zext i16 %5 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv78) #9
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 8
  %cap80 = getelementptr inbounds %struct.mt76_phy, ptr %7, i32 0, i32 11, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %cap80 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cap80, align 4
  %or = and i32 %9, -2062337
  %and81 = or i32 %or, 1077248
  store i32 %and81, ptr %cap80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 2
  br i1 %cmp, label %cond.false.cleanup_crit_edge, label %do.end103

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end103:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %sub = shl i32 %call.i, 16
  %shl = add i32 %sub, 458752
  %and105 = and i32 %shl, 458752
  %or106 = or i32 %and105, %and81
  %or107 = or i32 %or106, 526336
  %10 = ptrtoint ptr %cap80 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or107, ptr %cap80, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end103, %cond.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_set_stream_he_caps(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %cap = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cap, align 8, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iftype = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 2
  %call = tail call fastcc i32 @mt7915_init_he_caps(ptr noundef %phy, i32 noundef 0, ptr noundef %iftype)
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 8
  %iftype_data = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 10, i32 0, i32 10
  %6 = ptrtoint ptr %iftype_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %iftype, ptr %iftype_data, align 4
  %conv = trunc i32 %call to i16
  %n_iftype_data = getelementptr inbounds %struct.mt76_phy, ptr %5, i32 0, i32 10, i32 0, i32 9
  %7 = ptrtoint ptr %n_iftype_data to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %n_iftype_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 8
  %has_5ghz = getelementptr inbounds %struct.mt76_phy, ptr %9, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %has_5ghz to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_5ghz, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.end.if.end15_crit_edge, label %if.then5

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx7 = getelementptr %struct.mt7915_phy, ptr %phy, i32 0, i32 2, i32 1
  %call9 = tail call fastcc i32 @mt7915_init_he_caps(ptr noundef %phy, i32 noundef 1, ptr noundef %arrayidx7)
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 8
  %iftype_data12 = getelementptr inbounds %struct.mt76_phy, ptr %13, i32 0, i32 11, i32 0, i32 10
  %14 = ptrtoint ptr %iftype_data12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx7, ptr %iftype_data12, align 4
  %conv13 = trunc i32 %call9 to i16
  %n_iftype_data14 = getelementptr inbounds %struct.mt76_phy, ptr %13, i32 0, i32 11, i32 0, i32 9
  %15 = ptrtoint ptr %n_iftype_data14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv13, ptr %n_iftype_data14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then5, %if.end.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7915_init_he_caps(ptr nocapture noundef readonly %phy, i32 noundef %band, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %chainmask = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %chainmask to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chainmask, align 2
  %conv75 = zext i16 %3 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv75) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp77 = icmp sgt i32 %call.i, 0
  %.pn325 = select i1 %cmp77, i16 2, i16 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp86.inv = icmp slt i32 %call.i, 2
  %.pn = select i1 %cmp86.inv, i16 3, i16 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp77.1 = icmp sgt i32 %call.i, 1
  %.pn325.1 = select i1 %cmp77.1, i16 8, i16 12
  %mcs_map.1.1 = or i16 %.pn325, %.pn325.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp86.1 = icmp sgt i32 %call.i, 3
  %.pn.1 = select i1 %cmp86.1, i16 8, i16 12
  %mcs_map_160.1.1 = or i16 %.pn, %.pn.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp77.2 = icmp sgt i32 %call.i, 2
  %.pn325.2 = select i1 %cmp77.2, i16 32, i16 48
  %mcs_map.1.2 = or i16 %mcs_map.1.1, %.pn325.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i)
  %cmp86.2 = icmp sgt i32 %call.i, 5
  %.pn.2 = select i1 %cmp86.2, i16 32, i16 48
  %mcs_map_160.1.2 = or i16 %mcs_map_160.1.1, %.pn.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp77.3 = icmp sgt i32 %call.i, 3
  %.pn325.3 = select i1 %cmp77.3, i16 128, i16 192
  %mcs_map.1.3 = or i16 %mcs_map.1.2, %.pn325.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i)
  %cmp86.3 = icmp sgt i32 %call.i, 7
  %.pn.3 = select i1 %cmp86.3, i16 128, i16 192
  %mcs_map_160.1.3 = or i16 %mcs_map_160.1.2, %.pn.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp77.4 = icmp sgt i32 %call.i, 4
  %.pn325.4 = select i1 %cmp77.4, i16 512, i16 768
  %mcs_map.1.4 = or i16 %mcs_map.1.3, %.pn325.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call.i)
  %cmp86.4 = icmp sgt i32 %call.i, 9
  %.pn.4 = select i1 %cmp86.4, i16 512, i16 768
  %mcs_map_160.1.4 = or i16 %mcs_map_160.1.3, %.pn.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i)
  %cmp77.5 = icmp sgt i32 %call.i, 5
  %.pn325.5 = select i1 %cmp77.5, i16 2048, i16 3072
  %mcs_map.1.5 = or i16 %mcs_map.1.4, %.pn325.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call.i)
  %cmp86.5 = icmp sgt i32 %call.i, 11
  %.pn.5 = select i1 %cmp86.5, i16 2048, i16 3072
  %mcs_map_160.1.5 = or i16 %mcs_map_160.1.4, %.pn.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %cmp77.6 = icmp sgt i32 %call.i, 6
  %.pn325.6 = select i1 %cmp77.6, i16 8192, i16 12288
  %mcs_map.1.6 = or i16 %mcs_map.1.5, %.pn325.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call.i)
  %cmp86.6 = icmp sgt i32 %call.i, 13
  %.pn.6 = select i1 %cmp86.6, i16 8192, i16 12288
  %mcs_map_160.1.6 = or i16 %mcs_map_160.1.5, %.pn.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i)
  %cmp77.7 = icmp sgt i32 %call.i, 7
  %.pn325.7 = select i1 %cmp77.7, i16 -32768, i16 -16384
  %mcs_map.1.7 = or i16 %mcs_map.1.6, %.pn325.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i)
  %cmp86.7 = icmp sgt i32 %call.i, 15
  %.pn.7 = select i1 %cmp86.7, i16 -32768, i16 -16384
  %mcs_map_160.1.7 = or i16 %mcs_map_160.1.6, %.pn.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %cmp115 = icmp eq i32 %band, 0
  %4 = tail call i16 @llvm.bswap.i16(i16 %mcs_map.1.7)
  %5 = tail call i16 @llvm.bswap.i16(i16 %mcs_map_160.1.7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp49.i = icmp slt i32 %call.i, 2
  %sub.i = add i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp53.i = icmp ult i32 %sub.i, 2
  %..i = select i1 %cmp53.i, i8 8, i8 16
  %6 = trunc i32 %sub.i to i8
  %7 = and i8 %6, 7
  %conv41.i = or i8 %7, 56
  %conv106.i = mul i32 %call.i, 18
  %conv107.i = and i32 %conv106.i, 254
  %sub109.i = add nuw nsw i32 %conv107.i, 7
  %div156.i = lshr i32 %sub109.i, 3
  %sub113.i = add nsw i32 %div156.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv107.i)
  %cmp159.i = icmp ugt i32 %conv107.i, 8
  %8 = trunc i32 %conv107.i to i16
  %rem126.i.lhs.trunc = add nsw i16 %8, -1
  %rem126.i343 = srem i16 %rem126.i.lhs.trunc, 8
  %narrow351 = sub nsw i16 8, %rem126.i343
  %sub127.i352 = zext i16 %narrow351 to i32
  %shr.i = lshr i32 255, %sub127.i352
  %9 = trunc i32 %shr.i to i8
  %spec.select = select i1 %cmp115, i8 2, i8 28
  %. = select i1 %cmp115, i8 32, i8 64
  br label %for.body104

for.body104:                                      ; preds = %cleanup.for.body104_crit_edge, %entry
  %idx.0340 = phi i32 [ 0, %entry ], [ %idx.1, %cleanup.for.body104_crit_edge ]
  %i.1337 = phi i32 [ 0, %entry ], [ %inc244, %cleanup.for.body104_crit_edge ]
  %he_cap_elem106 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1
  %he_mcs_nss_supp = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 2
  %10 = zext i32 %i.1337 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.1337, label %for.body104.cleanup_crit_edge [
    i32 2, label %for.body104.sw.epilog_crit_edge
    i32 3, label %for.body104.sw.epilog_crit_edge353
    i32 7, label %for.body104.sw.epilog_crit_edge354
  ]

for.body104.sw.epilog_crit_edge354:               ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body104.sw.epilog_crit_edge353:               ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body104.sw.epilog_crit_edge:                  ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body104.cleanup_crit_edge:                    ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %for.body104.sw.epilog_crit_edge, %for.body104.sw.epilog_crit_edge353, %for.body104.sw.epilog_crit_edge354
  %he_cap105 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1
  %arrayidx = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340
  %shl107 = shl nuw nsw i32 1, %i.1337
  %conv108 = trunc i32 %shl107 to i16
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv108, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %he_cap105 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %he_cap105, align 1
  %13 = ptrtoint ptr %he_cap_elem106 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %he_cap_elem106, align 1
  %arrayidx112 = getelementptr [6 x i8], ptr %he_cap_elem106, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 26, ptr %arrayidx112, align 1
  %arrayidx114 = getelementptr [6 x i8], ptr %he_cap_elem106, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %arrayidx114, align 1
  %16 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select, ptr %16, align 1
  %arrayidx128 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %arrayidx128, align 1
  %arrayidx130 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 12, ptr %arrayidx130, align 1
  %20 = zext i32 %i.1337 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %i.1337, label %sw.epilog.sw.epilog222_crit_edge [
    i32 3, label %sw.bb131
    i32 2, label %sw.bb167
  ]

sw.epilog.sw.epilog222_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog222

sw.bb131:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %he_cap_elem106 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %he_cap_elem106, align 1
  %23 = or i8 %22, 4
  store i8 %23, ptr %he_cap_elem106, align 1
  %arrayidx138 = getelementptr [6 x i8], ptr %he_cap_elem106, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx138, align 1
  %26 = or i8 %25, 8
  store i8 %26, ptr %arrayidx138, align 1
  %27 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx114, align 1
  %29 = or i8 %28, 4
  store i8 %29, ptr %arrayidx114, align 1
  %arrayidx148 = getelementptr [6 x i8], ptr %he_cap_elem106, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx148, align 1
  %32 = or i8 %31, 16
  store i8 %32, ptr %arrayidx148, align 1
  %arrayidx153 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 3
  %33 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx153, align 1
  %35 = or i8 %34, 18
  store i8 %35, ptr %arrayidx153, align 1
  %arrayidx158 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 6
  br label %sw.epilog222.sink.split

sw.bb167:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx169 = getelementptr [6 x i8], ptr %he_cap_elem106, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx169, align 1
  %38 = or i8 %37, 8
  store i8 %38, ptr %arrayidx169, align 1
  %39 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %16, align 1
  %41 = or i8 %40, %.
  store i8 %41, ptr %16, align 1
  %42 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 112, ptr %arrayidx128, align 1
  %arrayidx198 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 3
  %43 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx198, align 1
  %45 = or i8 %44, 18
  store i8 %45, ptr %arrayidx198, align 1
  %arrayidx203 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 6
  %46 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx203, align 1
  %48 = or i8 %47, -80
  store i8 %48, ptr %arrayidx203, align 1
  %arrayidx208 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 7
  %49 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx208, align 1
  %51 = or i8 %50, 6
  store i8 %51, ptr %arrayidx208, align 1
  %arrayidx213 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 8
  br label %sw.epilog222.sink.split

sw.epilog222.sink.split:                          ; preds = %sw.bb167, %sw.bb131
  %arrayidx158.sink350 = phi ptr [ %arrayidx158, %sw.bb131 ], [ %arrayidx213, %sw.bb167 ]
  %.sink349 = phi i8 [ -96, %sw.bb131 ], [ 78, %sw.bb167 ]
  %.sink346 = phi i8 [ 12, %sw.bb131 ], [ 63, %sw.bb167 ]
  %52 = ptrtoint ptr %arrayidx158.sink350 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx158.sink350, align 1
  %54 = or i8 %53, %.sink349
  store i8 %54, ptr %arrayidx158.sink350, align 1
  %arrayidx163 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 9
  %55 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx163, align 1
  %57 = or i8 %56, %.sink346
  store i8 %57, ptr %arrayidx163, align 1
  br label %sw.epilog222

sw.epilog222:                                     ; preds = %sw.epilog222.sink.split, %sw.epilog.sw.epilog222_crit_edge
  %58 = ptrtoint ptr %he_mcs_nss_supp to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %4, ptr %he_mcs_nss_supp, align 1
  %tx_mcs_80 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 2, i32 1
  %59 = ptrtoint ptr %tx_mcs_80 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %4, ptr %tx_mcs_80, align 1
  %rx_mcs_160 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 2, i32 2
  %60 = ptrtoint ptr %rx_mcs_160 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %5, ptr %rx_mcs_160, align 1
  %tx_mcs_160 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 2, i32 3
  %61 = ptrtoint ptr %tx_mcs_160 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %5, ptr %tx_mcs_160, align 1
  %rx_mcs_80p80 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 2, i32 4
  %62 = ptrtoint ptr %rx_mcs_80p80 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %5, ptr %rx_mcs_80p80, align 1
  %tx_mcs_80p80 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 2, i32 5
  %63 = ptrtoint ptr %tx_mcs_80p80 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %5, ptr %tx_mcs_80p80, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.1337)
  %cmp.i = icmp eq i32 %i.1337, 7
  br i1 %cmp.i, label %sw.epilog222.mt7915_set_stream_he_txbf_caps.exit_crit_edge, label %if.end.i

sw.epilog222.mt7915_set_stream_he_txbf_caps.exit_crit_edge: ; preds = %sw.epilog222
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_set_stream_he_txbf_caps.exit

if.end.i:                                         ; preds = %sw.epilog222
  %arrayidx.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 3
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i, align 1
  %66 = and i8 %65, 127
  store i8 %66, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 4
  %67 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx3.i, align 1
  %69 = and i8 %68, -112
  %arrayidx9.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 5
  %70 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx9.i, align 1
  %72 = and i8 %71, -64
  store i8 %72, ptr %arrayidx9.i, align 1
  %arrayidx16.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 6
  %73 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx16.i, align 1
  %75 = and i8 %74, -16
  %arrayidx21.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 7
  %76 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx21.i, align 1
  %78 = and i8 %77, -57
  store i8 %78, ptr %arrayidx21.i, align 1
  %79 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx130, align 1
  %81 = or i8 %80, -62
  store i8 %81, ptr %arrayidx130, align 1
  %82 = or i8 %69, 109
  store i8 %82, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1337)
  %cmp36.i = icmp eq i32 %i.1337, 2
  %spec.select.i = select i1 %cmp36.i, i8 67, i8 3
  %or47.i = or i8 %75, %spec.select.i
  %83 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %or47.i, ptr %arrayidx16.i, align 1
  br i1 %cmp49.i, label %if.end.i.mt7915_set_stream_he_txbf_caps.exit_crit_edge, label %if.end52.i

if.end.i.mt7915_set_stream_he_txbf_caps.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_set_stream_he_txbf_caps.exit

if.end52.i:                                       ; preds = %if.end.i
  %or58.i = or i8 %78, %..i
  %84 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %or58.i, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1337)
  %cmp60.not.i = icmp eq i32 %i.1337, 3
  br i1 %cmp60.not.i, label %if.end63.i, label %if.end52.i.mt7915_set_stream_he_txbf_caps.exit_crit_edge

if.end52.i.mt7915_set_stream_he_txbf_caps.exit_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_set_stream_he_txbf_caps.exit

if.end63.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = or i8 %65, -128
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx.i, align 1
  %87 = or i8 %68, 111
  %88 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx3.i, align 1
  %89 = or i8 %72, %6
  %conv82.i = or i8 %89, 8
  %90 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv82.i, ptr %arrayidx9.i, align 1
  %91 = or i8 %or47.i, 12
  %92 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx16.i, align 1
  br label %mt7915_set_stream_he_txbf_caps.exit

mt7915_set_stream_he_txbf_caps.exit:              ; preds = %if.end63.i, %if.end52.i.mt7915_set_stream_he_txbf_caps.exit_crit_edge, %if.end.i.mt7915_set_stream_he_txbf_caps.exit_crit_edge, %sw.epilog222.mt7915_set_stream_he_txbf_caps.exit_crit_edge
  %ppe_thres = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 3
  %93 = call ptr @memset(ptr %ppe_thres, i32 0, i32 25)
  %arrayidx224 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 6
  %94 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx224, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %95)
  %tobool227.not = icmp sgt i8 %95, -1
  br i1 %tobool227.not, label %if.else231, label %do.end36.i

do.end36.i:                                       ; preds = %mt7915_set_stream_he_txbf_caps.exit
  %96 = ptrtoint ptr %ppe_thres to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv41.i, ptr %ppe_thres, align 1
  br i1 %cmp159.i, label %do.end36.i.for.body.i_crit_edge, label %do.end36.i.mt7915_gen_ppe_thresh.exit_crit_edge

do.end36.i.mt7915_gen_ppe_thresh.exit_crit_edge:  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_gen_ppe_thresh.exit

do.end36.i.for.body.i_crit_edge:                  ; preds = %do.end36.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end36.i.for.body.i_crit_edge
  %conv111161.i = phi i32 [ %conv111.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end36.i.for.body.i_crit_edge ]
  %i.0160.i = phi i8 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end36.i.for.body.i_crit_edge ]
  %rem157.i = urem i8 %i.0160.i, 3
  %rem.zext.i = zext i8 %rem157.i to i32
  %arrayidx116.i = getelementptr [3 x i8], ptr @__const.mt7915_gen_ppe_thresh.ppet16_ppet8_ru3_ru0, i32 0, i32 %rem.zext.i
  %97 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx116.i, align 1
  %add118.i = add nuw nsw i32 %conv111161.i, 1
  %arrayidx119.i = getelementptr i8, ptr %ppe_thres, i32 %add118.i
  %99 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx119.i, align 1
  %inc.i = add i8 %i.0160.i, 1
  %conv111.i = zext i8 %inc.i to i32
  %cmp.i332 = icmp sgt i32 %sub113.i, %conv111.i
  br i1 %cmp.i332, label %for.body.i.for.body.i_crit_edge, label %for.end.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo.i = urem i8 %inc.i, 3
  %phi.cast.i = zext i8 %phi.bo.i to i32
  %phi.bo164.i = add nuw nsw i32 %conv111.i, 1
  br label %mt7915_gen_ppe_thresh.exit

mt7915_gen_ppe_thresh.exit:                       ; preds = %for.end.loopexit.i, %do.end36.i.mt7915_gen_ppe_thresh.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %do.end36.i.mt7915_gen_ppe_thresh.exit_crit_edge ], [ %phi.cast.i, %for.end.loopexit.i ]
  %conv111.lcssa.i = phi i32 [ 1, %do.end36.i.mt7915_gen_ppe_thresh.exit_crit_edge ], [ %phi.bo164.i, %for.end.loopexit.i ]
  %arrayidx122.i = getelementptr [3 x i8], ptr @__const.mt7915_gen_ppe_thresh.ppet16_ppet8_ru3_ru0, i32 0, i32 %i.0.lcssa.i
  %100 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx122.i, align 1
  %conv129.i = and i8 %101, %9
  %arrayidx132.i = getelementptr i8, ptr %ppe_thres, i32 %conv111.lcssa.i
  %102 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv129.i, ptr %arrayidx132.i, align 1
  br label %if.end239

if.else231:                                       ; preds = %mt7915_set_stream_he_txbf_caps.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx235 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %data, i32 %idx.0340, i32 1, i32 1, i32 1, i32 9
  %103 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx235, align 1
  %105 = or i8 %104, -128
  store i8 %105, ptr %arrayidx235, align 1
  br label %if.end239

if.end239:                                        ; preds = %if.else231, %mt7915_gen_ppe_thresh.exit
  %inc240 = add i32 %idx.0340, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end239, %for.body104.cleanup_crit_edge
  %idx.1 = phi i32 [ %inc240, %if.end239 ], [ %idx.0340, %for.body104.cleanup_crit_edge ]
  %inc244 = add nuw nsw i32 %i.1337, 1
  %exitcond.not = icmp eq i32 %inc244, 13
  br i1 %exitcond.not, label %for.end245, label %cleanup.for.body104_crit_edge

cleanup.for.body104_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body104

for.end245:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 %idx.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_register_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %phy = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 4
  %dev2 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %phy, align 32
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %phy, ptr %priv, align 8
  %rc_work = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 8
  tail call void @__init_work(ptr noundef %rc_work, i32 noundef 0) #9
  %5 = ptrtoint ptr %rc_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %rc_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mt7915_register_device.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry10 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 8, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mt7915_mac_sta_rc_work, ptr %func, align 4
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18
  tail call void @__init_work(ptr noundef %mac_work, i32 noundef 0) #9
  %9 = ptrtoint ptr %mac_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %mac_work, align 16
  %lockdep_map21 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map21, ptr noundef nonnull @.str.2, ptr noundef nonnull @mt7915_register_device.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry24 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 0, i32 1
  %10 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry24, ptr %entry24, align 4
  %prev.i134 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i134 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry24, ptr %prev.i134, align 4
  %func27 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 0, i32 2
  %12 = ptrtoint ptr %func27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mt7915_mac_work, ptr %func27, align 4
  %timer = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @mt7915_register_device.__key.3) #9
  %sta_rc_list = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 12
  %13 = ptrtoint ptr %sta_rc_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %sta_rc_list, ptr %sta_rc_list, align 4
  %prev.i135 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %prev.i135 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sta_rc_list, ptr %prev.i135, align 4
  %sta_poll_list = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 13
  %15 = ptrtoint ptr %sta_poll_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %sta_poll_list, ptr %sta_poll_list, align 4
  %prev.i136 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %prev.i136 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sta_poll_list, ptr %prev.i136, align 4
  %twt_list = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 14
  %17 = ptrtoint ptr %twt_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %twt_list, ptr %twt_list, align 4
  %prev.i137 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %prev.i137 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %twt_list, ptr %prev.i137, align 4
  %sta_poll_lock = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %sta_poll_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mt7915_register_device.__key.5, i16 noundef signext 3) #9
  %reset_wait = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %reset_wait, ptr noundef nonnull @.str.8, ptr noundef nonnull @mt7915_register_device.__key.7) #9
  %reset_work = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 9
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #9
  %19 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %reset_work, align 8
  %lockdep_map48 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map48, ptr noundef nonnull @.str.10, ptr noundef nonnull @mt7915_register_device.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry50 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %entry50 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry50, ptr %entry50, align 4
  %prev.i138 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 9, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i138 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry50, ptr %prev.i138, align 4
  %func52 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %func52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mt7915_mac_reset_work, ptr %func52, align 4
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wr.i, align 4
  tail call void %26(ptr noundef %dev, i32 noundef 880656, i32 noundef -1) #9
  %init_work.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 7
  tail call void @__init_work(ptr noundef %init_work.i, i32 noundef 0) #9
  %27 = ptrtoint ptr %init_work.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %init_work.i, align 32
  %lockdep_map.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @mt7915_init_hardware.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry4.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 7, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 7, i32 2
  %30 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mt7915_init_work, ptr %func.i, align 4
  %31 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call.i = tail call i32 %34(ptr noundef %dev, i32 noundef 1879113760) #9
  %dbdc_support.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 17
  %35 = trunc i32 %call.i to i8
  %36 = lshr i8 %35, 5
  %37 = and i8 %36, 1
  %38 = ptrtoint ptr %dbdc_support.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %dbdc_support.i, align 4
  %39 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call25.i = tail call i32 %42(ptr noundef %dev, i32 noundef 403046640) #9
  %and26.i = and i32 %call25.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %cmp.not.i = icmp eq i32 %and26.i, 0
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mt7915_wfsys_reset(ptr noundef %dev) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %call27.i = tail call i32 @mt7915_dma_init(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30.i:                                       ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 4
  %wr32.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr32.i, align 4
  tail call void %46(ptr noundef %dev, i32 noundef 4321852, i32 noundef 0) #9
  %call33.i = tail call i32 @mt7915_mcu_init(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end30.i.if.end40.i_crit_edge, label %if.then35.i

if.end30.i.if.end40.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then35.i:                                      ; preds = %if.end30.i
  tail call fastcc void @mt7915_wfsys_reset(ptr noundef %dev) #9
  %call36.i = tail call i32 @mt7915_mcu_init(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then35.i.if.end40.i_crit_edge, label %if.then35.i.cleanup_crit_edge

if.then35.i.cleanup_crit_edge:                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35.i.if.end40.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then35.i.if.end40.i_crit_edge, %if.end30.i.if.end40.i_crit_edge
  %call41.i = tail call i32 @mt7915_eeprom_init(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %if.end40.i.cleanup_crit_edge, label %if.end44.i

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44.i:                                       ; preds = %if.end40.i
  %flash_mode.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 18
  %47 = ptrtoint ptr %flash_mode.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flash_mode.i, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool45.not.i = icmp eq i8 %48, 0
  br i1 %tobool45.not.i, label %if.end44.i.if.end51.i_crit_edge, label %if.then46.i

if.end44.i.if.end51.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.end44.i
  %call47.i = tail call i32 @mt7915_mcu_apply_group_cal(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.then46.i.if.end51.i_crit_edge, label %if.then46.i.cleanup_crit_edge

if.then46.i.cleanup_crit_edge:                    ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then46.i.if.end51.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i.if.end51.i_crit_edge, %if.end44.i.if.end51.i_crit_edge
  %wcid_mask.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 33
  %call52.i = tail call i32 @mt76_wcid_alloc(ptr noundef %wcid_mask.i, i32 noundef 268) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end, label %if.end51.i.cleanup_crit_edge

if.end51.i.cleanup_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end51.i
  %global_wcid.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36
  %idx56.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36, i32 6
  %49 = ptrtoint ptr %idx56.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %idx56.i, align 2
  %hw_key_idx.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36, i32 7
  %50 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %hw_key_idx.i, align 4
  %tx_info.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36, i32 13
  %51 = ptrtoint ptr %tx_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_info.i, align 8
  %or.i = or i32 %52, -2147483648
  store i32 %or.i, ptr %tx_info.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  %wcid86.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 37
  %53 = ptrtoint ptr %wcid86.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %global_wcid.i, ptr %wcid86.i, align 4
  tail call fastcc void @mt7915_init_wiphy(ptr noundef %1)
  %54 = ptrtoint ptr %dbdc_support.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dbdc_support.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool56.not = icmp eq i8 %55, 0
  br i1 %tobool56.not, label %if.then57, label %if.end.if.end58_crit_edge

if.end.if.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then57:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cap = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11, i32 0, i32 6, i32 1
  %56 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cap, align 4
  %or = or i32 %57, 72
  store i32 %or, ptr %cap, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end.if.end58_crit_edge
  %chainmask = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 16
  %58 = ptrtoint ptr %chainmask to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %chainmask, align 2
  %conv = zext i16 %59 to i32
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 128
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wiphy, align 8
  %available_antennas_rx = getelementptr inbounds %struct.wiphy, ptr %63, i32 0, i32 45
  %64 = ptrtoint ptr %available_antennas_rx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv, ptr %available_antennas_rx, align 16
  %65 = load i16, ptr %chainmask, align 2
  %conv61 = zext i16 %65 to i32
  %66 = load ptr, ptr %dev, align 128
  %wiphy63 = getelementptr inbounds %struct.ieee80211_hw, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %wiphy63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wiphy63, align 8
  %available_antennas_tx = getelementptr inbounds %struct.wiphy, ptr %68, i32 0, i32 44
  %69 = ptrtoint ptr %available_antennas_tx to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv61, ptr %available_antennas_tx, align 4
  %dfs_state = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 4, i32 13
  %70 = ptrtoint ptr %dfs_state to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %dfs_state, align 8
  %test_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 56
  %71 = ptrtoint ptr %test_ops to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @mt7915_testmode_ops, ptr %test_ops, align 4
  %brightness_set = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 50, i32 5
  %72 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @mt7915_led_set_brightness, ptr %brightness_set, align 4
  %blink_set = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 50, i32 8
  %73 = ptrtoint ptr %blink_set to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @mt7915_led_set_blink, ptr %blink_set, align 4
  %call66 = tail call i32 @mt76_register_device(ptr noundef %dev, i1 noundef zeroext true, ptr noundef nonnull @mt76_rates, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end69:                                         ; preds = %if.end58
  %call71 = tail call fastcc i32 @mt7915_thermal_init(ptr noundef %phy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end74:                                         ; preds = %if.end69
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 128
  tail call void @ieee80211_queue_work(ptr noundef %75, ptr noundef %init_work.i) #9
  %phy2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 1
  %76 = ptrtoint ptr %phy2.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %phy2.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i, label %if.end74.mt7915_ext_phy.exit.i_crit_edge, label %if.end.i.i

if.end74.mt7915_ext_phy.exit.i_crit_edge:         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_ext_phy.exit.i

if.end.i.i:                                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i.i = getelementptr inbounds %struct.mt76_phy, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv.i.i, align 8
  %phi.cmp.i = icmp eq ptr %79, null
  br label %mt7915_ext_phy.exit.i

mt7915_ext_phy.exit.i:                            ; preds = %if.end.i.i, %if.end74.mt7915_ext_phy.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %phi.cmp.i, %if.end.i.i ], [ true, %if.end74.mt7915_ext_phy.exit.i_crit_edge ]
  %80 = ptrtoint ptr %dbdc_support.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %dbdc_support.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i = icmp ne i8 %81, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %retval.0.i.i, i1 false
  br i1 %or.cond.i, label %if.end3.i, label %mt7915_ext_phy.exit.i.if.end79_crit_edge

mt7915_ext_phy.exit.i.if.end79_crit_edge:         ; preds = %mt7915_ext_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.end3.i:                                        ; preds = %mt7915_ext_phy.exit.i
  %call4.i = tail call ptr @mt76_alloc_phy(ptr noundef %dev, i32 noundef 2104, ptr noundef nonnull @mt7915_ops) #9
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end3.i.cleanup_crit_edge, label %if.end7.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end3.i
  %priv.i = getelementptr inbounds %struct.mt76_phy, ptr %call4.i, i32 0, i32 2
  %82 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %priv.i, align 8
  %dev8.i = getelementptr inbounds %struct.mt7915_phy, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %dev8.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %dev, ptr %dev8.i, align 4
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call4.i, ptr %83, align 8
  %chainmask.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 5
  %86 = ptrtoint ptr %chainmask.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %chainmask.i, align 8
  %88 = ptrtoint ptr %chainmask to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %chainmask, align 2
  %neg.i = xor i16 %89, -1
  %and.i = and i16 %87, %neg.i
  %chainmask12.i = getelementptr inbounds %struct.mt76_phy, ptr %call4.i, i32 0, i32 16
  %90 = ptrtoint ptr %chainmask12.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %and.i, ptr %chainmask12.i, align 2
  %conv82.i = zext i16 %and.i to i32
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv82.i) #9
  %notmask.i = shl nsw i32 -1, %call.i.i
  %91 = trunc i32 %notmask.i to i8
  %conv84.i = xor i8 %91, -1
  %antenna_mask.i = getelementptr inbounds %struct.mt76_phy, ptr %call4.i, i32 0, i32 15
  %92 = ptrtoint ptr %antenna_mask.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv84.i, ptr %antenna_mask.i, align 8
  %mac_work.i = getelementptr inbounds %struct.mt76_phy, ptr %call4.i, i32 0, i32 18
  tail call void @__init_work(ptr noundef %mac_work.i, i32 noundef 0) #9
  %93 = ptrtoint ptr %mac_work.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -64, ptr %mac_work.i, align 8
  %lockdep_map.i140 = getelementptr inbounds %struct.mt76_phy, ptr %call4.i, i32 0, i32 18, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i140, ptr noundef nonnull @.str.23, ptr noundef nonnull @mt7915_register_ext_phy.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry92.i = getelementptr inbounds %struct.mt76_phy, ptr %call4.i, i32 0, i32 18, i32 0, i32 1
  %94 = ptrtoint ptr %entry92.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %entry92.i, ptr %entry92.i, align 4
  %prev.i.i141 = getelementptr inbounds %struct.mt76_phy, ptr %call4.i, i32 0, i32 18, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %prev.i.i141 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %entry92.i, ptr %prev.i.i141, align 4
  %func.i142 = getelementptr inbounds %struct.mt76_phy, ptr %call4.i, i32 0, i32 18, i32 0, i32 2
  %96 = ptrtoint ptr %func.i142 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @mt7915_mac_work, ptr %func.i142, align 4
  %timer.i = getelementptr inbounds %struct.mt76_phy, ptr %call4.i, i32 0, i32 18, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.25, ptr noundef nonnull @mt7915_register_ext_phy.__key.24) #9
  tail call void @mt7915_eeprom_parse_band_config(ptr noundef %83) #9
  %97 = ptrtoint ptr %call4.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call4.i, align 8
  tail call fastcc void @mt7915_init_wiphy(ptr noundef %98) #9
  %macaddr.i = getelementptr inbounds %struct.mt76_phy, ptr %call4.i, i32 0, i32 13
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %99 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i = getelementptr i8, ptr %100, i32 10
  %101 = call ptr @memcpy(ptr %macaddr.i, ptr %add.ptr.i, i32 6)
  tail call void @mt76_eeprom_override(ptr noundef nonnull %call4.i) #9
  %call102.i = tail call i32 @mt7915_init_tx_queues(ptr noundef %83, i32 noundef 19, i32 noundef 2048) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %if.end105.i, label %if.end7.i.error.i_crit_edge

if.end7.i.error.i_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end105.i:                                      ; preds = %if.end7.i
  %call106.i = tail call i32 @mt76_register_phy(ptr noundef nonnull %call4.i, i1 noundef zeroext true, ptr noundef nonnull @mt76_rates, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %if.end109.i, label %if.end105.i.error.i_crit_edge

if.end105.i.error.i_crit_edge:                    ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end109.i:                                      ; preds = %if.end105.i
  %call110.i = tail call fastcc i32 @mt7915_thermal_init(ptr noundef %83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.end113.i, label %if.end109.i.error.i_crit_edge

if.end109.i.error.i_crit_edge:                    ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end113.i:                                      ; preds = %if.end109.i
  %call114.i = tail call i32 @mt7915_init_debugfs(ptr noundef %83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool115.not.i = icmp eq i32 %call114.i, 0
  br i1 %tobool115.not.i, label %if.end113.i.if.end79_crit_edge, label %if.end113.i.error.i_crit_edge

if.end113.i.error.i_crit_edge:                    ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end113.i.if.end79_crit_edge:                   ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

error.i:                                          ; preds = %if.end113.i.error.i_crit_edge, %if.end109.i.error.i_crit_edge, %if.end105.i.error.i_crit_edge, %if.end7.i.error.i_crit_edge
  %ret.0.i = phi i32 [ %call102.i, %if.end7.i.error.i_crit_edge ], [ %call106.i, %if.end105.i.error.i_crit_edge ], [ %call110.i, %if.end109.i.error.i_crit_edge ], [ %call114.i, %if.end113.i.error.i_crit_edge ]
  %102 = ptrtoint ptr %call4.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call4.i, align 8
  tail call void @ieee80211_free_hw(ptr noundef %103) #9
  br label %cleanup

if.end79:                                         ; preds = %if.end113.i.if.end79_crit_edge, %mt7915_ext_phy.exit.i.if.end79_crit_edge
  %call81 = tail call i32 @mt7915_init_debugfs(ptr noundef %phy) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %error.i, %if.end3.i.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end51.i.cleanup_crit_edge, %if.then46.i.cleanup_crit_edge, %if.end40.i.cleanup_crit_edge, %if.then35.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call81, %if.end79 ], [ %call66, %if.end58.cleanup_crit_edge ], [ %call71, %if.end69.cleanup_crit_edge ], [ %ret.0.i, %error.i ], [ -12, %if.end3.i.cleanup_crit_edge ], [ -28, %if.end51.i.cleanup_crit_edge ], [ %call47.i, %if.then46.i.cleanup_crit_edge ], [ %call41.i, %if.end40.i.cleanup_crit_edge ], [ %call36.i, %if.then35.i.cleanup_crit_edge ], [ %call27.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mac_sta_rc_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mac_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mac_reset_work(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7915_init_wiphy(ptr nocapture noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %priv1.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 8
  %wiphy1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy1, align 8
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 11
  %6 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 4, ptr %queues, align 4
  %max_rx_aggregation_subframes = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 17
  %7 = ptrtoint ptr %max_rx_aggregation_subframes to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %max_rx_aggregation_subframes, align 4
  %max_tx_aggregation_subframes = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 18
  %8 = ptrtoint ptr %max_tx_aggregation_subframes to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %max_tx_aggregation_subframes, align 2
  %netdev_features = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 24
  %9 = ptrtoint ptr %netdev_features to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1099511627776, ptr %netdev_features, align 8
  %radiotap_timestamp = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 23
  %10 = ptrtoint ptr %radiotap_timestamp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %radiotap_timestamp, align 8
  %slottime = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %slottime to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 9, ptr %slottime, align 4
  %sta_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 8
  %12 = ptrtoint ptr %sta_data_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 984, ptr %sta_data_size, align 8
  %vif_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 7
  %13 = ptrtoint ptr %vif_data_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1416, ptr %vif_data_size, align 4
  %iface_combinations = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %iface_combinations to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @if_comb, ptr %iface_combinations, align 16
  %n_iface_combinations = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %n_iface_combinations to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %n_iface_combinations, align 4
  %reg_notifier = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 54
  %16 = ptrtoint ptr %reg_notifier to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mt7915_regd_notifier, ptr %reg_notifier, align 8
  %flags = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 11
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 32
  %or = or i32 %18, 8388608
  store i32 %or, ptr %flags, align 32
  %arrayidx.i = getelementptr %struct.wiphy, ptr %5, i32 0, i32 14, i32 7
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = or i8 %20, 4
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  %arrayidx.i54 = getelementptr %struct.wiphy, ptr %5, i32 0, i32 14, i32 0
  %21 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i54, align 1
  %conv1.i59 = or i8 %22, -63
  store i8 %conv1.i59, ptr %arrayidx.i54, align 1
  %arrayidx.i60 = getelementptr %struct.wiphy, ptr %5, i32 0, i32 14, i32 1
  %23 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i60, align 1
  %conv1.i61 = or i8 %24, 1
  store i8 %conv1.i61, ptr %arrayidx.i60, align 1
  %arrayidx.i62 = getelementptr %struct.wiphy, ptr %5, i32 0, i32 14, i32 6
  %25 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i62, align 1
  %conv1.i63 = or i8 %26, 64
  store i8 %conv1.i63, ptr %arrayidx.i62, align 1
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 4
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %add.ptr.i.i = getelementptr %struct.ieee80211_hw, ptr %hw, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i68 = or i32 %30, 393216
  store i32 %or.i.i68, ptr %add.ptr.i.i, align 4
  %or.i.i70 = or i32 %28, 4097
  store i32 %or.i.i70, ptr %flags.i, align 4
  %max_tx_fragments = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 19
  %31 = ptrtoint ptr %max_tx_fragments to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %max_tx_fragments, align 8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 8
  %cap = getelementptr inbounds %struct.mt76_phy, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cap, align 8, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not = icmp eq i8 %35, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ht_cap = getelementptr inbounds %struct.mt76_phy, ptr %33, i32 0, i32 10, i32 0, i32 5
  %36 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ht_cap, align 4
  %38 = or i16 %37, 2049
  store i16 %38, ptr %ht_cap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 8
  %has_5ghz = getelementptr inbounds %struct.mt76_phy, ptr %40, i32 0, i32 9, i32 1
  %41 = ptrtoint ptr %has_5ghz to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %has_5ghz, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool8.not = icmp eq i8 %42, 0
  br i1 %tobool8.not, label %if.end.if.end22_crit_edge, label %if.then9

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ht_cap12 = getelementptr inbounds %struct.mt76_phy, ptr %40, i32 0, i32 11, i32 0, i32 5
  %43 = ptrtoint ptr %ht_cap12 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ht_cap12, align 4
  %45 = or i16 %44, 2049
  store i16 %45, ptr %ht_cap12, align 4
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 8
  %cap20 = getelementptr inbounds %struct.mt76_phy, ptr %47, i32 0, i32 11, i32 0, i32 6, i32 1
  %48 = ptrtoint ptr %cap20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cap20, align 4
  %or21 = or i32 %49, 58720257
  store i32 %or21, ptr %cap20, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then9, %if.end.if.end22_crit_edge
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 8
  tail call void @mt76_set_stream_caps(ptr noundef %51, i1 noundef zeroext true) #9
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 8
  %has_5ghz.i = getelementptr inbounds %struct.mt76_phy, ptr %53, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %has_5ghz.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %has_5ghz.i, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i, label %if.end22.mt7915_set_stream_vht_txbf_caps.exit_crit_edge, label %cond.false.i

if.end22.mt7915_set_stream_vht_txbf_caps.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_set_stream_vht_txbf_caps.exit

cond.false.i:                                     ; preds = %if.end22
  %chainmask.i = getelementptr inbounds %struct.mt76_phy, ptr %53, i32 0, i32 16
  %56 = ptrtoint ptr %chainmask.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %chainmask.i, align 2
  %conv78.i = zext i16 %57 to i32
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv78.i) #9
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 8
  %cap80.i = getelementptr inbounds %struct.mt76_phy, ptr %59, i32 0, i32 11, i32 0, i32 6, i32 1
  %60 = ptrtoint ptr %cap80.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cap80.i, align 4
  %or.i = and i32 %61, -2062337
  %and81.i = or i32 %or.i, 1077248
  store i32 %and81.i, ptr %cap80.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 2
  br i1 %cmp.i, label %cond.false.i.mt7915_set_stream_vht_txbf_caps.exit_crit_edge, label %do.end103.i

cond.false.i.mt7915_set_stream_vht_txbf_caps.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_set_stream_vht_txbf_caps.exit

do.end103.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = shl i32 %call.i.i, 16
  %shl.i = add i32 %sub.i, 458752
  %and105.i = and i32 %shl.i, 458752
  %or106.i = or i32 %and105.i, %and81.i
  %or107.i = or i32 %or106.i, 526336
  %62 = ptrtoint ptr %cap80.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or107.i, ptr %cap80.i, align 4
  br label %mt7915_set_stream_vht_txbf_caps.exit

mt7915_set_stream_vht_txbf_caps.exit:             ; preds = %do.end103.i, %cond.false.i.mt7915_set_stream_vht_txbf_caps.exit_crit_edge, %if.end22.mt7915_set_stream_vht_txbf_caps.exit_crit_edge
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 8
  %cap.i = getelementptr inbounds %struct.mt76_phy, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %cap.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %cap.i, align 8, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i71 = icmp eq i8 %66, 0
  br i1 %tobool.not.i71, label %mt7915_set_stream_vht_txbf_caps.exit.if.end.i73_crit_edge, label %if.then.i

mt7915_set_stream_vht_txbf_caps.exit.if.end.i73_crit_edge: ; preds = %mt7915_set_stream_vht_txbf_caps.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i73

if.then.i:                                        ; preds = %mt7915_set_stream_vht_txbf_caps.exit
  call void @__sanitizer_cov_trace_pc() #11
  %iftype.i = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 2
  %call.i = tail call fastcc i32 @mt7915_init_he_caps(ptr noundef %3, i32 noundef 0, ptr noundef %iftype.i) #9
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 8
  %iftype_data.i = getelementptr inbounds %struct.mt76_phy, ptr %68, i32 0, i32 10, i32 0, i32 10
  %69 = ptrtoint ptr %iftype_data.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %iftype.i, ptr %iftype_data.i, align 4
  %conv.i = trunc i32 %call.i to i16
  %n_iftype_data.i = getelementptr inbounds %struct.mt76_phy, ptr %68, i32 0, i32 10, i32 0, i32 9
  %70 = ptrtoint ptr %n_iftype_data.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i, ptr %n_iftype_data.i, align 4
  br label %if.end.i73

if.end.i73:                                       ; preds = %if.then.i, %mt7915_set_stream_vht_txbf_caps.exit.if.end.i73_crit_edge
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %3, align 8
  %has_5ghz.i72 = getelementptr inbounds %struct.mt76_phy, ptr %72, i32 0, i32 9, i32 1
  %73 = ptrtoint ptr %has_5ghz.i72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %has_5ghz.i72, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool4.not.i = icmp eq i8 %74, 0
  br i1 %tobool4.not.i, label %if.end.i73.mt7915_set_stream_he_caps.exit_crit_edge, label %if.then5.i

if.end.i73.mt7915_set_stream_he_caps.exit_crit_edge: ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_set_stream_he_caps.exit

if.then5.i:                                       ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx7.i = getelementptr %struct.mt7915_phy, ptr %3, i32 0, i32 2, i32 1
  %call9.i = tail call fastcc i32 @mt7915_init_he_caps(ptr noundef %3, i32 noundef 1, ptr noundef %arrayidx7.i) #9
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %3, align 8
  %iftype_data12.i = getelementptr inbounds %struct.mt76_phy, ptr %76, i32 0, i32 11, i32 0, i32 10
  %77 = ptrtoint ptr %iftype_data12.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx7.i, ptr %iftype_data12.i, align 4
  %conv13.i = trunc i32 %call9.i to i16
  %n_iftype_data14.i = getelementptr inbounds %struct.mt76_phy, ptr %76, i32 0, i32 11, i32 0, i32 9
  %78 = ptrtoint ptr %n_iftype_data14.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv13.i, ptr %n_iftype_data14.i, align 4
  br label %mt7915_set_stream_he_caps.exit

mt7915_set_stream_he_caps.exit:                   ; preds = %if.then5.i, %if.end.i73.mt7915_set_stream_he_caps.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_led_set_brightness(ptr noundef %led_cdev, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool.not = icmp eq i32 %brightness, 0
  %add.ptr.i = getelementptr i8, ptr %led_cdev, i32 -10332
  %bus.i = getelementptr i8, ptr %led_cdev, i32 -9360
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw.i, align 4
  %call.i = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef 135168, i32 noundef 192, i32 noundef 128) #9
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr.i, align 4
  tail call void %7(ptr noundef %add.ptr.i, i32 noundef 402731072, i32 noundef 1) #9
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %wr63.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr63.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr63.i, align 4
  %. = select i1 %tobool.not, i32 65280, i32 255
  tail call void %11(ptr noundef %add.ptr.i, i32 noundef 402731024, i32 noundef %.) #9
  %led_al.i8 = getelementptr i8, ptr %led_cdev, i32 432
  %12 = ptrtoint ptr %led_al.i8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %led_al.i8, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool64.not.i9 = icmp eq i8 %13, 0
  %val.0.i10 = select i1 %tobool64.not.i9, i32 132, i32 134
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 4
  %wr69.i11 = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wr69.i11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wr69.i11, align 4
  tail call void %17(ptr noundef %add.ptr.i, i32 noundef 402731008, i32 noundef %val.0.i10) #9
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 4
  %rmw71.i12 = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %rmw71.i12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw71.i12, align 4
  %call72.i13 = tail call i32 %21(ptr noundef %add.ptr.i, i32 noundef 402731008, i32 noundef 128, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_led_set_blink(ptr noundef %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp = icmp ugt i32 %1, 10
  %div = udiv i32 %1, 10
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp3 = icmp ugt i32 %3, 10
  %div6 = udiv i32 %3, 10
  %add.ptr.i = getelementptr i8, ptr %led_cdev, i32 -10332
  %bus.i = getelementptr i8, ptr %led_cdev, i32 -9360
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw.i, align 4
  %call.i = tail call i32 %7(ptr noundef %add.ptr.i, i32 noundef 135168, i32 noundef 192, i32 noundef 128) #9
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr.i, align 4
  tail call void %11(ptr noundef %add.ptr.i, i32 noundef 402731072, i32 noundef 1) #9
  %12 = and i32 %div, 255
  %13 = select i1 %cmp, i32 %12, i32 10
  %conv34.i = select i1 %tobool.not, i32 0, i32 %13
  %14 = shl i32 %div6, 8
  %.op20 = and i32 %14, 65280
  %.op = select i1 %cmp3, i32 %.op20, i32 2560
  %shl60.i = select i1 %tobool1.not, i32 0, i32 %.op
  %or.i = or i32 %shl60.i, %conv34.i
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 4
  %wr63.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wr63.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr63.i, align 4
  tail call void %18(ptr noundef %add.ptr.i, i32 noundef 402731024, i32 noundef %or.i) #9
  %led_al.i = getelementptr i8, ptr %led_cdev, i32 432
  %19 = ptrtoint ptr %led_al.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %led_al.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool64.not.i = icmp eq i8 %20, 0
  %val.0.i = select i1 %tobool64.not.i, i32 132, i32 134
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 4
  %wr69.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %wr69.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wr69.i, align 4
  tail call void %24(ptr noundef %add.ptr.i, i32 noundef 402731008, i32 noundef %val.0.i) #9
  %25 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i, align 4
  %rmw71.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %rmw71.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmw71.i, align 4
  %call72.i = tail call i32 %28(ptr noundef %add.ptr.i, i32 noundef 402731008, i32 noundef 128, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_register_device(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7915_thermal_init(ptr noundef %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %wiphy1 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy1, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.wiphy_name.exit_crit_edge

entry.wiphy_name.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %entry.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %entry.wiphy_name.exit_crit_edge ]
  %call2 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i) #9
  %call3 = tail call ptr @thermal_cooling_device_register(ptr noundef %call2, ptr noundef %phy, ptr noundef nonnull @mt7915_thermal_ops) #9
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %wiphy_name.exit.if.end10_crit_edge, label %if.then

wiphy_name.exit.if.end10_crit_edge:               ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %wiphy_name.exit
  %device = getelementptr inbounds %struct.thermal_cooling_device, ptr %call3, i32 0, i32 2
  %call7 = tail call i32 @sysfs_create_link(ptr noundef %dev, ptr noundef %device, ptr noundef nonnull @.str.18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @thermal_cooling_device_unregister(ptr noundef %call3) #9
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %cdev9 = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 4
  %10 = ptrtoint ptr %cdev9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %cdev9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8, %wiphy_name.exit.if.end10_crit_edge
  %call12 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef %call2, ptr noundef %phy, ptr noundef nonnull @mt7915_hwmon_groups) #9
  %cmp.i35 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %throttle_temp = getelementptr inbounds %struct.mt7915_phy, ptr %phy, i32 0, i32 6
  %12 = ptrtoint ptr %throttle_temp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 110, ptr %throttle_temp, align 4
  %arrayidx18 = getelementptr %struct.mt7915_phy, ptr %phy, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 120, ptr %arrayidx18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14
  %retval.0 = phi i32 [ %11, %if.then14 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_init_debugfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_unregister_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy2.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %phy2.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy2.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.mt7915_unregister_ext_phy.exit_crit_edge, label %mt7915_ext_phy.exit.i

entry.mt7915_unregister_ext_phy.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_unregister_ext_phy.exit

mt7915_ext_phy.exit.i:                            ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %mt7915_ext_phy.exit.i.mt7915_unregister_ext_phy.exit_crit_edge, label %if.end.i

mt7915_ext_phy.exit.i.mt7915_unregister_ext_phy.exit_crit_edge: ; preds = %mt7915_ext_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_unregister_ext_phy.exit

if.end.i:                                         ; preds = %mt7915_ext_phy.exit.i
  %cdev.i.i = getelementptr inbounds %struct.mt7915_phy, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %cdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %5, null
  br i1 %tobool.not.i5.i, label %if.end.i.mt7915_unregister_thermal.exit.i_crit_edge, label %if.end.i6.i

if.end.i.mt7915_unregister_thermal.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_unregister_thermal.exit.i

if.end.i6.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %wiphy1.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy1.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56
  tail call void @sysfs_remove_link(ptr noundef %dev.i.i, ptr noundef nonnull @.str.18) #9
  %12 = ptrtoint ptr %cdev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cdev.i.i, align 4
  tail call void @thermal_cooling_device_unregister(ptr noundef %13) #9
  br label %mt7915_unregister_thermal.exit.i

mt7915_unregister_thermal.exit.i:                 ; preds = %if.end.i6.i, %if.end.i.mt7915_unregister_thermal.exit.i_crit_edge
  tail call void @mt76_unregister_phy(ptr noundef nonnull %1) #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void @ieee80211_free_hw(ptr noundef %15) #9
  br label %mt7915_unregister_ext_phy.exit

mt7915_unregister_ext_phy.exit:                   ; preds = %mt7915_unregister_thermal.exit.i, %mt7915_ext_phy.exit.i.mt7915_unregister_ext_phy.exit_crit_edge, %entry.mt7915_unregister_ext_phy.exit_crit_edge
  %cdev.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cdev.i, align 4
  %tobool.not.i8 = icmp eq ptr %17, null
  br i1 %tobool.not.i8, label %mt7915_unregister_ext_phy.exit.mt7915_unregister_thermal.exit_crit_edge, label %if.end.i9

mt7915_unregister_ext_phy.exit.mt7915_unregister_thermal.exit_crit_edge: ; preds = %mt7915_unregister_ext_phy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_unregister_thermal.exit

if.end.i9:                                        ; preds = %mt7915_unregister_ext_phy.exit
  call void @__sanitizer_cov_trace_pc() #11
  %phy = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %wiphy1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy1.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 56
  tail call void @sysfs_remove_link(ptr noundef %dev.i, ptr noundef nonnull @.str.18) #9
  %24 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cdev.i, align 4
  tail call void @thermal_cooling_device_unregister(ptr noundef %25) #9
  br label %mt7915_unregister_thermal.exit

mt7915_unregister_thermal.exit:                   ; preds = %if.end.i9, %mt7915_unregister_ext_phy.exit.mt7915_unregister_thermal.exit_crit_edge
  tail call void @mt76_unregister_device(ptr noundef %dev) #9
  tail call void @mt7915_mcu_exit(ptr noundef %dev) #9
  tail call void @mt7915_tx_token_put(ptr noundef %dev) #9
  tail call void @mt7915_dma_cleanup(ptr noundef %dev) #9
  %irq_tasklet = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 3
  %count.i.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 3, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #9, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @tasklet_unlock_wait(ptr noundef %irq_tasklet) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @mt76_free_device(ptr noundef %dev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_mcu_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_tx_token_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_dma_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_init_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -13152
  %call = tail call i32 @mt7915_mcu_set_eeprom(ptr noundef %add.ptr) #9
  %bus.i = getelementptr i8, ptr %work, i32 -12180
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw.i, align 4
  %call.i = tail call i32 %3(ptr noundef %add.ptr, i32 noundef 61444, i32 noundef 65528, i32 noundef 8192) #9
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 4
  %rmw14.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw14.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw14.i, align 4
  %call15.i = tail call i32 %7(ptr noundef %add.ptr, i32 noundef 61440, i32 noundef 0, i32 noundef 32768) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.057.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %call16.i = tail call zeroext i1 @mt7915_mac_wtbl_update(ptr noundef %add.ptr, i32 noundef %i.057.i, i32 noundef 4096) #9
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 288
  br i1 %exitcond.not.i, label %mt7915_mac_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mt7915_mac_init.exit:                             ; preds = %for.body.i
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %add.ptr, i32 noundef 135412, i32 noundef 63, i32 noundef 63) #9
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 4
  %rmw14.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw14.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw14.i.i, align 4
  %call19.i.i = tail call i32 %15(ptr noundef %add.ptr, i32 noundef 135412, i32 noundef 0, i32 noundef 393216) #9
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 4
  %rmw70.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rmw70.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw70.i.i, align 4
  %call74.i.i = tail call i32 %19(ptr noundef %add.ptr, i32 noundef 61552, i32 noundef 1008, i32 noundef 0) #9
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 4
  %rmw126.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %rmw126.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmw126.i.i, align 4
  %call131.i.i = tail call i32 %23(ptr noundef %add.ptr, i32 noundef 61556, i32 noundef 2025848832, i32 noundef 0) #9
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 4
  %rmw133.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %rmw133.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmw133.i.i, align 4
  %call154.i.i = tail call i32 %27(ptr noundef %add.ptr, i32 noundef 138752, i32 noundef 65528, i32 noundef 13312) #9
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 4
  %rmw156.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %rmw156.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw156.i.i, align 4
  %call161.i.i = tail call i32 %31(ptr noundef %add.ptr, i32 noundef 138752, i32 noundef 8388608, i32 noundef 0) #9
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 4
  %rmw.i.1.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %rmw.i.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmw.i.1.i, align 4
  %call.i.1.i = tail call i32 %35(ptr noundef %add.ptr, i32 noundef 659700, i32 noundef 63, i32 noundef 63) #9
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 4
  %rmw14.i.1.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %rmw14.i.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmw14.i.1.i, align 4
  %call19.i.1.i = tail call i32 %39(ptr noundef %add.ptr, i32 noundef 659700, i32 noundef 0, i32 noundef 393216) #9
  %40 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i, align 4
  %rmw70.i.1.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %rmw70.i.1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmw70.i.1.i, align 4
  %call74.i.1.i = tail call i32 %43(ptr noundef %add.ptr, i32 noundef 61808, i32 noundef 1008, i32 noundef 0) #9
  %44 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i, align 4
  %rmw126.i.1.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %rmw126.i.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmw126.i.1.i, align 4
  %call131.i.1.i = tail call i32 %47(ptr noundef %add.ptr, i32 noundef 61812, i32 noundef 2025848832, i32 noundef 0) #9
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 4
  %rmw133.i.1.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %rmw133.i.1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmw133.i.1.i, align 4
  %call154.i.1.i = tail call i32 %51(ptr noundef %add.ptr, i32 noundef 663040, i32 noundef 65528, i32 noundef 13312) #9
  %52 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i, align 4
  %rmw156.i.1.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %rmw156.i.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmw156.i.1.i, align 4
  %call161.i.1.i = tail call i32 %55(ptr noundef %add.ptr, i32 noundef 663040, i32 noundef 8388608, i32 noundef 0) #9
  %led_pin.i = getelementptr i8, ptr %work, i32 -2387
  %56 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %led_pin.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i = icmp eq i8 %57, 0
  %cond.i = select i1 %tobool.not.i, i32 1879068760, i32 1879068764
  %58 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus.i, align 4
  %rmw25.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %rmw25.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmw25.i, align 4
  %call42.i = tail call i32 %61(ptr noundef %add.ptr, i32 noundef %cond.i, i32 noundef 3840, i32 noundef 1024) #9
  %sband_2g = getelementptr i8, ptr %work, i32 -13060
  tail call fastcc void @mt7915_init_txpower(ptr noundef %add.ptr, ptr noundef %sband_2g)
  %sband_5g = getelementptr i8, ptr %work, i32 -12964
  tail call fastcc void @mt7915_init_txpower(ptr noundef %add.ptr, ptr noundef %sband_5g)
  %dbdc_support.i = getelementptr i8, ptr %work, i32 260
  %62 = ptrtoint ptr %dbdc_support.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %dbdc_support.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i9 = icmp eq i8 %63, 0
  br i1 %tobool.not.i9, label %mt7915_mac_init.exit.if.end3.i_crit_edge, label %if.then.i

mt7915_mac_init.exit.if.end3.i_crit_edge:         ; preds = %mt7915_mac_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then.i:                                        ; preds = %mt7915_mac_init.exit
  %call.i10 = tail call i32 @mt7915_mcu_set_txbf(ptr noundef %add.ptr, i8 noundef zeroext 25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool1.not.i = icmp eq i32 %call.i10, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end3.i_crit_edge, label %if.then.i.mt7915_txbf_init.exit_crit_edge

if.then.i.mt7915_txbf_init.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_txbf_init.exit

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %mt7915_mac_init.exit.if.end3.i_crit_edge
  %call4.i = tail call i32 @mt7915_mcu_set_txbf(ptr noundef %add.ptr, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.mt7915_txbf_init.exit_crit_edge

if.end3.i.mt7915_txbf_init.exit_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt7915_txbf_init.exit

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 @mt7915_mcu_set_txbf(ptr noundef %add.ptr, i8 noundef zeroext 20) #9
  br label %mt7915_txbf_init.exit

mt7915_txbf_init.exit:                            ; preds = %if.end7.i, %if.end3.i.mt7915_txbf_init.exit_crit_edge, %if.then.i.mt7915_txbf_init.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7915_wfsys_reset(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  tail call void %3(ptr noundef %dev, i32 noundef 8480, i32 noundef 65535) #9
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr2, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 983040, i32 noundef 1464205453) #9
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %wr4 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr4, align 4
  tail call void %11(ptr noundef %dev, i32 noundef 983040, i32 noundef 1464205452) #9
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %wr7 = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr7, align 4
  tail call void %15(ptr noundef %dev, i32 noundef 983040, i32 noundef 1464205453) #9
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %wr11 = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr11, align 4
  tail call void %19(ptr noundef %dev, i32 noundef 983040, i32 noundef 1464205468) #9
  %call = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 8480, i32 noundef -65536, i32 noundef -65536, i32 noundef 1000) #9
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %20 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmw, align 4
  %call14 = tail call i32 %25(ptr noundef %dev, i32 noundef 403046640, i32 noundef 7, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 100) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_dma_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_eeprom_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_apply_group_cal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_wcid_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_eeprom(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7915_init_txpower(ptr noundef %dev, ptr nocapture noundef readonly %sband) unnamed_addr #0 align 64 {
entry:
  %limits = alloca %struct.mt76_power_limits, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %antenna_mask, align 8
  %conv66 = zext i8 %1 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv66) #9
  %conv.i = and i32 %call.i, 255
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr [4 x i8], ptr @mt76_tx_power_nss_delta.nss_delta, i32 0, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 2
  %4 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %band, align 4
  %call70 = tail call signext i8 @mt7915_eeprom_get_power_delta(ptr noundef %dev, i32 noundef %5) #9
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %limits) #9
  %6 = call ptr @memset(ptr %limits, i32 255, i32 136)
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 3
  %7 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp144 = icmp sgt i32 %8, 0
  br i1 %cmp144, label %for.body.lr.ph, label %entry.for.end100_crit_edge

entry.for.end100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end100

for.body.lr.ph:                                   ; preds = %entry
  %conv69 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp74141 = icmp sgt i32 %call.i, 0
  %add89 = add nuw nsw i32 %conv69, 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.0145 = phi i32 [ 0, %for.body.lr.ph ], [ %inc99, %for.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %sband to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sband, align 4
  %arrayidx = getelementptr %struct.ieee80211_channel, ptr %10, i32 %i.0145
  br i1 %cmp74141, label %for.body.for.body76_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body76_crit_edge:                    ; preds = %for.body
  br label %for.body76

for.body76:                                       ; preds = %for.body76.for.body76_crit_edge, %for.body.for.body76_crit_edge
  %j.0143 = phi i32 [ %inc, %for.body76.for.body76_crit_edge ], [ 0, %for.body.for.body76_crit_edge ]
  %target_power.0142 = phi i32 [ %11, %for.body76.for.body76_crit_edge ], [ 0, %for.body.for.body76_crit_edge ]
  %conv77 = trunc i32 %j.0143 to i8
  %call78 = call i32 @mt7915_eeprom_get_target_power(ptr noundef %dev, ptr noundef %arrayidx, i8 noundef zeroext %conv77) #9
  %11 = call i32 @llvm.umax.i32(i32 %target_power.0142, i32 %call78)
  %inc = add nuw nsw i32 %j.0143, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.body76.for.end_crit_edge, label %for.body76.for.body76_crit_edge

for.body76.for.body76_crit_edge:                  ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body76

for.body76.for.end_crit_edge:                     ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body76.for.end_crit_edge, %for.body.for.end_crit_edge
  %target_power.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %11, %for.body76.for.end_crit_edge ]
  %12 = trunc i32 %target_power.0.lcssa to i8
  %conv86 = add i8 %call70, %12
  %call87 = call signext i8 @mt76_get_rate_power_limits(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %limits, i8 noundef signext %conv86) #9
  %conv88 = sext i8 %call87 to i32
  %sub = add nsw i32 %add89, %conv88
  %div135 = lshr i32 %sub, 1
  %max_reg_power = getelementptr %struct.ieee80211_channel, ptr %10, i32 %i.0145, i32 7
  %13 = ptrtoint ptr %max_reg_power to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_reg_power, align 4
  %15 = call i32 @llvm.smin.i32(i32 %14, i32 %div135)
  %max_power = getelementptr %struct.ieee80211_channel, ptr %10, i32 %i.0145, i32 6
  %16 = ptrtoint ptr %max_power to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %max_power, align 4
  %orig_mpwr = getelementptr %struct.ieee80211_channel, ptr %10, i32 %i.0145, i32 11
  %17 = ptrtoint ptr %orig_mpwr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div135, ptr %orig_mpwr, align 4
  %inc99 = add nuw nsw i32 %i.0145, 1
  %18 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_channels, align 4
  %cmp = icmp slt i32 %inc99, %19
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end100_crit_edge

for.end.for.end100_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end100

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end100:                                       ; preds = %for.end.for.end100_crit_edge, %entry.for.end100_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %limits) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt7915_mac_wtbl_update(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @mt7915_eeprom_get_power_delta(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_eeprom_get_target_power(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @mt76_get_rate_power_limits(ptr noundef, ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_txbf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7915_regd_notifier(ptr noundef %wiphy, ptr nocapture noundef readonly %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #9
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %priv2 = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 8
  %chandef3 = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 5
  %alpha2 = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 47
  %alpha24 = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 4
  %6 = call ptr @memcpy(ptr %alpha2, ptr %alpha24, i32 3)
  %dfs_region = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 5
  %7 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dfs_region, align 4
  %region = getelementptr inbounds %struct.mt76_dev, ptr %3, i32 0, i32 48
  %9 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %region, align 4
  %sband_2g = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 10
  tail call fastcc void @mt7915_init_txpower(ptr noundef %3, ptr noundef %sband_2g)
  %sband_5g = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 11
  tail call fastcc void @mt7915_init_txpower(ptr noundef %3, ptr noundef %sband_5g)
  %10 = ptrtoint ptr %chandef3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chandef3, align 4
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @mt7915_dfs_init_radar_detector(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_stream_caps(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_dfs_init_radar_detector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_cooling_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mt7915_thermal_get_max_throttle_state(ptr nocapture noundef readnone %cdev, ptr nocapture noundef writeonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100, ptr %state, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7915_thermal_get_cur_throttle_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %throttle_state = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %throttle_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %throttle_state, align 8
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_thermal_set_cur_throttle_state(ptr nocapture noundef readonly %cdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %state)
  %cmp = icmp ugt i32 %state, 100
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %throttle_temp = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %throttle_temp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %throttle_temp, align 4
  %arrayidx2 = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp3 = icmp ugt i32 %3, %5
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %throttle_state = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %throttle_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %throttle_state, align 8
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %state)
  %cmp6 = icmp eq i32 %conv, %state
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %conv10 = trunc i32 %state to i8
  %call = tail call i32 @mt7915_mcu_set_thermal_throttling(ptr noundef %1, i8 noundef zeroext %conv10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %throttle_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv10, ptr %throttle_state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_set_thermal_throttling(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_thermal_temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %3, -1
  %arrayidx = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 6, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mt7915_mcu_get_temperature(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %if.then
  %call2.sink = phi i32 [ %5, %if.then ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %mul5 = mul i32 %call2.sink, 1000
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %mul5)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_mcu_get_temperature(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_thermal_temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !75
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.mt7915_phy, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 4
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %6, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4 = icmp sgt i32 %8, 0
  %cond.in.v = select i1 %cmp4, i32 500, i32 -500
  %cond.in = add i32 %cond.in.v, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 60999, i32 %cond.in)
  %cmp13 = icmp sgt i32 %cond.in, 60999
  %cond = sdiv i32 %cond.in, 1000
  %9 = call i32 @llvm.smin.i32(i32 %cond, i32 130)
  %10 = select i1 %cmp13, i32 %9, i32 60
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  %sub26 = add i32 %3, -1
  %arrayidx = getelementptr %struct.mt7915_phy, ptr %1, i32 0, i32 6, i32 %sub26
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2, align 4
  %mutex28 = getelementptr inbounds %struct.mt76_dev, ptr %14, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %mutex28) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_alloc_phy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_eeprom_parse_band_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_eeprom_override(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7915_init_tx_queues(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_register_phy(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_unregister_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !55, !56, !58, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @mt7915_register_device.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 911, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mt7915_register_device.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 912, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt7915_register_device.__key.3, !4, !"__key", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mt7915_register_device.__key.5, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 916, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mt7915_register_device.__key.7, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 918, i32 2}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mt7915_register_device.__key.9, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 919, i32 2}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mt7915_init_hardware.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 546, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt76_tx_power_nss_delta.nss_delta, !21, !"nss_delta", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/../mt76.h", i32 1069, i32 18}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 530, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mt7915_wfsys_reset._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @mt7915_wfsys_reset._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @if_comb, !31, !"if_comb", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 29, i32 49}
!32 = !{ptr @if_limits, !33, !"if_limits", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 13, i32 43}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 165, i32 49}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 171, i32 11}
!38 = !{ptr @mt7915_thermal_ops, !39, !"mt7915_thermal_ops", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 141, i32 48}
!40 = !{ptr @mt7915_hwmon_groups, !41, !"mt7915_hwmon_groups", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 94, i32 1}
!42 = !{ptr @mt7915_hwmon_group, !41, !"mt7915_hwmon_group", i1 false, i1 false}
!43 = !{ptr @mt7915_hwmon_attrs, !44, !"mt7915_hwmon_attrs", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 88, i32 26}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 84, i32 8}
!47 = !{ptr @sensor_dev_attr_temp1_input, !46, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 54, i32 23}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 85, i32 8}
!52 = !{ptr @sensor_dev_attr_temp1_crit, !51, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 86, i32 8}
!55 = !{ptr @sensor_dev_attr_temp1_max, !54, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!56 = !{ptr @mt7915_register_ext_phy.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/mediatek/mt76/mt7915/init.c", i32 455, i32 2}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mt7915_register_ext_phy.__key.24, !57, !"__key", i1 false, i1 false}
!60 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
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
!71 = !{i64 2158813547}
!72 = !{i64 2148392550, i64 2148392576, i64 2148392605, i64 2148392639, i64 2148392670, i64 2148392693}
!73 = !{i64 2155282093}
!74 = !{i64 2155282735}
!75 = !{!"auto-init"}
