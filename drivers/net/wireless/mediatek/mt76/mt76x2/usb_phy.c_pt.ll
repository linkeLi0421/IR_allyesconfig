; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x2/usb_phy.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x2/usb_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.135], ptr }
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
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.134 }
%struct.anon.134 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76x02_dev = type { %union.anon.0, [8 x %struct.mac_address], %struct.mutex, i8, %struct.anon.146, %struct.spinlock, i32, i32, ptr, %struct.delayed_work, %struct.delayed_work, %struct.hrtimer, %struct.work_struct, ptr, i8, i8, i32, i8, i8, %struct.mt76x02_calibration, i32, i8, [2 x i8], i8, i8, i16, i8, %struct.mt76x02_dfs_pattern_detector, i32, i8, i8, i8, i8, i8, i8, i64, [16 x i8] }
%union.anon.0 = type { %struct.mt76_dev }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.62, i32, %struct.spinlock }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.143 = type { ptr, i32 }
%union.anon.144 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.146 = type { %union.anon.147, [0 x %struct.mt76x02_tx_status] }
%union.anon.147 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.mt76x02_tx_status = type { i8, i8, i8, i8, i16 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mt76x02_calibration = type { %struct.mt76x02_rx_freq_cal, [2 x i8], [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8 }
%struct.mt76x02_rx_freq_cal = type { [2 x i8], [2 x i8], i8, i32, i16, i8 }
%struct.mt76x02_dfs_pattern_detector = type { i8, i32, %struct.mt76x02_dfs_sw_detector_params, [2 x %struct.mt76x02_dfs_event_rb], %struct.list_head, %struct.list_head, %struct.mt76x02_dfs_seq_stats, i32, i32, [4 x %struct.mt76x02_dfs_engine_stats], %struct.tasklet_struct }
%struct.mt76x02_dfs_sw_detector_params = type { i32, i32, i32 }
%struct.mt76x02_dfs_event_rb = type { [256 x %struct.mt76x02_dfs_event], i32, i32 }
%struct.mt76x02_dfs_event = type { i32, i32, i16, i8 }
%struct.mt76x02_dfs_seq_stats = type { i32, i32 }
%struct.mt76x02_dfs_engine_stats = type { i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x2/usb_phy.c\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_phy.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 108, i32 7 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x2u_phy_calibrate(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -11228
  %mutex = getelementptr i8, ptr %work, i32 -10348
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  tail call fastcc void @mt76x2u_phy_channel_calibrate(ptr noundef %add.ptr, i1 noundef zeroext false)
  tail call void @mt76x2_phy_tssi_compensate(ptr noundef %add.ptr) #3
  tail call void @mt76x2_phy_update_channel_gain(ptr noundef %add.ptr) #3
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  tail call void @ieee80211_queue_delayed_work(ptr noundef %1, ptr noundef %work, i32 noundef 100) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76x2u_phy_channel_calibrate(ptr noundef %dev, i1 noundef zeroext %mac_stopped) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chandef = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %channel_cal_done = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 14
  %4 = ptrtoint ptr %channel_cal_done to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %channel_cal_done, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end4_crit_edge, label %mt76x2_channel_silent.exit

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

mt76x2_channel_silent.exit:                       ; preds = %if.end
  %dfs_state.i = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %dfs_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dfs_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i.not = icmp eq i32 %9, 2
  br i1 %cmp.i.not, label %mt76x2_channel_silent.exit.if.end4_crit_edge, label %mt76x2_channel_silent.exit.cleanup_crit_edge

mt76x2_channel_silent.exit.cleanup_crit_edge:     ; preds = %mt76x2_channel_silent.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

mt76x2_channel_silent.exit.if.end4_crit_edge:     ; preds = %mt76x2_channel_silent.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end4:                                          ; preds = %mt76x2_channel_silent.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  br i1 %mac_stopped, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 @mt76x2u_mac_stop(ptr noundef %dev) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  br i1 %cmp, label %if.then10, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %call11 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 6, i32 noundef 0) #3
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %conv = zext i1 %cmp to i32
  %call14 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 7, i32 noundef %conv) #3
  %call17 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 8, i32 noundef %conv) #3
  %call20 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 12, i32 noundef %conv) #3
  %call21 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 2, i32 noundef 0) #3
  %call22 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 15, i32 noundef 0) #3
  br i1 %mac_stopped, label %if.end12.if.end25_crit_edge, label %if.then24

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

if.then24:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr.i, align 4
  tail call void %13(ptr noundef %dev, i32 noundef 4100, i32 noundef 12) #3
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end12.if.end25_crit_edge
  tail call void @mt76x2_apply_gain_adj(ptr noundef %dev) #3
  tail call void @mt76x02_edcca_init(ptr noundef %dev) #3
  %14 = ptrtoint ptr %channel_cal_done to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %channel_cal_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %mt76x2_channel_silent.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_phy_tssi_compensate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_phy_update_channel_gain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2u_phy_set_channel(ptr noundef %dev, ptr nocapture noundef readonly %chandef) local_unnamed_addr #0 align 64 {
entry:
  %ext_cca_chan = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ext_cca_chan) #3
  %0 = getelementptr inbounds [4 x i32], ptr %ext_cca_chan, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %ext_cca_chan, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %ext_cca_chan, i32 0, i32 3
  %3 = ptrtoint ptr %ext_cca_chan to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 484, ptr %ext_cca_chan, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 737, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1054, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2075, ptr %2, align 4
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool = icmp ne i32 %9, 0
  %10 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hw_value, align 2
  %channel_cal_done = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 14
  %14 = ptrtoint ptr %channel_cal_done to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %channel_cal_done, align 4
  %15 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %center_freq, align 4
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %18 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %center_freq1, align 4
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb339
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp = icmp slt i32 %17, %19
  %. = select i1 %cmp, i8 1, i8 3
  %not.cmp = xor i1 %cmp, true
  %.588 = zext i1 %not.cmp to i32
  %sub = select i1 %cmp, i8 2, i8 -2
  %conv337 = trunc i16 %13 to i8
  %add = add i8 %sub, %conv337
  br label %sw.epilog

sw.bb339:                                         ; preds = %entry
  %sub340 = sub i32 %17, %19
  %add341 = add i32 %sub340, 30
  %div = sdiv i32 %add341, 20
  %23 = add i32 %sub340, -50
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99, i32 %23)
  %24 = icmp ult i32 %23, -99
  br i1 %24, label %do.end357, label %sw.bb339.if.end363_crit_edge, !prof !12

sw.bb339.if.end363_crit_edge:                     ; preds = %sw.bb339
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end363

do.end357:                                        ; preds = %sw.bb339
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #3
  br label %if.end363

if.end363:                                        ; preds = %do.end357, %sw.bb339.if.end363_crit_edge
  %spec.select589 = phi i32 [ 0, %do.end357 ], [ %div, %sw.bb339.if.end363_crit_edge ]
  %conv374 = trunc i32 %spec.select589 to i8
  %mul375.neg = mul i32 %spec.select589, 252
  %conv377 = zext i16 %13 to i32
  %sub376 = add nuw nsw i32 %conv377, 6
  %add378 = add i32 %sub376, %mul375.neg
  %conv379 = trunc i32 %add378 to i8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = trunc i16 %13 to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end363, %sw.bb
  %bw.0 = phi i8 [ 0, %sw.default ], [ 2, %if.end363 ], [ 1, %sw.bb ]
  %bw_index.1 = phi i8 [ 0, %sw.default ], [ %conv374, %if.end363 ], [ %., %sw.bb ]
  %ch_group_index.2 = phi i32 [ 0, %sw.default ], [ %spec.select589, %if.end363 ], [ %.588, %sw.bb ]
  %channel.0 = phi i8 [ %conv, %sw.default ], [ %conv379, %if.end363 ], [ %add, %sw.bb ]
  tail call void @mt76x2_read_rx_gain(ptr noundef %dev) #3
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %11, align 4
  tail call void @mt76x2_phy_set_txpower_regs(ptr noundef %dev, i32 noundef %26) #3
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %11, align 4
  tail call void @mt76x2_configure_tx_delay(ptr noundef %dev, i32 noundef %28, i8 noundef zeroext %bw.0) #3
  tail call void @mt76x2_phy_set_txpower(ptr noundef %dev) #3
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %11, align 4
  %and = and i32 %ch_group_index.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool382 = icmp ne i32 %and, 0
  tail call void @mt76x02_phy_set_band(ptr noundef %dev, i32 noundef %30, i1 noundef zeroext %tobool382) #3
  %31 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %width, align 4
  %conv384 = trunc i32 %ch_group_index.2 to i8
  tail call void @mt76x02_phy_set_bw(ptr noundef %dev, i32 noundef %32, i8 noundef zeroext %conv384) #3
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %33 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmw, align 4
  %arrayidx = getelementptr [4 x i32], ptr %ext_cca_chan, i32 0, i32 %ch_group_index.2
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %call385 = tail call i32 %36(ptr noundef %dev, i32 noundef 5148, i32 noundef 4095, i32 noundef %38) #3
  %call387 = tail call i32 @mt76x2_mcu_set_channel(ptr noundef %dev, i8 noundef zeroext %channel.0, i8 noundef zeroext %bw.0, i8 noundef zeroext %bw_index.1, i1 noundef zeroext %tobool) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call387)
  %tobool388.not = icmp eq i32 %call387, 0
  br i1 %tobool388.not, label %if.end390, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end390:                                        ; preds = %sw.epilog
  %mcu_gain = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 3
  %39 = ptrtoint ptr %mcu_gain to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mcu_gain, align 4
  %call392 = tail call i32 @mt76x2_mcu_init_gain(ptr noundef %dev, i8 noundef zeroext %channel.0, i32 noundef %40, i1 noundef zeroext true) #3
  %rev.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %41 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rev.i, align 4
  %conv.i = trunc i32 %42 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %conv.i)
  %cmp395 = icmp ugt i16 %conv.i, 33
  br i1 %cmp395, label %if.then397, label %if.end390.if.end401_crit_edge

if.end390.if.end401_crit_edge:                    ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end401

if.then397:                                       ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #5
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus, align 4
  %rmw399 = getelementptr inbounds %struct.mt76_bus_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %rmw399 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmw399, align 4
  %call400 = tail call i32 %46(ptr noundef %dev, i32 noundef 10548, i32 noundef 0, i32 noundef 1024) #3
  br label %if.end401

if.end401:                                        ; preds = %if.then397, %if.end390.if.end401_crit_edge
  %init_cal_done = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 10
  %47 = ptrtoint ptr %init_cal_done to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %init_cal_done, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool403.not = icmp eq i8 %48, 0
  br i1 %tobool403.not, label %if.then404, label %if.end401.if.end413_crit_edge

if.end401.if.end413_crit_edge:                    ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end413

if.then404:                                       ; preds = %if.end401
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %49 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i = getelementptr i8, ptr %50, i32 312
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %52)
  %cmp408.not = icmp ugt i16 %52, -257
  br i1 %cmp408.not, label %if.then404.if.end413_crit_edge, label %if.then410

if.then404.if.end413_crit_edge:                   ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end413

if.then410:                                       ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #5
  %call411 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 1, i32 noundef 0) #3
  br label %if.end413

if.end413:                                        ; preds = %if.then410, %if.then404.if.end413_crit_edge, %if.end401.if.end413_crit_edge
  %conv414 = zext i8 %channel.0 to i32
  %call415 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 3, i32 noundef %conv414) #3
  %53 = ptrtoint ptr %init_cal_done to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %init_cal_done, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool418.not = icmp eq i8 %54, 0
  br i1 %tobool418.not, label %if.then419, label %if.end413.if.end421_crit_edge

if.end413.if.end421_crit_edge:                    ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end421

if.then419:                                       ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #5
  %call420 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 4, i32 noundef 0) #3
  br label %if.end421

if.end421:                                        ; preds = %if.then419, %if.end413.if.end421_crit_edge
  %55 = ptrtoint ptr %init_cal_done to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %init_cal_done, align 4
  %56 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wr, align 4
  tail call void %59(ptr noundef %dev, i32 noundef 9204, i32 noundef -10181406) #3
  %60 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus, align 4
  %wr426 = getelementptr inbounds %struct.mt76_bus_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %wr426 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wr426, align 4
  tail call void %63(ptr noundef %dev, i32 noundef 8988, i32 noundef 134746128) #3
  %64 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus, align 4
  %wr428 = getelementptr inbounds %struct.mt76_bus_ops, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %wr428 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wr428, align 4
  tail call void %67(ptr noundef %dev, i32 noundef 9004, i32 noundef 1028) #3
  %68 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus, align 4
  %wr430 = getelementptr inbounds %struct.mt76_bus_ops, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %wr430 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wr430, align 4
  tail call void %71(ptr noundef %dev, i32 noundef 8968, i32 noundef 28784) #3
  %72 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus, align 4
  %wr432 = getelementptr inbounds %struct.mt76_bus_ops, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %wr432 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wr432, align 4
  tail call void %75(ptr noundef %dev, i32 noundef 4928, i32 noundef 68164415) #3
  %76 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus, align 4
  %rmw434 = getelementptr inbounds %struct.mt76_bus_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %rmw434 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmw434, align 4
  %call435 = tail call i32 %79(ptr noundef %dev, i32 noundef 9744, i32 noundef 0, i32 noundef 33554432) #3
  %80 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus, align 4
  %rmw437 = getelementptr inbounds %struct.mt76_bus_ops, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %rmw437 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmw437, align 4
  %call438 = tail call i32 %83(ptr noundef %dev, i32 noundef 10548, i32 noundef 0, i32 noundef 256) #3
  br i1 %tobool, label %if.end421.cleanup_crit_edge, label %if.end441

if.end421.cleanup_crit_edge:                      ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end441:                                        ; preds = %if.end421
  tail call fastcc void @mt76x2u_phy_channel_calibrate(ptr noundef %dev, i1 noundef zeroext true)
  tail call void @mt76x02_init_agc_gain(ptr noundef %dev) #3
  %eeprom.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %84 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %eeprom.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %85, i32 84
  %86 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %add.ptr.i.i.i, align 1
  %.mask.i.i = and i16 %87, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i.i)
  %tobool.not.i.i = icmp eq i16 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %if.end441.mt76x2_tssi_enabled.exit_crit_edge, label %mt76x2_temp_tx_alc_enabled.exit.i

if.end441.mt76x2_tssi_enabled.exit_crit_edge:     ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt76x2_tssi_enabled.exit

mt76x2_temp_tx_alc_enabled.exit.i:                ; preds = %if.end441
  %add.ptr.i7.i.i = getelementptr i8, ptr %85, i32 54
  %88 = ptrtoint ptr %add.ptr.i7.i.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %add.ptr.i7.i.i, align 1
  %90 = and i16 %89, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool4.i.not.i = icmp eq i16 %90, 0
  br i1 %tobool4.i.not.i, label %mt76x2_temp_tx_alc_enabled.exit.i.mt76x2_tssi_enabled.exit_crit_edge, label %mt76x2_temp_tx_alc_enabled.exit.i.if.end501_crit_edge

mt76x2_temp_tx_alc_enabled.exit.i.if.end501_crit_edge: ; preds = %mt76x2_temp_tx_alc_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end501

mt76x2_temp_tx_alc_enabled.exit.i.mt76x2_tssi_enabled.exit_crit_edge: ; preds = %mt76x2_temp_tx_alc_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt76x2_tssi_enabled.exit

mt76x2_tssi_enabled.exit:                         ; preds = %mt76x2_temp_tx_alc_enabled.exit.i.mt76x2_tssi_enabled.exit_crit_edge, %if.end441.mt76x2_tssi_enabled.exit_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %85, i32 54
  %91 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %add.ptr.i.i, align 1
  %93 = and i16 %92, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool.i.not = icmp eq i16 %93, 0
  br i1 %tobool.i.not, label %mt76x2_tssi_enabled.exit.if.end501_crit_edge, label %if.then443

mt76x2_tssi_enabled.exit.if.end501_crit_edge:     ; preds = %mt76x2_tssi_enabled.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end501

if.then443:                                       ; preds = %mt76x2_tssi_enabled.exit
  %94 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus, align 4
  %rmw445 = getelementptr inbounds %struct.mt76_bus_ops, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %rmw445 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmw445, align 4
  %call462 = tail call i32 %97(ptr noundef %dev, i32 noundef 5044, i32 noundef 63, i32 noundef 56) #3
  %98 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus, align 4
  %rmw464 = getelementptr inbounds %struct.mt76_bus_ops, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %rmw464 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rmw464, align 4
  %call481 = tail call i32 %101(ptr noundef %dev, i32 noundef 5032, i32 noundef 63, i32 noundef 56) #3
  %chandef.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %102 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %chandef.i, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_channel, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %105, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then443.if.then483_crit_edge, label %mt76x2_channel_silent.exit

if.then443.if.then483_crit_edge:                  ; preds = %if.then443
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then483

mt76x2_channel_silent.exit:                       ; preds = %if.then443
  %dfs_state.i = getelementptr inbounds %struct.ieee80211_channel, ptr %103, i32 0, i32 12
  %106 = ptrtoint ptr %dfs_state.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dfs_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %cmp.i.not = icmp eq i32 %107, 2
  br i1 %cmp.i.not, label %mt76x2_channel_silent.exit.if.then483_crit_edge, label %mt76x2_channel_silent.exit.if.end501_crit_edge

mt76x2_channel_silent.exit.if.end501_crit_edge:   ; preds = %mt76x2_channel_silent.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end501

mt76x2_channel_silent.exit.if.then483_crit_edge:  ; preds = %mt76x2_channel_silent.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then483

if.then483:                                       ; preds = %mt76x2_channel_silent.exit.if.then483_crit_edge, %if.then443.if.then483_crit_edge
  %108 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp488 = icmp eq i32 %109, 1
  %spec.select590 = zext i1 %cmp488 to i32
  %call494 = tail call zeroext i1 @mt76x02_ext_pa_enabled(ptr noundef %dev, i32 noundef %109) #3
  %or496 = or i32 %spec.select590, 256
  %flag.1 = select i1 %call494, i32 %or496, i32 %spec.select590
  %call498 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 9, i32 noundef %flag.1) #3
  %tssi_cal_done = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 11
  %110 = ptrtoint ptr %tssi_cal_done to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %tssi_cal_done, align 1
  br label %if.end501

if.end501:                                        ; preds = %if.then483, %mt76x2_channel_silent.exit.if.end501_crit_edge, %mt76x2_tssi_enabled.exit.if.end501_crit_edge, %mt76x2_temp_tx_alc_enabled.exit.i.if.end501_crit_edge
  %111 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev, align 128
  %cal_work = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9
  tail call void @ieee80211_queue_delayed_work(ptr noundef %112, ptr noundef %cal_work, i32 noundef 100) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end501, %if.end421.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ext_cca_chan) #3
  ret i32 %call387
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_read_rx_gain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_phy_set_txpower_regs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_configure_tx_delay(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_phy_set_txpower(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_phy_set_band(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_phy_set_bw(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2_mcu_set_channel(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2_mcu_init_gain(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_calibrate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_init_agc_gain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76x02_ext_pa_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2u_mac_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_apply_gain_adj(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_edcca_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_phy.c", i32 108, i32 7}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 1, i32 2000}
