; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7603/init.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7603/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mt76_driver_ops = type { i32, i32, i16, i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.134], ptr }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.142 = type { ptr, i32 }
%union.anon.143 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mt7603_dev = type { %union.anon.145, ptr, i32, %struct.list_head, %struct.spinlock, %struct.mt7603_sta, i32, i32, i32, i32, i32, i32, i32, [3 x i8], i8, i16, i8, i64, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i16], i16, i32, [7 x i32], [12 x i8] }
%union.anon.145 = type { %struct.mt76_dev }
%struct.mt7603_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, [4 x i32], %struct.sk_buff_head, [4 x %struct.ieee80211_tx_rate], [2 x %struct.mt7603_rate_set], i32, i8, i8, i8, i8, i8 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.mt7603_rate_set = type { %struct.ieee80211_tx_rate, [4 x %struct.ieee80211_tx_rate] }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.129, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.129 = type { i64, i64, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@mt7603_drv_ops = dso_local constant { %struct.mt76_driver_ops, [36 x i8] } { %struct.mt76_driver_ops { i32 4, i32 64, i16 32, i16 0, i8 0, ptr @mt7603_update_channel, ptr @mt7603_tx_prepare_skb, ptr @mt7603_tx_complete_skb, ptr null, ptr null, ptr @mt7603_queue_rx_skb, ptr @mt7603_rx_poll_complete, ptr @mt7603_sta_ps, ptr @mt7603_sta_add, ptr @mt7603_sta_assoc, ptr @mt7603_sta_remove }, [36 x i8] zeroinitializer }, align 32
@mt7603_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->sta_poll_lock\00", [44 x i8] zeroinitializer }, align 32
@mt7603_register_device.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->ps_lock\00", [18 x i8] zeroinitializer }, align 32
@mt7603_register_device.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&dev->mphy.mac_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@mt7603_register_device.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&dev->mphy.mac_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@if_comb = internal constant { [1 x %struct.ieee80211_iface_combination], [44 x i8] } { [1 x %struct.ieee80211_iface_combination] [%struct.ieee80211_iface_combination { ptr @if_limits, i32 1, i16 4, i8 2, i8 1, i8 0, i8 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@mt76_rates = external dso_local global [12 x %struct.ieee80211_rate], align 4
@if_limits = internal constant { [2 x %struct.ieee80211_iface_limit], [24 x i8] } { [2 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 1, i16 2 }, %struct.ieee80211_iface_limit { i16 4, i16 908 }], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"mt7603_drv_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 8, i32 30 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 504, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 505, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 507, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"if_comb\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 323, i32 49 }
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"if_limits\00", align 1
@___asan_gen_.38 = private constant [52 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7603/init.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 307, i32 43 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @mt7603_drv_ops, ptr @mt7603_register_device.__key, ptr @.str, ptr @mt7603_register_device.__key.1, ptr @.str.2, ptr @mt7603_register_device.__key.3, ptr @.str.4, ptr @mt7603_register_device.__key.5, ptr @.str.6, ptr @if_comb, ptr @if_limits], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_drv_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_register_device.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_register_device.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_register_device.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_comb to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_limits to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_update_channel(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7603_tx_prepare_skb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_tx_complete_skb(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_queue_rx_skb(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_rx_poll_complete(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_sta_ps(ptr noundef, ptr noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7603_sta_add(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_sta_assoc(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_sta_remove(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7603_register_device(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  %bc_addr.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %wiphy2 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy2, align 8
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %bus_ops3 = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %bus_ops3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %bus_ops3, align 128
  %dev4 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %7 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev4, align 8
  %call = tail call ptr @devm_kmemdup(ptr noundef %8, ptr noundef %5, i32 noundef 32, i32 noundef 3264) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mt7603_rr, ptr %call, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mt7603_wr, ptr %wr, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %rmw to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mt7603_rmw, ptr %rmw, align 4
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %bus, align 4
  %sta_poll_list = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 3
  %13 = ptrtoint ptr %sta_poll_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %sta_poll_list, ptr %sta_poll_list, align 4
  %prev.i = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sta_poll_list, ptr %prev.i, align 4
  %sta_poll_lock = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %sta_poll_lock, ptr noundef nonnull @.str, ptr noundef nonnull @mt7603_register_device.__key, i16 noundef signext 3) #5
  %ps_lock = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %ps_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mt7603_register_device.__key.1, i16 noundef signext 3) #5
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18
  tail call void @__init_work(ptr noundef %mac_work, i32 noundef 0) #5
  %15 = ptrtoint ptr %mac_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %mac_work, align 16
  %lockdep_map = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @mt7603_register_device.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry20 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 0, i32 1
  %16 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i87 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry20, ptr %prev.i87, align 4
  %func = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mt7603_mac_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @mt7603_register_device.__key.5) #5
  %pre_tbtt_tasklet = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 41
  tail call void @tasklet_setup(ptr noundef %pre_tbtt_tasklet, ptr noundef nonnull @mt7603_pre_tbtt_tasklet) #5
  %slottime = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 14
  %19 = ptrtoint ptr %slottime to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 9, ptr %slottime, align 1
  %sensitivity_limit = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 27
  %20 = ptrtoint ptr %sensitivity_limit to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 28, ptr %sensitivity_limit, align 4
  %dynamic_sensitivity = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 25
  %21 = ptrtoint ptr %dynamic_sensitivity to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %dynamic_sensitivity, align 2
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr.i, align 4
  tail call void %25(ptr noundef %dev, i32 noundef 16896, i32 noundef -1) #5
  %call.i = tail call i32 @mt7603_eeprom_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @mt7603_dma_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %wr5.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wr5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wr5.i, align 4
  tail call void %29(ptr noundef %dev, i32 noundef 16904, i32 noundef 1375733840) #5
  tail call void @mt7603_mac_dma_start(ptr noundef %dev) #5
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call7.i = tail call i32 %33(ptr noundef %dev, i32 noundef 137216) #5
  %rxfilter.i = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 2
  %34 = ptrtoint ptr %rxfilter.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call7.i, ptr %rxfilter.i, align 4
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  br label %do.end25.i

do.end25.i:                                       ; preds = %do.end25.i.do.end25.i_crit_edge, %if.end3.i
  %i.069.i = phi i32 [ 0, %if.end3.i ], [ %inc.i, %do.end25.i.do.end25.i_crit_edge ]
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 4
  %wr10.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wr10.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr10.i, align 4
  %shl.i = shl i32 %i.069.i, 8
  %or.i = or i32 %shl.i, -2147418112
  tail call void %38(ptr noundef %dev, i32 noundef 33172, i32 noundef %or.i) #5
  %call27.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 33172, i32 noundef -2147483648, i32 noundef 0, i32 noundef 5000) #5
  %inc.i = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.end.i, label %do.end25.i.do.end25.i_crit_edge

do.end25.i.do.end25.i_crit_edge:                  ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25.i

for.end.i:                                        ; preds = %do.end25.i
  %call28.i = tail call i32 @mt7603_mcu_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31.i:                                       ; preds = %for.end.i
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call.i.i = tail call i32 %42(ptr noundef %dev, i32 noundef 33056) #5
  %and.i.i = lshr i32 %call.i.i, 16
  %shr.i.i = and i32 %and.i.i, 4095
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus, align 4
  %wr.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr.i.i, align 4
  tail call void %46(ptr noundef %dev, i32 noundef 33080, i32 noundef 16439) #5
  %47 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus, align 4
  %wr68.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %wr68.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wr68.i.i, align 4
  tail call void %50(ptr noundef %dev, i32 noundef 17852, i32 noundef 1431655763) #5
  %51 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus, align 4
  %wr70.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %wr70.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wr70.i.i, align 4
  tail call void %54(ptr noundef %dev, i32 noundef 17856, i32 noundef 2018858325) #5
  %55 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus, align 4
  %wr72.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wr72.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wr72.i.i, align 4
  tail call void %58(ptr noundef %dev, i32 noundef 17792, i32 noundef 723126638) #5
  %59 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus, align 4
  %wr74.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wr74.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wr74.i.i, align 4
  tail call void %62(ptr noundef %dev, i32 noundef 17796, i32 noundef 2019511612) #5
  %63 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus, align 4
  %wr76.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %wr76.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wr76.i.i, align 4
  tail call void %66(ptr noundef %dev, i32 noundef 17860, i32 noundef -1) #5
  %67 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus, align 4
  %wr78.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %wr78.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr78.i.i, align 4
  %or79.i.i = or i32 %shr.i.i, 536870912
  tail call void %70(ptr noundef %dev, i32 noundef 17800, i32 noundef %or79.i.i) #5
  %71 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus, align 4
  %wr81.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %wr81.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wr81.i.i, align 4
  tail call void %74(ptr noundef %dev, i32 noundef 17804, i32 noundef 32) #5
  %75 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus, align 4
  %wr83.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %wr83.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wr83.i.i, align 4
  tail call void %78(ptr noundef %dev, i32 noundef 17728, i32 noundef 32) #5
  %79 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus, align 4
  %wr83.1.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %wr83.1.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wr83.1.i.i, align 4
  tail call void %82(ptr noundef %dev, i32 noundef 17732, i32 noundef 32) #5
  %83 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus, align 4
  %wr83.2.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %wr83.2.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wr83.2.i.i, align 4
  tail call void %86(ptr noundef %dev, i32 noundef 17736, i32 noundef 32) #5
  %87 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus, align 4
  %wr83.3.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %wr83.3.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %wr83.3.i.i, align 4
  tail call void %90(ptr noundef %dev, i32 noundef 17740, i32 noundef 32) #5
  %91 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bus, align 4
  %wr83.4.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %wr83.4.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %wr83.4.i.i, align 4
  tail call void %94(ptr noundef %dev, i32 noundef 17744, i32 noundef 32) #5
  %95 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bus, align 4
  %wr89.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %wr89.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wr89.i.i, align 4
  tail call void %98(ptr noundef %dev, i32 noundef 17748, i32 noundef 32) #5
  %99 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bus, align 4
  %wr92.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %wr92.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %wr92.i.i, align 4
  tail call void %102(ptr noundef %dev, i32 noundef 17756, i32 noundef 120) #5
  %103 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bus, align 4
  %wr95.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %wr95.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wr95.i.i, align 4
  tail call void %106(ptr noundef %dev, i32 noundef 17760, i32 noundef 56) #5
  %rev.i.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %107 = ptrtoint ptr %rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rev.i.i.i.i, align 4
  %shr.i.mask.i.i.i = and i32 %108, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1979908096, i32 %shr.i.mask.i.i.i)
  %cmp.i.i.i = icmp eq i32 %shr.i.mask.i.i.i, 1979908096
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 0, i32 -368
  %109 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bus, align 4
  %wr99.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %wr99.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wr99.i.i, align 4
  %sub.i.i = add nsw i32 %spec.select.i.i, %shr.i.i
  tail call void %112(ptr noundef %dev, i32 noundef 17864, i32 noundef %sub.i.i) #5
  %113 = ptrtoint ptr %rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rev.i.i.i.i, align 4
  %shr.i.mask.i213.i.i = and i32 %114, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1979908096, i32 %shr.i.mask.i213.i.i)
  %cmp.i214.i.i = icmp eq i32 %shr.i.mask.i213.i.i, 1979908096
  %115 = and i32 %114, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp102.i.i = icmp ne i32 %115, 0
  %or.cond.i.i = and i1 %cmp.i214.i.i, %cmp102.i.i
  %116 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bus, align 4
  %wr106.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %wr106.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wr106.i.i, align 4
  br i1 %or.cond.i.i, label %if.then104.i.i, label %if.else.i.i

if.then104.i.i:                                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub108.i.i = add nsw i32 %shr.i.i, -152
  tail call void %119(ptr noundef %dev, i32 noundef 17816, i32 noundef %sub108.i.i) #5
  %120 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bus, align 4
  %wr110.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %wr110.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wr110.i.i, align 4
  tail call void %123(ptr noundef %dev, i32 noundef 17820, i32 noundef 120) #5
  %124 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bus, align 4
  %wr112.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %wr112.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wr112.i.i, align 4
  tail call void %127(ptr noundef %dev, i32 noundef 17840, i32 noundef 8453983) #5
  %128 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bus, align 4
  %wr114.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %wr114.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %wr114.i.i, align 4
  tail call void %131(ptr noundef %dev, i32 noundef 17824, i32 noundef 32) #5
  %132 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bus, align 4
  %wr116.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %wr116.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %wr116.i.i, align 4
  tail call void %135(ptr noundef %dev, i32 noundef 17844, i32 noundef 32) #5
  br label %mt7603_dma_sched_init.exit.i

if.else.i.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %119(ptr noundef %dev, i32 noundef 17816, i32 noundef %shr.i.i) #5
  %136 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bus, align 4
  %wr120.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %wr120.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %wr120.i.i, align 4
  tail call void %139(ptr noundef %dev, i32 noundef 17840, i32 noundef 65535) #5
  br label %mt7603_dma_sched_init.exit.i

mt7603_dma_sched_init.exit.i:                     ; preds = %if.else.i.i, %if.then104.i.i
  %140 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bus, align 4
  %wr123.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %wr123.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %wr123.i.i, align 4
  tail call void %143(ptr noundef %dev, i32 noundef 17812, i32 noundef 0) #5
  %144 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bus, align 4
  %wr129.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %wr129.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %wr129.i.i, align 4
  tail call void %147(ptr noundef %dev, i32 noundef 17664, i32 noundef 1048575) #5
  %148 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bus, align 4
  %wr129.1.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %wr129.1.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %wr129.1.i.i, align 4
  tail call void %151(ptr noundef %dev, i32 noundef 17668, i32 noundef 1048575) #5
  %152 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bus, align 4
  %wr129.2.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %wr129.2.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %wr129.2.i.i, align 4
  tail call void %155(ptr noundef %dev, i32 noundef 17672, i32 noundef 1048575) #5
  %156 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %bus, align 4
  %wr129.3.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %wr129.3.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %wr129.3.i.i, align 4
  tail call void %159(ptr noundef %dev, i32 noundef 17676, i32 noundef 1048575) #5
  %160 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %bus, align 4
  %wr129.4.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %wr129.4.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %wr129.4.i.i, align 4
  tail call void %163(ptr noundef %dev, i32 noundef 17680, i32 noundef 1048575) #5
  %164 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %bus, align 4
  %wr129.5.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %wr129.5.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wr129.5.i.i, align 4
  tail call void %167(ptr noundef %dev, i32 noundef 17684, i32 noundef 1048575) #5
  %168 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %bus, align 4
  %wr129.6.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %wr129.6.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wr129.6.i.i, align 4
  tail call void %171(ptr noundef %dev, i32 noundef 17688, i32 noundef 1048575) #5
  %172 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %bus, align 4
  %wr129.7.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %wr129.7.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %wr129.7.i.i, align 4
  tail call void %175(ptr noundef %dev, i32 noundef 17692, i32 noundef 1048575) #5
  %176 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %bus, align 4
  %wr129.8.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %wr129.8.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %wr129.8.i.i, align 4
  tail call void %179(ptr noundef %dev, i32 noundef 17696, i32 noundef 1048575) #5
  %180 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %bus, align 4
  %wr129.9.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %wr129.9.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %wr129.9.i.i, align 4
  tail call void %183(ptr noundef %dev, i32 noundef 17700, i32 noundef 1048575) #5
  %184 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %bus, align 4
  %wr129.10.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %wr129.10.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %wr129.10.i.i, align 4
  tail call void %187(ptr noundef %dev, i32 noundef 17704, i32 noundef 1048575) #5
  %188 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %bus, align 4
  %wr129.11.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %wr129.11.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %wr129.11.i.i, align 4
  tail call void %191(ptr noundef %dev, i32 noundef 17708, i32 noundef 1048575) #5
  %192 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %bus, align 4
  %wr129.12.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %wr129.12.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %wr129.12.i.i, align 4
  tail call void %195(ptr noundef %dev, i32 noundef 17712, i32 noundef 1048575) #5
  %196 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %bus, align 4
  %wr129.13.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %wr129.13.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %wr129.13.i.i, align 4
  tail call void %199(ptr noundef %dev, i32 noundef 17716, i32 noundef 1048575) #5
  %200 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %bus, align 4
  %wr129.14.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %wr129.14.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %wr129.14.i.i, align 4
  tail call void %203(ptr noundef %dev, i32 noundef 17720, i32 noundef 1048575) #5
  %204 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %bus, align 4
  %wr129.15.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %wr129.15.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %wr129.15.i.i, align 4
  tail call void %207(ptr noundef %dev, i32 noundef 17724, i32 noundef 1048575) #5
  %208 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %bus, align 4
  %rmw.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %rmw.i.i, align 4
  %call136.i.i = tail call i32 %211(ptr noundef %dev, i32 noundef 17812, i32 noundef 0, i32 noundef 64) #5
  %call32.i = tail call i32 @mt7603_mcu_set_eeprom(ptr noundef %dev) #5
  %antenna_mask.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 15
  %212 = ptrtoint ptr %antenna_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %antenna_mask.i.i, align 8
  %conv.i.i = zext i8 %213 to i32
  %call.i.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv.i.i) #5
  %214 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %bus, align 4
  %rmw.i62.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %215, i32 0, i32 2
  %216 = ptrtoint ptr %rmw.i62.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %rmw.i62.i, align 4
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 22
  %and90.i.i = and i32 %shl.i.i, 29360128
  %or.i.i = or i32 %and90.i.i, 3145728
  %call91.i.i = tail call i32 %217(ptr noundef %dev, i32 noundef 137344, i32 noundef 32505856, i32 noundef %or.i.i) #5
  %218 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %bus, align 4
  %rmw93.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %219, i32 0, i32 2
  %220 = ptrtoint ptr %rmw93.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %rmw93.i.i, align 4
  %sub162.i.i = shl i32 %call.i.i.i, 16
  %shl116.i.i = add i32 %sub162.i.i, 196608
  %and117.i.i = and i32 %shl116.i.i, 196608
  %call118.i.i = tail call i32 %221(ptr noundef %dev, i32 noundef 136704, i32 noundef 196608, i32 noundef %and117.i.i) #5
  %222 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %bus, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %call120.i.i = tail call i32 %225(ptr noundef %dev, i32 noundef 66816) #5
  %agc0.i.i = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 6
  %226 = ptrtoint ptr %agc0.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %call120.i.i, ptr %agc0.i.i, align 4
  %227 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %bus, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %call123.i.i = tail call i32 %230(ptr noundef %dev, i32 noundef 66828) #5
  %agc3.i.i = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 7
  %231 = ptrtoint ptr %agc3.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %call123.i.i, ptr %agc3.i.i, align 32
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bc_addr.i.i) #5
  %232 = call ptr @memset(ptr %bc_addr.i.i, i32 255, i32 6)
  %233 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %bus, align 4
  %wr.i64.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %wr.i64.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %wr.i64.i, align 4
  tail call void %236(ptr noundef %dev, i32 noundef 135752, i32 noundef 269223940) #5
  %237 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %bus, align 4
  %wr2.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %wr2.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %wr2.i.i, align 4
  tail call void %240(ptr noundef %dev, i32 noundef 135756, i32 noundef 538712084) #5
  %241 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %bus, align 4
  %wr4.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %wr4.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %wr4.i.i, align 4
  tail call void %244(ptr noundef %dev, i32 noundef 135744, i32 noundef 404232216) #5
  %245 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %bus, align 4
  %wr68.i65.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %wr68.i65.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %wr68.i65.i, align 4
  tail call void %248(ptr noundef %dev, i32 noundef 135748, i32 noundef 404232216) #5
  %249 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %bus, align 4
  %wr137.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %250, i32 0, i32 1
  %251 = ptrtoint ptr %wr137.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %wr137.i.i, align 4
  tail call void %252(ptr noundef %dev, i32 noundef 135792, i32 noundef 78644882) #5
  %253 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %bus, align 4
  %wr173.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %wr173.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %wr173.i.i, align 4
  tail call void %256(ptr noundef %dev, i32 noundef 135924, i32 noundef 6016) #5
  %257 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %bus, align 4
  %wr208.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %258, i32 0, i32 1
  %259 = ptrtoint ptr %wr208.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %wr208.i.i, align 4
  tail call void %260(ptr noundef %dev, i32 noundef 138240, i32 noundef 135168) #5
  %261 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %bus, align 4
  %rmw.i66.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %rmw.i66.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %rmw.i66.i, align 4
  %call.i67.i = tail call i32 %264(ptr noundef %dev, i32 noundef 138364, i32 noundef 1, i32 noundef 8192) #5
  %265 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %bus, align 4
  %rmw228.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %266, i32 0, i32 2
  %267 = ptrtoint ptr %rmw228.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %rmw228.i.i, align 4
  %call229.i.i = tail call i32 %268(ptr noundef %dev, i32 noundef 138376, i32 noundef 3, i32 noundef 8192) #5
  %269 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %bus, align 4
  %rmw231.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %270, i32 0, i32 2
  %271 = ptrtoint ptr %rmw231.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %rmw231.i.i, align 4
  %call232.i.i = tail call i32 %272(ptr noundef %dev, i32 noundef 137440, i32 noundef -2147483648, i32 noundef 0) #5
  %273 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %bus, align 4
  %rmw234.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %274, i32 0, i32 2
  %275 = ptrtoint ptr %rmw234.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %rmw234.i.i, align 4
  %call235.i.i = tail call i32 %276(ptr noundef %dev, i32 noundef 137336, i32 noundef 0, i32 noundef 1073741824) #5
  %277 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %bus, align 4
  %rmw237.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %278, i32 0, i32 2
  %279 = ptrtoint ptr %rmw237.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %rmw237.i.i, align 4
  %call238.i.i = tail call i32 %280(ptr noundef %dev, i32 noundef 137368, i32 noundef 16777215, i32 noundef 102400) #5
  %281 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %bus, align 4
  %wr240.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %wr240.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %wr240.i.i, align 4
  tail call void %284(ptr noundef %dev, i32 noundef 137380, i32 noundef 0) #5
  %285 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %bus, align 4
  %rmw242.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %286, i32 0, i32 2
  %287 = ptrtoint ptr %rmw242.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %rmw242.i.i, align 4
  %call243.i.i = tail call i32 %288(ptr noundef %dev, i32 noundef 136704, i32 noundef 0, i32 noundef 8388608) #5
  %call.i.i68.i = tail call i32 @mt7603_reg_map(ptr noundef %dev, i32 noundef -2146697216) #5
  %add.i.i.i = add i32 %call.i.i68.i, 64
  %289 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %bus, align 4
  %wr.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %290, i32 0, i32 1
  %291 = ptrtoint ptr %wr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %wr.i.i.i, align 4
  tail call void %292(ptr noundef %dev, i32 noundef %add.i.i.i, i32 noundef 0) #5
  %293 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %bus, align 4
  %wr.1.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %294, i32 0, i32 1
  %295 = ptrtoint ptr %wr.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %wr.1.i.i.i, align 4
  %add16.1.i.i.i = add i32 %call.i.i68.i, 68
  tail call void %296(ptr noundef %dev, i32 noundef %add16.1.i.i.i, i32 noundef 30720) #5
  %297 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %bus, align 4
  %wr.2.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %298, i32 0, i32 1
  %299 = ptrtoint ptr %wr.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %wr.2.i.i.i, align 4
  %add16.2.i.i.i = add i32 %call.i.i68.i, 72
  tail call void %300(ptr noundef %dev, i32 noundef %add16.2.i.i.i, i32 noundef 0) #5
  %301 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %bus, align 4
  %wr.3.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %wr.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %wr.3.i.i.i, align 4
  %add16.3.i.i.i = add i32 %call.i.i68.i, 76
  tail call void %304(ptr noundef %dev, i32 noundef %add16.3.i.i.i, i32 noundef 8192) #5
  %305 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %bus, align 4
  %wr.4.i.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %306, i32 0, i32 1
  %307 = ptrtoint ptr %wr.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %wr.4.i.i.i, align 4
  %add16.4.i.i.i = add i32 %call.i.i68.i, 80
  tail call void %308(ptr noundef %dev, i32 noundef %add16.4.i.i.i, i32 noundef 0) #5
  %call244.i.i = tail call i32 @mt7603_reg_map(ptr noundef %dev, i32 noundef -2146697216) #5
  %309 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %bus, align 4
  %rmw246.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %310, i32 0, i32 2
  %311 = ptrtoint ptr %rmw246.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %rmw246.i.i, align 4
  %add.i.i = add i32 %call244.i.i, 104
  %call247.i.i = tail call i32 %312(ptr noundef %dev, i32 noundef %add.i.i, i32 noundef 0, i32 noundef 7) #5
  %313 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %bus, align 4
  %rmw249.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %314, i32 0, i32 2
  %315 = ptrtoint ptr %rmw249.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %rmw249.i.i, align 4
  %call250.i.i = tail call i32 %316(ptr noundef %dev, i32 noundef 138244, i32 noundef 0, i32 noundef 14336) #5
  %317 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %bus, align 4
  %rmw252.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %318, i32 0, i32 2
  %319 = ptrtoint ptr %rmw252.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %rmw252.i.i, align 4
  %call269.i.i = tail call i32 %320(ptr noundef %dev, i32 noundef 135764, i32 noundef -33554432, i32 noundef 100663296) #5
  %321 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %bus, align 4
  %rmw271.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %322, i32 0, i32 2
  %323 = ptrtoint ptr %rmw271.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %rmw271.i.i, align 4
  %call272.i.i = tail call i32 %324(ptr noundef %dev, i32 noundef 136884, i32 noundef 0, i32 noundef 8388608) #5
  %325 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %bus, align 4
  %rmw274.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %326, i32 0, i32 2
  %327 = ptrtoint ptr %rmw274.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %rmw274.i.i, align 4
  %call291.i.i = tail call i32 %328(ptr noundef %dev, i32 noundef 136860, i32 noundef -1073741824, i32 noundef -2147483648) #5
  %329 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %bus, align 4
  %wr293.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %330, i32 0, i32 1
  %331 = ptrtoint ptr %wr293.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %wr293.i.i, align 4
  tail call void %332(ptr noundef %dev, i32 noundef 136864, i32 noundef 4) #5
  %333 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %bus, align 4
  %wr295.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %334, i32 0, i32 1
  %335 = ptrtoint ptr %wr295.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %wr295.i.i, align 4
  tail call void %336(ptr noundef %dev, i32 noundef 138352, i32 noundef -1073741824) #5
  %337 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %bus, align 4
  %wr297.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %338, i32 0, i32 1
  %339 = ptrtoint ptr %wr297.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %wr297.i.i, align 4
  tail call void %340(ptr noundef %dev, i32 noundef 138368, i32 noundef 73472) #5
  %341 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %bus, align 4
  %wr316.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %342, i32 0, i32 1
  %343 = ptrtoint ptr %wr316.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %wr316.i.i, align 4
  tail call void %344(ptr noundef %dev, i32 noundef 138372, i32 noundef 73599) #5
  %345 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %bus, align 4
  %wr336.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %346, i32 0, i32 1
  %347 = ptrtoint ptr %wr336.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %wr336.i.i, align 4
  tail call void %348(ptr noundef %dev, i32 noundef 9472, i32 noundef -1526726656) #5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %mt7603_dma_sched_init.exit.i
  %i.0863.i.i = phi i32 [ 0, %mt7603_dma_sched_init.exit.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  tail call void @mt7603_wtbl_clear(ptr noundef %dev, i32 noundef %i.0863.i.i) #5
  %inc.i.i = add nuw nsw i32 %i.0863.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 128
  br i1 %exitcond.not.i.i, label %if.end34, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end34:                                         ; preds = %for.body.i.i
  %349 = call ptr @memset(ptr %bc_addr.i.i, i32 255, i32 6)
  call void @mt7603_wtbl_init(ptr noundef %dev, i32 noundef 127, i32 noundef -1, ptr noundef nonnull %bc_addr.i.i) #5
  %global_sta.i.i = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 5
  %idx.i.i = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 5, i32 0, i32 6
  %350 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 127, ptr %idx.i.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  %arrayidx366.i.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 37, i32 127
  %351 = ptrtoint ptr %arrayidx366.i.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store volatile ptr %global_sta.i.i, ptr %arrayidx366.i.i, align 4
  %352 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %bus, align 4
  %rmw378.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %353, i32 0, i32 2
  %354 = ptrtoint ptr %rmw378.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %rmw378.i.i, align 4
  %call395.i.i = call i32 %355(ptr noundef %dev, i32 noundef 147488, i32 noundef -536870912, i32 noundef 1073741824) #5
  %356 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %bus, align 4
  %rmw397.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %357, i32 0, i32 2
  %358 = ptrtoint ptr %rmw397.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %rmw397.i.i, align 4
  %call414.i.i = call i32 %359(ptr noundef %dev, i32 noundef 137336, i32 noundef 50331648, i32 noundef 33554432) #5
  %360 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %bus, align 4
  %wr416.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %361, i32 0, i32 1
  %362 = ptrtoint ptr %wr416.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %wr416.i.i, align 4
  call void %363(ptr noundef %dev, i32 noundef 135700, i32 noundef 286335527) #5
  %364 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %bus, align 4
  %wr553.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %365, i32 0, i32 1
  %366 = ptrtoint ptr %wr553.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %wr553.i.i, align 4
  call void %367(ptr noundef %dev, i32 noundef 135704, i32 noundef 286331153) #5
  %368 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %bus, align 4
  %wr690.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %369, i32 0, i32 1
  %370 = ptrtoint ptr %wr690.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %wr690.i.i, align 4
  call void %371(ptr noundef %dev, i32 noundef 135696, i32 noundef 4784640) #5
  %372 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %bus, align 4
  %rmw743.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %373, i32 0, i32 2
  %374 = ptrtoint ptr %rmw743.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %rmw743.i.i, align 4
  %call744.i.i = call i32 %375(ptr noundef %dev, i32 noundef 143368, i32 noundef 0, i32 noundef 8388608) #5
  %376 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %bus, align 4
  %rmw746.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %377, i32 0, i32 2
  %378 = ptrtoint ptr %rmw746.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %rmw746.i.i, align 4
  %call747.i.i = call i32 %379(ptr noundef %dev, i32 noundef 137732, i32 noundef 3, i32 noundef 0) #5
  %380 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %bus, align 4
  %rmw749.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %381, i32 0, i32 2
  %382 = ptrtoint ptr %rmw749.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %rmw749.i.i, align 4
  %call750.i.i = call i32 %383(ptr noundef %dev, i32 noundef 137732, i32 noundef 262144, i32 noundef 0) #5
  %384 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %bus, align 4
  %rmw755.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %385, i32 0, i32 2
  %386 = ptrtoint ptr %rmw755.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %rmw755.i.i, align 4
  %call780.i.i = call i32 %387(ptr noundef %dev, i32 noundef 147616, i32 noundef 1048575, i32 noundef 4116) #5
  %388 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %bus, align 4
  %rmw755.1.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %389, i32 0, i32 2
  %390 = ptrtoint ptr %rmw755.1.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %rmw755.1.i.i, align 4
  %call780.1.i.i = call i32 %391(ptr noundef %dev, i32 noundef 147616, i32 noundef 1048575, i32 noundef 8232) #5
  %392 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %bus, align 4
  %rmw755.2.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %393, i32 0, i32 2
  %394 = ptrtoint ptr %rmw755.2.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %rmw755.2.i.i, align 4
  %call780.2.i.i = call i32 %395(ptr noundef %dev, i32 noundef 147616, i32 noundef 1048575, i32 noundef 12348) #5
  %396 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %bus, align 4
  %rmw755.3.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %397, i32 0, i32 2
  %398 = ptrtoint ptr %rmw755.3.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %rmw755.3.i.i, align 4
  %call780.3.i.i = call i32 %399(ptr noundef %dev, i32 noundef 147616, i32 noundef 1048575, i32 noundef 16464) #5
  %400 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %bus, align 4
  %rmw755.4.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %401, i32 0, i32 2
  %402 = ptrtoint ptr %rmw755.4.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %rmw755.4.i.i, align 4
  %call780.4.i.i = call i32 %403(ptr noundef %dev, i32 noundef 147616, i32 noundef 1048575, i32 noundef 20580) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bc_addr.i.i) #5
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %404 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %404)
  store i16 4, ptr %queues, align 4
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 14
  %405 = ptrtoint ptr %max_rates to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 3, ptr %max_rates, align 1
  %max_report_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 15
  %406 = ptrtoint ptr %max_report_rates to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 7, ptr %max_report_rates, align 2
  %max_rate_tries = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 16
  %407 = ptrtoint ptr %max_rate_tries to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 11, ptr %max_rate_tries, align 1
  %radiotap_timestamp = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 23
  %408 = ptrtoint ptr %radiotap_timestamp to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 1, ptr %radiotap_timestamp, align 8
  %sta_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 8
  %409 = ptrtoint ptr %sta_data_size to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 416, ptr %sta_data_size, align 8
  %vif_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 7
  %410 = ptrtoint ptr %vif_data_size to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 420, ptr %vif_data_size, align 4
  %iface_combinations = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 5
  %411 = ptrtoint ptr %iface_combinations to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr @if_comb, ptr %iface_combinations, align 16
  %n_iface_combinations = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 6
  %412 = ptrtoint ptr %n_iface_combinations to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 1, ptr %n_iface_combinations, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 4
  %add.ptr.i.i = getelementptr %struct.ieee80211_hw, ptr %1, i32 0, i32 4, i32 1
  %413 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %add.ptr.i.i, align 4
  %415 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %flags.i, align 4
  %or.i.i90 = or i32 %416, 4
  store i32 %or.i.i90, ptr %flags.i, align 4
  %or.i.i93 = or i32 %414, 8193
  store i32 %or.i.i93, ptr %add.ptr.i.i, align 4
  %brightness_set = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 50, i32 5
  %417 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr @mt7603_led_set_brightness, ptr %brightness_set, align 4
  %blink_set = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 50, i32 8
  %418 = ptrtoint ptr %blink_set to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr @mt7603_led_set_blink, ptr %blink_set, align 4
  %reg_notifier = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 54
  %419 = ptrtoint ptr %reg_notifier to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr @mt7603_regd_notifier, ptr %reg_notifier, align 8
  %call36 = call i32 @mt76_register_device(ptr noundef %dev, i1 noundef zeroext true, ptr noundef nonnull @mt76_rates, i32 noundef 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  call void @mt7603_init_debugfs(ptr noundef %dev) #5
  %sband_2g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 10
  %eeprom1.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %420 = ptrtoint ptr %eeprom1.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %eeprom1.i, align 16
  %arrayidx.i = getelementptr i8, ptr %421, i32 88
  %422 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %421, i32 160
  %arrayidx3.i = getelementptr i8, ptr %421, i32 53
  %424 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %arrayidx3.i, align 1
  %426 = and i8 %425, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %426)
  %tobool.not.i94 = icmp eq i8 %426, 0
  br i1 %tobool.not.i94, label %if.end39.if.end.i95_crit_edge, label %land.lhs.true.i

if.end39.if.end.i95_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i95

land.lhs.true.i:                                  ; preds = %if.end39
  %427 = ptrtoint ptr %rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %rev.i.i.i.i, align 4
  %shr.i.mask.i.i = and i32 %428, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1979908096, i32 %shr.i.mask.i.i)
  %cmp.i.i = icmp eq i32 %shr.i.mask.i.i, 1979908096
  br i1 %cmp.i.i, label %if.then.i, label %land.lhs.true.i.if.end.i95_crit_edge

land.lhs.true.i.if.end.i95_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i95

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9.i = getelementptr i8, ptr %421, i32 242
  %429 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %arrayidx9.i, align 1
  br label %if.end.i95

if.end.i95:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end.i95_crit_edge, %if.end39.if.end.i95_crit_edge
  %target_power.0.in.in.i = phi i8 [ %430, %if.then.i ], [ %423, %land.lhs.true.i.if.end.i95_crit_edge ], [ %423, %if.end39.if.end.i95_crit_edge ]
  %target_power.0.in.i = and i8 %target_power.0.in.in.i, 127
  %target_power.0.i = zext i8 %target_power.0.in.i to i32
  %and15.i = and i32 %target_power.0.i, 63
  br label %for.body.i

for.body.i:                                       ; preds = %mt7603_txpower_signed.exit.i.for.body.i_crit_edge, %if.end.i95
  %i.076.i = phi i32 [ 0, %if.end.i95 ], [ %inc.i99, %mt7603_txpower_signed.exit.i.for.body.i_crit_edge ]
  %max_offset.075.i = phi i32 [ 0, %if.end.i95 ], [ %433, %mt7603_txpower_signed.exit.i.for.body.i_crit_edge ]
  %arrayidx18.i = getelementptr i8, ptr %arrayidx2.i, i32 %i.076.i
  %431 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %432 to i32
  %and1.i.i = and i32 %conv19.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %for.body.i.mt7603_txpower_signed.exit.i_crit_edge, label %if.end.i.i

for.body.i.mt7603_txpower_signed.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt7603_txpower_signed.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i96 = and i32 %conv19.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i96)
  %tobool.not.i.i = icmp eq i32 %and.i.i96, 0
  %and3.i.i = and i32 %conv19.i, 63
  %sub.i.i97 = sub nsw i32 0, %and3.i.i
  %spec.select.i.i98 = select i1 %tobool.not.i.i, i32 %sub.i.i97, i32 %and3.i.i
  br label %mt7603_txpower_signed.exit.i

mt7603_txpower_signed.exit.i:                     ; preds = %if.end.i.i, %for.body.i.mt7603_txpower_signed.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %spec.select.i.i98, %if.end.i.i ], [ 0, %for.body.i.mt7603_txpower_signed.exit.i_crit_edge ]
  %433 = call i32 @llvm.smax.i32(i32 %max_offset.075.i, i32 %retval.0.i.i) #5
  %inc.i99 = add nuw nsw i32 %i.076.i, 1
  %exitcond.not.i100 = icmp eq i32 %inc.i99, 14
  br i1 %exitcond.not.i100, label %for.end.i101, label %mt7603_txpower_signed.exit.i.for.body.i_crit_edge

mt7603_txpower_signed.exit.i.for.body.i_crit_edge: ; preds = %mt7603_txpower_signed.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i101:                                     ; preds = %mt7603_txpower_signed.exit.i
  %and12.i = and i32 %target_power.0.i, 64
  %sub.i = sub nsw i32 0, %and15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %target_power.1.i = select i1 %tobool13.not.i, i32 %target_power.0.i, i32 %sub.i
  %add.i = add i32 %433, %target_power.1.i
  %conv23.i = trunc i32 %add.i to i8
  %tx_power_limit.i = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 16
  %434 = ptrtoint ptr %tx_power_limit.i to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %conv23.i, ptr %tx_power_limit.i, align 2
  %txpower_cur.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 14
  %435 = ptrtoint ptr %txpower_cur.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 %add.i, ptr %txpower_cur.i, align 4
  %sub25.i = add i32 %add.i, 1
  %div.i = sdiv i32 %sub25.i, 2
  %436 = ptrtoint ptr %antenna_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %antenna_mask.i.i, align 8
  %438 = and i8 %437, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %438)
  %tobool28.not.i = icmp eq i8 %438, 0
  %add30.i = add nsw i32 %div.i, 3
  %spec.select.i = select i1 %tobool28.not.i, i32 %div.i, i32 %add30.i
  %n_channels.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 10, i32 0, i32 3
  %439 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %440)
  %cmp3377.i = icmp sgt i32 %440, 0
  br i1 %cmp3377.i, label %for.end.i101.for.body35.i_crit_edge, label %for.end.i101.cleanup_crit_edge

for.end.i101.cleanup_crit_edge:                   ; preds = %for.end.i101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.i101.for.body35.i_crit_edge:              ; preds = %for.end.i101
  br label %for.body35.i

for.body35.i:                                     ; preds = %for.body35.i.for.body35.i_crit_edge, %for.end.i101.for.body35.i_crit_edge
  %i.178.i = phi i32 [ %inc45.i, %for.body35.i.for.body35.i_crit_edge ], [ 0, %for.end.i101.for.body35.i_crit_edge ]
  %441 = ptrtoint ptr %sband_2g to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %sband_2g, align 4
  %max_reg_power.i = getelementptr %struct.ieee80211_channel, ptr %442, i32 %i.178.i, i32 7
  %443 = ptrtoint ptr %max_reg_power.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %max_reg_power.i, align 4
  %445 = call i32 @llvm.smin.i32(i32 %444, i32 %spec.select.i) #5
  %max_power.i = getelementptr %struct.ieee80211_channel, ptr %442, i32 %i.178.i, i32 6
  %446 = ptrtoint ptr %max_power.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %445, ptr %max_power.i, align 4
  %orig_mpwr.i = getelementptr %struct.ieee80211_channel, ptr %442, i32 %i.178.i, i32 11
  %447 = ptrtoint ptr %orig_mpwr.i to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 %spec.select.i, ptr %orig_mpwr.i, align 4
  %inc45.i = add nuw nsw i32 %i.178.i, 1
  %448 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %n_channels.i, align 4
  %cmp33.i = icmp slt i32 %inc45.i, %449
  br i1 %cmp33.i, label %for.body35.i.for.body35.i_crit_edge, label %for.body35.i.cleanup_crit_edge

for.body35.i.cleanup_crit_edge:                   ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body35.i.for.body35.i_crit_edge:              ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body35.i

cleanup:                                          ; preds = %for.body35.i.cleanup_crit_edge, %for.end.i101.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call36, %if.end34.cleanup_crit_edge ], [ 0, %for.end.i101.cleanup_crit_edge ], [ %call28.i, %for.end.i.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %for.body35.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_rr(ptr noundef %mdev, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 1048576
  br i1 %cmp.i, label %entry.__mt7603_reg_addr.exit_crit_edge, label %if.end.i

entry.__mt7603_reg_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__mt7603_reg_addr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @mt7603_reg_map(ptr noundef %mdev, i32 noundef %offset) #5
  br label %__mt7603_reg_addr.exit

__mt7603_reg_addr.exit:                           ; preds = %if.end.i, %entry.__mt7603_reg_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ %offset, %entry.__mt7603_reg_addr.exit_crit_edge ]
  %bus_ops = getelementptr inbounds %struct.mt7603_dev, ptr %mdev, i32 0, i32 1
  %0 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_ops, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 %3(ptr noundef %mdev, i32 noundef %retval.0.i) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_wr(ptr noundef %mdev, i32 noundef %offset, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 1048576
  br i1 %cmp.i, label %entry.__mt7603_reg_addr.exit_crit_edge, label %if.end.i

entry.__mt7603_reg_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__mt7603_reg_addr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @mt7603_reg_map(ptr noundef %mdev, i32 noundef %offset) #5
  br label %__mt7603_reg_addr.exit

__mt7603_reg_addr.exit:                           ; preds = %if.end.i, %entry.__mt7603_reg_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ %offset, %entry.__mt7603_reg_addr.exit_crit_edge ]
  %bus_ops = getelementptr inbounds %struct.mt7603_dev, ptr %mdev, i32 0, i32 1
  %0 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_ops, align 128
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  tail call void %3(ptr noundef %mdev, i32 noundef %retval.0.i, i32 noundef %val) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_rmw(ptr noundef %mdev, i32 noundef %offset, i32 noundef %mask, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %offset)
  %cmp.i = icmp ult i32 %offset, 1048576
  br i1 %cmp.i, label %entry.__mt7603_reg_addr.exit_crit_edge, label %if.end.i

entry.__mt7603_reg_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__mt7603_reg_addr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @mt7603_reg_map(ptr noundef %mdev, i32 noundef %offset) #5
  br label %__mt7603_reg_addr.exit

__mt7603_reg_addr.exit:                           ; preds = %if.end.i, %entry.__mt7603_reg_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ %offset, %entry.__mt7603_reg_addr.exit_crit_edge ]
  %bus_ops = getelementptr inbounds %struct.mt7603_dev, ptr %mdev, i32 0, i32 1
  %0 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_ops, align 128
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call1 = tail call i32 %3(ptr noundef %mdev, i32 noundef %retval.0.i, i32 noundef %mask, i32 noundef %val) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_mac_work(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_pre_tbtt_tasklet(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_led_set_brightness(ptr noundef %led_cdev, i32 noundef %brightness) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -10332
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool.not = icmp eq i32 %brightness, 0
  %led_pin.i = getelementptr i8, ptr %led_cdev, i32 433
  %0 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %led_pin.i, align 1
  %conv59.i = zext i8 %1 to i32
  %mul.i = shl nuw nsw i32 %conv59.i, 3
  %add60.i = add nuw nsw i32 %mul.i, -2147336176
  %call.i = tail call i32 @mt7603_reg_map(ptr noundef %add.ptr, i32 noundef %add60.i) #5
  %bus.i = getelementptr i8, ptr %led_cdev, i32 -9360
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr.i, align 4
  %. = select i1 %tobool.not, i32 -16711681, i32 16777215
  tail call void %5(ptr noundef %add.ptr, i32 noundef %call.i, i32 noundef %.) #5
  %6 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %led_pin.i, align 1
  %conv62.i9 = zext i8 %7 to i32
  %mul63.i10 = shl nuw nsw i32 %conv62.i9, 3
  %add65.i11 = add nuw nsw i32 %mul63.i10, -2147336172
  %call66.i12 = tail call i32 @mt7603_reg_map(ptr noundef %add.ptr, i32 noundef %add65.i11) #5
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %wr68.i13 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr68.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr68.i13, align 4
  tail call void %11(ptr noundef %add.ptr, i32 noundef %call66.i12, i32 noundef %.) #5
  %12 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %led_pin.i, align 1
  %conv70.i14 = zext i8 %13 to i32
  %mul71.i15 = shl nuw nsw i32 %conv70.i14, 3
  %shl73.i16 = shl nuw i32 1, %mul71.i15
  %add77.i17 = or i32 %mul71.i15, 7
  %shl78.i18 = shl nuw i32 1, %add77.i17
  %or79.i19 = or i32 %shl78.i18, %shl73.i16
  %led_al.i20 = getelementptr i8, ptr %led_cdev, i32 432
  %14 = ptrtoint ptr %led_al.i20 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %led_al.i20, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool80.not.i21 = icmp eq i8 %15, 0
  %add85.i22 = or i32 %mul71.i15, 1
  %shl86.i23 = shl nuw i32 1, %add85.i22
  %or87.i24 = select i1 %tobool80.not.i21, i32 0, i32 %shl86.i23
  %val.0.i25 = or i32 %or79.i19, %or87.i24
  %call89.i26 = tail call i32 @mt7603_reg_map(ptr noundef %add.ptr, i32 noundef -2147336192) #5
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 4
  %wr91.i27 = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr91.i27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr91.i27, align 4
  tail call void %19(ptr noundef %add.ptr, i32 noundef %call89.i26, i32 noundef %val.0.i25) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_led_set_blink(ptr noundef %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_off, align 4
  %div = udiv i32 %1, 10
  %conv2 = and i32 %div, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp.not = icmp eq i32 %conv2, 0
  %2 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_on, align 4
  %div8 = udiv i32 %3, 10
  %conv11 = and i32 %div8, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv11)
  %cmp13.not = icmp eq i32 %conv11, 0
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -10332
  %4 = shl i32 %div, 24
  %5 = shl i32 %div8, 16
  %.op = and i32 %5, 16711680
  %shl56.i = select i1 %cmp13.not, i32 65536, i32 %.op
  %.op27 = or i32 %4, 65535
  %or.i = select i1 %cmp.not, i32 16842751, i32 %.op27
  %or58.i = or i32 %or.i, %shl56.i
  %led_pin.i = getelementptr i8, ptr %led_cdev, i32 433
  %6 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %led_pin.i, align 1
  %conv59.i = zext i8 %7 to i32
  %mul.i = shl nuw nsw i32 %conv59.i, 3
  %add60.i = add nuw nsw i32 %mul.i, -2147336176
  %call.i = tail call i32 @mt7603_reg_map(ptr noundef %add.ptr, i32 noundef %add60.i) #5
  %bus.i = getelementptr i8, ptr %led_cdev, i32 -9360
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr.i, align 4
  tail call void %11(ptr noundef %add.ptr, i32 noundef %call.i, i32 noundef %or58.i) #5
  %12 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %led_pin.i, align 1
  %conv62.i = zext i8 %13 to i32
  %mul63.i = shl nuw nsw i32 %conv62.i, 3
  %add65.i = add nuw nsw i32 %mul63.i, -2147336172
  %call66.i = tail call i32 @mt7603_reg_map(ptr noundef %add.ptr, i32 noundef %add65.i) #5
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 4
  %wr68.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wr68.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wr68.i, align 4
  tail call void %17(ptr noundef %add.ptr, i32 noundef %call66.i, i32 noundef %or58.i) #5
  %18 = ptrtoint ptr %led_pin.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %led_pin.i, align 1
  %conv70.i = zext i8 %19 to i32
  %mul71.i = shl nuw nsw i32 %conv70.i, 3
  %shl73.i = shl nuw i32 1, %mul71.i
  %add77.i = or i32 %mul71.i, 7
  %shl78.i = shl nuw i32 1, %add77.i
  %or79.i = or i32 %shl78.i, %shl73.i
  %led_al.i = getelementptr i8, ptr %led_cdev, i32 432
  %20 = ptrtoint ptr %led_al.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %led_al.i, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool80.not.i = icmp eq i8 %21, 0
  %add85.i = or i32 %mul71.i, 1
  %shl86.i = shl nuw i32 1, %add85.i
  %or87.i = select i1 %tobool80.not.i, i32 0, i32 %shl86.i
  %val.0.i = or i32 %or79.i, %or87.i
  %call89.i = tail call i32 @mt7603_reg_map(ptr noundef %add.ptr, i32 noundef -2147336192) #5
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 4
  %wr91.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wr91.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr91.i, align 4
  tail call void %25(ptr noundef %add.ptr, i32 noundef %call89.i, i32 noundef %val.0.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_regd_notifier(ptr noundef %wiphy, ptr nocapture noundef readonly %request) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #5
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dfs_region = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 5
  %2 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dfs_region, align 4
  %region = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %region, align 4
  %ed_monitor_enabled = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %ed_monitor_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ed_monitor_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %spec.select = select i1 %tobool.not, i1 %cmp, i1 false
  %conv3 = zext i1 %spec.select to i8
  %ed_monitor = getelementptr inbounds %struct.mt7603_dev, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %ed_monitor to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %ed_monitor, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_register_device(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_init_debugfs(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_unregister_device(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pre_tbtt_tasklet = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 41
  %count.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 41, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @tasklet_unlock_wait(ptr noundef %pre_tbtt_tasklet) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @mt76_unregister_device(ptr noundef %dev) #5
  tail call void @mt7603_mcu_exit(ptr noundef %dev) #5
  tail call void @mt7603_dma_cleanup(ptr noundef %dev) #5
  tail call void @mt76_free_device(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_mcu_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_dma_cleanup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_free_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7603_reg_map(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7603_eeprom_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7603_dma_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_mac_dma_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7603_mcu_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7603_mcu_set_eeprom(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_wtbl_clear(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_wtbl_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !12, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @mt7603_drv_ops, !1, !"mt7603_drv_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/init.c", i32 8, i32 30}
!2 = !{ptr @mt7603_register_device.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/init.c", i32 504, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mt7603_register_device.__key.1, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/init.c", i32 505, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mt7603_register_device.__key.3, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/init.c", i32 507, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mt7603_register_device.__key.5, !9, !"__key", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @if_comb, !14, !"if_comb", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/init.c", i32 323, i32 49}
!15 = !{ptr @if_limits, !16, !"if_limits", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/init.c", i32 307, i32 43}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2159088692}
!27 = !{i8 0, i8 2}
!28 = !{i64 2148381206, i64 2148381232, i64 2148381261, i64 2148381295, i64 2148381326, i64 2148381349}
!29 = !{i64 2155270749}
!30 = !{i64 2155271391}
