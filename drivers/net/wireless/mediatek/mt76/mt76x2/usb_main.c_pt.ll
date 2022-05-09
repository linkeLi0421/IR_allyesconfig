; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x2/usb_main.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x2/usb_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.146], ptr }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.145 }
%struct.anon.145 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.146 = type { ptr, ptr, i16 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.151, ptr, %union.anon.152, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.147, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.147 = type { ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.148, i32 }
%union.anon.148 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.149 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.151 = type { ptr, i32 }
%union.anon.152 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt76x02_dev = type { %union.anon.142, [8 x %struct.mac_address], %struct.mutex, i8, %struct.anon.154, %struct.spinlock, i32, i32, ptr, %struct.delayed_work, %struct.delayed_work, %struct.hrtimer, %struct.work_struct, ptr, i8, i8, i32, i8, i8, %struct.mt76x02_calibration, i32, i8, [2 x i8], i8, i8, i16, i8, %struct.mt76x02_dfs_pattern_detector, i32, i8, i8, i8, i8, i8, i8, i64, [16 x i8] }
%union.anon.142 = type { %struct.mt76_dev }
%struct.mac_address = type { [6 x i8] }
%struct.anon.154 = type { %union.anon.155, [0 x %struct.mt76x02_tx_status] }
%union.anon.155 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.mt76x02_tx_status = type { i8, i8, i8, i8, i16 }
%struct.mt76x02_calibration = type { %struct.mt76x02_rx_freq_cal, [2 x i8], [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8 }
%struct.mt76x02_rx_freq_cal = type { [2 x i8], [2 x i8], i8, i32, i16, i8 }
%struct.mt76x02_dfs_pattern_detector = type { i8, i32, %struct.mt76x02_dfs_sw_detector_params, [2 x %struct.mt76x02_dfs_event_rb], %struct.list_head, %struct.list_head, %struct.mt76x02_dfs_seq_stats, i32, i32, [4 x %struct.mt76x02_dfs_engine_stats], %struct.tasklet_struct }
%struct.mt76x02_dfs_sw_detector_params = type { i32, i32, i32 }
%struct.mt76x02_dfs_event_rb = type { [256 x %struct.mt76x02_dfs_event], i32, i32 }
%struct.mt76x02_dfs_event = type { i32, i32, i16, i8 }
%struct.mt76x02_dfs_seq_stats = type { i32, i32 }
%struct.mt76x02_dfs_engine_stats = type { i32, i32, i32 }
%struct.mt76x02_beacon_ops = type { i32, i32, ptr, ptr }

@mt76x2u_ops = dso_local constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @mt76x02_tx, ptr @mt76x2u_start, ptr @mt76x2u_stop, ptr null, ptr null, ptr null, ptr @mt76x02_add_interface, ptr null, ptr @mt76x02_remove_interface, ptr @mt76x2u_config, ptr @mt76x02_bss_info_changed, ptr null, ptr null, ptr null, ptr @mt76x02_configure_filter, ptr null, ptr @mt76_set_tim, ptr @mt76x02_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_sw_scan, ptr @mt76x02_sw_scan_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_sta_state, ptr @mt76_sta_pre_rcu_remove, ptr null, ptr @mt76x02_sta_rate_tbl_update, ptr null, ptr @mt76x02_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76x02_ampdu_action, ptr @mt76_get_survey, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_get_antenna, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_release_buffered_frames, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76_get_txpower, ptr null, ptr null, ptr null, ptr @mt76_wake_tx_queue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt76x2_set_sar_specs, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"mt76x2u_ops\00", align 1
@___asan_gen_.2 = private constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_main.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 105, i32 28 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @mt76x2u_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_tx(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x2u_start(ptr nocapture noundef readonly %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @mt76x02u_mac_start(ptr noundef %1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %3, ptr noundef %mac_work, i32 noundef 10) #2
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt76x2u_stop(ptr nocapture noundef readonly %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #2
  tail call void @mt76u_stop_tx(ptr noundef %1) #2
  tail call void @mt76x2u_stop_hw(ptr noundef %1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_add_interface(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_remove_interface(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76x2u_config(ptr noundef %hw, i32 noundef %changed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #2
  %and = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw, align 8
  %rxfilter = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 55
  %4 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxfilter, align 16
  %and5 = and i32 %5, -5
  %and1 = shl i32 %3, 2
  %6 = and i32 %and1, 4
  %7 = or i32 %6, %and5
  %and5.sink = xor i32 %7, 4
  store i32 %and5.sink, ptr %rxfilter, align 16
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr, align 4
  tail call void %11(ptr noundef %1, i32 noundef 5120, i32 noundef %and5.sink) #2
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %and8 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end19_crit_edge, label %if.then10

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

if.then10:                                        ; preds = %if.end7
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_level, align 4
  %mul = shl i32 %13, 1
  %txpower_conf = getelementptr inbounds %struct.mt76x02_dev, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %txpower_conf to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %txpower_conf, align 64
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chandef, align 4
  %call = tail call i32 @mt76_get_sar_power(ptr noundef %1, ptr noundef %16, i32 noundef %mul) #2
  %sub = add i32 %call, -6
  %17 = ptrtoint ptr %txpower_conf to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %txpower_conf, align 64
  %state = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not = icmp eq i32 %20, 0
  br i1 %tobool16.not, label %if.then10.if.end19_crit_edge, label %if.then17

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

if.then17:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @mt76x2_phy_set_txpower(ptr noundef %1) #2
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then10.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #2
  %and21 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end27_crit_edge, label %if.then23

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end27

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #2
  %chandef25 = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %cal_work.i = getelementptr inbounds %struct.mt76x02_dev, ptr %1, i32 0, i32 9
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cal_work.i) #2
  %beacon_ops.i = getelementptr inbounds %struct.mt76x02_dev, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %beacon_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %beacon_ops.i, align 4
  %pre_tbtt_enable.i = getelementptr inbounds %struct.mt76x02_beacon_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %pre_tbtt_enable.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pre_tbtt_enable.i, align 4
  tail call void %24(ptr noundef %1, i1 noundef zeroext false) #2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #2
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state.i) #2
  tail call void @mt76_set_channel(ptr noundef %1) #2
  tail call void @mt76x2_mac_stop(ptr noundef %1, i1 noundef zeroext false) #2
  %call1.i = tail call i32 @mt76x2u_phy_set_channel(ptr noundef %1, ptr noundef %chandef25) #2
  tail call void @mt76x02_mac_cc_reset(ptr noundef %1) #2
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i.i, align 4
  %wr.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr.i.i, align 4
  tail call void %28(ptr noundef %1, i32 noundef 4100, i32 noundef 12) #2
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state.i) #2
  tail call void @mutex_unlock(ptr noundef %mutex) #2
  %29 = ptrtoint ptr %beacon_ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %beacon_ops.i, align 4
  %pre_tbtt_enable5.i = getelementptr inbounds %struct.mt76x02_beacon_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %pre_tbtt_enable5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pre_tbtt_enable5.i, align 4
  tail call void %32(ptr noundef %1, i1 noundef zeroext true) #2
  tail call void @mt76_txq_schedule_all(ptr noundef %1) #2
  tail call void @ieee80211_wake_queues(ptr noundef %hw) #2
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end19.if.end27_crit_edge
  %err.0 = phi i32 [ %call1.i, %if.then23 ], [ 0, %if.end19.if.end27_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_bss_info_changed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_configure_filter(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_set_tim(ptr noundef, ptr noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_set_key(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sw_scan(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_sw_scan_complete(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_sta_state(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_sta_pre_rcu_remove(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_sta_rate_tbl_update(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_conf_tx(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_ampdu_action(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_survey(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_antenna(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_release_buffered_frames(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_txpower(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_wake_tx_queue(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2_set_sar_specs(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02u_mac_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76u_stop_tx(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2u_stop_hw(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_sar_power(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_phy_set_txpower(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_channel(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_mac_stop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2u_phy_set_channel(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_cc_reset(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_txq_schedule_all(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @mt76x2u_ops, !1, !"mt76x2u_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_main.c", i32 105, i32 28}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
