; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x2/pci_init.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x2/pci_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.anon.143 = type { ptr, i32 }
%union.anon.144 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt76x02_dev = type { %union.anon, [8 x %struct.mac_address], %struct.mutex, i8, %struct.anon.146, %struct.spinlock, i32, i32, ptr, %struct.delayed_work, %struct.delayed_work, %struct.hrtimer, %struct.work_struct, ptr, i8, i8, i32, i8, i8, %struct.mt76x02_calibration, i32, i8, [2 x i8], i8, i8, i16, i8, %struct.mt76x02_dfs_pattern_detector, i32, i8, i8, i8, i8, i8, i8, i64, [16 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mac_address = type { [6 x i8] }
%struct.anon.146 = type { %union.anon.147, [0 x %struct.mt76x02_tx_status] }
%union.anon.147 = type { %struct.__kfifo }
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

@mt76x2_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&dev->cal_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@mt76x2_register_device.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&dev->cal_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@mt76x02_rates = external dso_local global [12 x %struct.ieee80211_rate], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_init.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 294, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @mt76x2_register_device.__key, ptr @.str, ptr @mt76x2_register_device.__key.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2_register_device.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2_mac_reset(ptr noundef %dev, i1 noundef zeroext %hard) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %macaddr1 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 13
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %entry
  %i.06.i = phi i32 [ 0, %entry ], [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call1.i = tail call i32 %6(ptr noundef %dev, i32 noundef 4096) #4
  %7 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %if.end [
    i32 0, label %if.end.i.sw.epilog.i_crit_edge
    i32 -1, label %if.end.i.sw.epilog.i_crit_edge177
  ]

if.end.i.sw.epilog.i_crit_edge177:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge177
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #4
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 500
  br i1 %exitcond.not.i, label %sw.epilog.i.cleanup_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call2 = tail call i32 %11(ptr noundef %dev, i32 noundef 520) #4
  %and = and i32 %call2, -64
  %or = or i32 %and, 48
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr, align 4
  tail call void %15(ptr noundef %dev, i32 noundef 520, i32 noundef %or) #4
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw.i, align 4
  %call.i = tail call i32 %19(ptr noundef %dev, i32 noundef 1024, i32 noundef 0, i32 noundef 31) #4
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 4
  %rmw2.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %rmw2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmw2.i, align 4
  %call3.i = tail call i32 %23(ptr noundef %dev, i32 noundef 1024, i32 noundef 31, i32 noundef 0) #4
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr.i, align 4
  tail call void %27(ptr noundef %dev, i32 noundef 1032, i32 noundef -269533409) #4
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 4
  %wr6.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr6.i, align 4
  tail call void %31(ptr noundef %dev, i32 noundef 1036, i32 noundef 65215) #4
  tail call void @mt76_write_mac_initvals(ptr noundef %dev) #4
  %eeprom.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %32 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %eeprom.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 158
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %add.ptr.i.i, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #4
  %conv.i.i = zext i16 %36 to i32
  %37 = trunc i16 %36 to i8
  %conv2.i = and i8 %37, 127
  %and4.i = and i32 %conv.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and4.i)
  %cmp.i = icmp eq i32 %and4.i, 255
  %and7.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i161 = icmp eq i32 %and7.i, 0
  %sub.i = sub nsw i8 0, %conv2.i
  %spec.select.i = select i1 %tobool.not.i161, i8 %conv2.i, i8 %sub.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %36)
  %cmp15.i = icmp ult i16 %36, 256
  %38 = lshr i16 %36, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %38)
  %cmp18.i = icmp eq i16 %38, 255
  %or.cond.i = or i1 %cmp15.i, %cmp18.i
  br i1 %or.cond.i, label %if.then20.i, label %if.end.do.end59.i_crit_edge

if.end.do.end59.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end59.i

if.then20.i:                                      ; preds = %if.end
  %add.ptr.i121.i = getelementptr i8, ptr %33, i32 58
  %39 = ptrtoint ptr %add.ptr.i121.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %add.ptr.i121.i, align 1
  %41 = lshr i16 %40, 8
  %trunc.i = trunc i16 %41 to i8
  %42 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %trunc.i, label %if.then20.i.do.end59.i_crit_edge [
    i8 0, label %if.then20.i.if.then33.i_crit_edge
    i8 -1, label %if.then20.i.if.then33.i_crit_edge178
  ]

if.then20.i.if.then33.i_crit_edge178:             ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33.i

if.then20.i.if.then33.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33.i

if.then20.i.do.end59.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end59.i

if.then33.i:                                      ; preds = %if.then20.i.if.then33.i_crit_edge, %if.then20.i.if.then33.i_crit_edge178
  br label %do.end59.i

do.end59.i:                                       ; preds = %if.then33.i, %if.then20.i.do.end59.i_crit_edge, %if.end.do.end59.i_crit_edge
  %eep_val.0.i = phi i16 [ 20, %if.then33.i ], [ %38, %if.end.do.end59.i_crit_edge ], [ %41, %if.then20.i.do.end59.i_crit_edge ]
  %43 = sext i8 %spec.select.i to i32
  %conv44.i = select i1 %cmp.i, i32 0, i32 %43
  %44 = and i16 %eep_val.0.i, 127
  %conv43.i = zext i16 %44 to i32
  %add.i = add nsw i32 %conv44.i, %conv43.i
  %45 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i, align 4
  %rmw.i163 = getelementptr inbounds %struct.mt76_bus_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %rmw.i163 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmw.i163, align 4
  %shl.i = shl nsw i32 %add.i, 8
  %and63.i = and i32 %shl.i, 32512
  %call64.i = tail call i32 %48(ptr noundef %dev, i32 noundef 276, i32 noundef 32512, i32 noundef %and63.i) #4
  %49 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus.i, align 4
  %rmw66.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %rmw66.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmw66.i, align 4
  %call67.i = tail call i32 %52(ptr noundef %dev, i32 noundef 280, i32 noundef 0, i32 noundef 32512) #4
  %53 = ptrtoint ptr %eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %eeprom.i.i, align 16
  %add.ptr.i124.i = getelementptr i8, ptr %54, i32 66
  %55 = ptrtoint ptr %add.ptr.i124.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %add.ptr.i124.i, align 1
  %57 = lshr i16 %56, 1
  %58 = and i16 %57, 3
  %shr88.i = zext i16 %58 to i32
  %59 = zext i32 %shr88.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %shr88.i, label %do.end59.i.mt76x2_fixup_xtal.exit_crit_edge [
    i32 0, label %do.end59.i.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb90.i
  ]

do.end59.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

do.end59.i.mt76x2_fixup_xtal.exit_crit_edge:      ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x2_fixup_xtal.exit

sw.bb90.i:                                        ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb90.i, %do.end59.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1545596624, %sw.bb90.i ], [ 1545596544, %do.end59.i.sw.epilog.sink.split.i_crit_edge ]
  %60 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i, align 4
  %wr92.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %wr92.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wr92.i, align 4
  tail call void %63(ptr noundef %dev, i32 noundef 284, i32 noundef %.sink.i) #4
  br label %mt76x2_fixup_xtal.exit

mt76x2_fixup_xtal.exit:                           ; preds = %sw.epilog.sink.split.i, %do.end59.i.mt76x2_fixup_xtal.exit_crit_edge
  %64 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus.i, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmw, align 4
  %call17 = tail call i32 %67(ptr noundef %dev, i32 noundef 4100, i32 noundef 3, i32 noundef 0) #4
  %rev.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %68 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rev.i.i, align 4
  %shr.i.mask.i = and i32 %69, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980891136, i32 %shr.i.mask.i)
  %cmp.i165 = icmp eq i32 %shr.i.mask.i, 1980891136
  br i1 %cmp.i165, label %if.then19, label %mt76x2_fixup_xtal.exit.if.end23_crit_edge

mt76x2_fixup_xtal.exit.if.end23_crit_edge:        ; preds = %mt76x2_fixup_xtal.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then19:                                        ; preds = %mt76x2_fixup_xtal.exit
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus.i, align 4
  %rmw21 = getelementptr inbounds %struct.mt76_bus_ops, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %rmw21 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmw21, align 4
  %call22 = tail call i32 %73(ptr noundef %dev, i32 noundef 64, i32 noundef 1, i32 noundef 0) #4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %mt76x2_fixup_xtal.exit.if.end23_crit_edge
  %74 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bus.i, align 4
  %rmw25 = getelementptr inbounds %struct.mt76_bus_ops, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %rmw25 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmw25, align 4
  %call26 = tail call i32 %77(ptr noundef %dev, i32 noundef 5148, i32 noundef 0, i32 noundef 61440) #4
  %78 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus.i, align 4
  %rmw28 = getelementptr inbounds %struct.mt76_bus_ops, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %rmw28 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmw28, align 4
  %call29 = tail call i32 %81(ptr noundef %dev, i32 noundef 5056, i32 noundef -2147483648, i32 noundef 0) #4
  %82 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bus.i, align 4
  %wr31 = getelementptr inbounds %struct.mt76_bus_ops, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %wr31 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wr31, align 4
  tail call void %85(ptr noundef %dev, i32 noundef 1284, i32 noundef 100663296) #4
  %86 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus.i, align 4
  %wr33 = getelementptr inbounds %struct.mt76_bus_ops, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %wr33 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wr33, align 4
  tail call void %89(ptr noundef %dev, i32 noundef 1292, i32 noundef 142606336) #4
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #4
  %90 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bus.i, align 4
  %wr35 = getelementptr inbounds %struct.mt76_bus_ops, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %wr35 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wr35, align 4
  tail call void %93(ptr noundef %dev, i32 noundef 1284, i32 noundef 0) #4
  %94 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus.i, align 4
  %wr37 = getelementptr inbounds %struct.mt76_bus_ops, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %wr37 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wr37, align 4
  tail call void %97(ptr noundef %dev, i32 noundef 1800, i32 noundef 5121) #4
  %98 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus.i, align 4
  %rmw39 = getelementptr inbounds %struct.mt76_bus_ops, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %rmw39 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rmw39, align 4
  %call40 = tail call i32 %101(ptr noundef %dev, i32 noundef 2060, i32 noundef 16, i32 noundef 0) #4
  tail call void @mt76x02_mac_setaddr(ptr noundef %dev, ptr noundef %macaddr1) #4
  tail call void @mt76x02e_init_beacon_config(ptr noundef %dev) #4
  br i1 %hard, label %for.body.preheader, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %if.end23
  %102 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bus.i, align 4
  %wr44 = getelementptr inbounds %struct.mt76_bus_ops, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %wr44 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wr44, align 4
  tail call void %105(ptr noundef %dev, i32 noundef 4204, i32 noundef 0) #4
  %106 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bus.i, align 4
  %wr44.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %wr44.1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %wr44.1, align 4
  tail call void %109(ptr noundef %dev, i32 noundef 4208, i32 noundef 0) #4
  %110 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bus.i, align 4
  %wr44.2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %wr44.2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %wr44.2, align 4
  tail call void %113(ptr noundef %dev, i32 noundef 4212, i32 noundef 0) #4
  %114 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bus.i, align 4
  %wr44.3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %wr44.3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wr44.3, align 4
  tail call void %117(ptr noundef %dev, i32 noundef 4216, i32 noundef 0) #4
  %118 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bus.i, align 4
  %wr44.4 = getelementptr inbounds %struct.mt76_bus_ops, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %wr44.4 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wr44.4, align 4
  tail call void %121(ptr noundef %dev, i32 noundef 4220, i32 noundef 0) #4
  %122 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bus.i, align 4
  %wr44.5 = getelementptr inbounds %struct.mt76_bus_ops, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %wr44.5 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %wr44.5, align 4
  tail call void %125(ptr noundef %dev, i32 noundef 4224, i32 noundef 0) #4
  %126 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bus.i, align 4
  %wr44.6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %wr44.6 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %wr44.6, align 4
  tail call void %129(ptr noundef %dev, i32 noundef 4228, i32 noundef 0) #4
  %130 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bus.i, align 4
  %wr44.7 = getelementptr inbounds %struct.mt76_bus_ops, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %wr44.7 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %wr44.7, align 4
  tail call void %133(ptr noundef %dev, i32 noundef 4232, i32 noundef 0) #4
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.body.preheader
  %i.1168 = phi i32 [ %inc57, %for.body47.for.body47_crit_edge ], [ 0, %for.body.preheader ]
  %conv = trunc i32 %i.1168 to i8
  tail call void @mt76x02_mac_wcid_setup(ptr noundef %dev, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef null) #4
  %134 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bus.i, align 4
  %wr49 = getelementptr inbounds %struct.mt76_bus_ops, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %wr49 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %wr49, align 4
  %shl = shl i32 %i.1168, 3
  %add50 = add nuw nsw i32 %shl, 7168
  tail call void %137(ptr noundef %dev, i32 noundef %add50, i32 noundef 0) #4
  %138 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bus.i, align 4
  %wr52 = getelementptr inbounds %struct.mt76_bus_ops, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %wr52 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wr52, align 4
  %add55 = add nuw nsw i32 %shl, 7172
  tail call void %141(ptr noundef %dev, i32 noundef %add55, i32 noundef 0) #4
  %inc57 = add nuw nsw i32 %i.1168, 1
  %exitcond.not = icmp eq i32 %inc57, 256
  br i1 %exitcond.not, label %for.body62.preheader, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body47

for.body62.preheader:                             ; preds = %for.body47
  tail call void @mt76x02_mac_wcid_setup(ptr noundef %dev, i8 noundef zeroext -2, i8 noundef zeroext 0, ptr noundef null) #4
  tail call void @mt76x02_mac_wcid_setup(ptr noundef %dev, i8 noundef zeroext -3, i8 noundef zeroext 1, ptr noundef null) #4
  tail call void @mt76x02_mac_wcid_setup(ptr noundef %dev, i8 noundef zeroext -4, i8 noundef zeroext 2, ptr noundef null) #4
  tail call void @mt76x02_mac_wcid_setup(ptr noundef %dev, i8 noundef zeroext -5, i8 noundef zeroext 3, ptr noundef null) #4
  tail call void @mt76x02_mac_wcid_setup(ptr noundef %dev, i8 noundef zeroext -6, i8 noundef zeroext 4, ptr noundef null) #4
  tail call void @mt76x02_mac_wcid_setup(ptr noundef %dev, i8 noundef zeroext -7, i8 noundef zeroext 5, ptr noundef null) #4
  tail call void @mt76x02_mac_wcid_setup(ptr noundef %dev, i8 noundef zeroext -8, i8 noundef zeroext 6, ptr noundef null) #4
  tail call void @mt76x02_mac_wcid_setup(ptr noundef %dev, i8 noundef zeroext -9, i8 noundef zeroext 7, ptr noundef null) #4
  br label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %for.cond73.preheader.for.cond73.preheader_crit_edge, %for.body62.preheader
  %i.3171 = phi i32 [ %inc84, %for.cond73.preheader.for.cond73.preheader_crit_edge ], [ 0, %for.body62.preheader ]
  %conv77 = trunc i32 %i.3171 to i8
  %call79 = tail call i32 @mt76x02_mac_shared_key_setup(ptr noundef %dev, i8 noundef zeroext %conv77, i8 noundef zeroext 0, ptr noundef null) #4
  %call79.1 = tail call i32 @mt76x02_mac_shared_key_setup(ptr noundef %dev, i8 noundef zeroext %conv77, i8 noundef zeroext 1, ptr noundef null) #4
  %call79.2 = tail call i32 @mt76x02_mac_shared_key_setup(ptr noundef %dev, i8 noundef zeroext %conv77, i8 noundef zeroext 2, ptr noundef null) #4
  %call79.3 = tail call i32 @mt76x02_mac_shared_key_setup(ptr noundef %dev, i8 noundef zeroext %conv77, i8 noundef zeroext 3, ptr noundef null) #4
  %inc84 = add nuw nsw i32 %i.3171, 1
  %exitcond175.not = icmp eq i32 %inc84, 16
  br i1 %exitcond175.not, label %for.body89.preheader, label %for.cond73.preheader.for.cond73.preheader_crit_edge

for.cond73.preheader.for.cond73.preheader_crit_edge: ; preds = %for.cond73.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond73.preheader

for.body89.preheader:                             ; preds = %for.cond73.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %142 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bus.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %call92 = tail call i32 %145(ptr noundef %dev, i32 noundef 5912) #4
  %146 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bus.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %call92.1 = tail call i32 %149(ptr noundef %dev, i32 noundef 5912) #4
  %150 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bus.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %call92.2 = tail call i32 %153(ptr noundef %dev, i32 noundef 5912) #4
  %154 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %bus.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %call92.3 = tail call i32 %157(ptr noundef %dev, i32 noundef 5912) #4
  %158 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bus.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %call92.4 = tail call i32 %161(ptr noundef %dev, i32 noundef 5912) #4
  %162 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %bus.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %call92.5 = tail call i32 %165(ptr noundef %dev, i32 noundef 5912) #4
  %166 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %bus.i, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %call92.6 = tail call i32 %169(ptr noundef %dev, i32 noundef 5912) #4
  %170 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %bus.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %call92.7 = tail call i32 %173(ptr noundef %dev, i32 noundef 5912) #4
  %174 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %bus.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %call92.8 = tail call i32 %177(ptr noundef %dev, i32 noundef 5912) #4
  %178 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bus.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %call92.9 = tail call i32 %181(ptr noundef %dev, i32 noundef 5912) #4
  %182 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %bus.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %call92.10 = tail call i32 %185(ptr noundef %dev, i32 noundef 5912) #4
  %186 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %bus.i, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  %call92.11 = tail call i32 %189(ptr noundef %dev, i32 noundef 5912) #4
  %190 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %bus.i, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 4
  %call92.12 = tail call i32 %193(ptr noundef %dev, i32 noundef 5912) #4
  %194 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %bus.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %call92.13 = tail call i32 %197(ptr noundef %dev, i32 noundef 5912) #4
  %198 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %bus.i, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  %call92.14 = tail call i32 %201(ptr noundef %dev, i32 noundef 5912) #4
  %202 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %bus.i, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 4
  %call92.15 = tail call i32 %205(ptr noundef %dev, i32 noundef 5912) #4
  tail call void @mt76x02_set_tx_ackto(ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %for.body89.preheader, %if.end23.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body89.preheader ], [ 0, %if.end23.cleanup_crit_edge ], [ -110, %for.body.i.cleanup_crit_edge ], [ -110, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_write_mac_initvals(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_setaddr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02e_init_beacon_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_wcid_setup(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mac_shared_key_setup(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_set_tx_ackto(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2_resume_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mt76x02_dma_disable(ptr noundef %dev) #4
  tail call void @mt76x2_reset_wlan(ptr noundef %dev, i1 noundef zeroext true) #4
  tail call fastcc void @mt76x2_power_on(ptr noundef %dev)
  %call = tail call i32 @mt76x2_mac_reset(ptr noundef %dev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76x02_mac_start(ptr noundef %dev) #4
  %call1 = tail call i32 @mt76x2_mcu_init(ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_dma_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_reset_wlan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76x2_power_on(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 65864, i32 noundef 0, i32 noundef 1) #4
  %call1 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 65864, i32 noundef 268447744, i32 noundef 268447744, i32 noundef 1000) #4
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %rmw3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw3, align 4
  %call4 = tail call i32 %7(ptr noundef %dev, i32 noundef 65864, i32 noundef 8323072, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #4
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 4
  %rmw6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %rmw6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmw6, align 4
  %call7 = tail call i32 %12(ptr noundef %dev, i32 noundef 65864, i32 noundef 251658240, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #4
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %rmw9 = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %rmw9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmw9, align 4
  %call10 = tail call i32 %17(ptr noundef %dev, i32 noundef 65864, i32 noundef 0, i32 noundef 251658240) #4
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %rmw12 = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw12, align 4
  %call13 = tail call i32 %21(ptr noundef %dev, i32 noundef 65864, i32 noundef 4095, i32 noundef 0) #4
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %rmw15 = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %rmw15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmw15, align 4
  %call16 = tail call i32 %25(ptr noundef %dev, i32 noundef 70148, i32 noundef 8, i32 noundef 0) #4
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus, align 4
  %rmw18 = getelementptr inbounds %struct.mt76_bus_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %rmw18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmw18, align 4
  %call19 = tail call i32 %29(ptr noundef %dev, i32 noundef 65664, i32 noundef 0, i32 noundef 1) #4
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %rmw21 = getelementptr inbounds %struct.mt76_bus_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %rmw21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmw21, align 4
  %call22 = tail call i32 %33(ptr noundef %dev, i32 noundef 65636, i32 noundef 262144, i32 noundef 0) #4
  tail call fastcc void @mt76x2_power_on_rf(ptr noundef %dev, i32 noundef 0)
  tail call fastcc void @mt76x2_power_on_rf(ptr noundef %dev, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2_mcu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x2_stop_hardware(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cal_work = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cal_work) #4
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #4
  %wdt_work = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 10
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wdt_work) #4
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %state) #4
  %call3 = tail call i32 @mt76x02_mcu_set_radio_state(ptr noundef %dev, i1 noundef zeroext false) #4
  tail call void @mt76x2_mac_stop(ptr noundef %dev, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_set_radio_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_mac_stop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x2_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dfs_tasklet = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 27, i32 10
  %count.i.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 27, i32 10, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @tasklet_unlock_wait(ptr noundef %dfs_tasklet) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !16
  %pre_tbtt_tasklet = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 41
  %count.i.i5 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 41, i32 2
  %call.i.i.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i5, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %count.i.i5, i32 1, i32 3, i32 1) #4
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i5, ptr %count.i.i5, i32 1, ptr elementtype(i32) %count.i.i5) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @tasklet_unlock_wait(ptr noundef %pre_tbtt_tasklet) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !16
  %cal_work.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cal_work.i) #4
  %mac_work.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work.i) #4
  %wdt_work.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 10
  %call2.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wdt_work.i) #4
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %state.i) #4
  %call3.i = tail call i32 @mt76x02_mcu_set_radio_state(ptr noundef %dev, i1 noundef zeroext false) #4
  tail call void @mt76x2_mac_stop(ptr noundef %dev, i1 noundef zeroext false) #4
  tail call void @mt76_dma_cleanup(ptr noundef %dev) #4
  %call = tail call i32 @mt76x02_mcu_cleanup(ptr noundef %dev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_dma_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2_register_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cal_work = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9
  tail call void @__init_work(ptr noundef %cal_work, i32 noundef 0) #4
  %0 = ptrtoint ptr %cal_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %cal_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mt76x2_register_device.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry8 = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 0, i32 1
  %1 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mt76x2_phy_calibrate, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @mt76x2_register_device.__key.1) #4
  %call = tail call i32 @mt76x02_init_device(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mt76x02_dma_disable(ptr noundef %dev) #4
  tail call void @mt76x2_reset_wlan(ptr noundef %dev, i1 noundef zeroext true) #4
  tail call fastcc void @mt76x2_power_on(ptr noundef %dev) #4
  %call.i = tail call i32 @mt76x2_eeprom_init(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @mt76x2_mac_reset(ptr noundef %dev, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call5.i = tail call i32 %7(ptr noundef %dev, i32 noundef 5120) #4
  %rxfilter.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 55
  %8 = ptrtoint ptr %rxfilter.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call5.i, ptr %rxfilter.i, align 16
  %call6.i = tail call i32 @mt76x02_dma_init(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9.i:                                        ; preds = %if.end4.i
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #4
  tail call void @mt76x02_mac_start(ptr noundef %dev) #4
  %call10.i = tail call i32 @mt76x2_mcu_init(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end20, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end9.i
  tail call void @mt76x2_mac_stop(ptr noundef %dev, i1 noundef zeroext false) #4
  tail call void @mt76x02_config_mac_addr_list(ptr noundef %dev) #4
  %call21 = tail call i32 @mt76_register_device(ptr noundef %dev, i1 noundef zeroext true, ptr noundef nonnull @mt76x02_rates, i32 noundef 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %fail

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76x02_init_debugfs(ptr noundef %dev) #4
  %sband_2g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 10
  tail call void @mt76x2_init_txpower(ptr noundef %dev, ptr noundef %sband_2g) #4
  %sband_5g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11
  tail call void @mt76x2_init_txpower(ptr noundef %dev, ptr noundef %sband_5g) #4
  br label %cleanup

fail:                                             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %call.i46 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cal_work) #4
  %mac_work.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18
  %call1.i47 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work.i) #4
  %wdt_work.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 10
  %call2.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wdt_work.i) #4
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %state.i) #4
  %call3.i = tail call i32 @mt76x02_mcu_set_radio_state(ptr noundef %dev, i1 noundef zeroext false) #4
  tail call void @mt76x2_mac_stop(ptr noundef %dev, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end24, %if.end9.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %fail ], [ 0, %if.end24 ], [ %call, %entry.cleanup_crit_edge ], [ %call10.i, %if.end9.i.cleanup_crit_edge ], [ %call6.i, %if.end4.i.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_phy_calibrate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_init_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_config_mac_addr_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_register_device(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_init_debugfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_init_txpower(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76x2_power_on_rf(ptr noundef %dev, i32 noundef %unit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unit)
  %tobool.not = icmp eq i32 %unit, 0
  %cond = select i1 %tobool.not, i32 0, i32 8
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %shl = shl nuw nsw i32 1, %cond
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 65840, i32 noundef 0, i32 noundef %shl) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #4
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 4
  %rmw2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %rmw2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmw2, align 4
  %shl3 = shl nuw nsw i32 58, %cond
  %call4 = tail call i32 %8(ptr noundef %dev, i32 noundef 65840, i32 noundef 0, i32 noundef %shl3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #4
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %rmw6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rmw6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw6, align 4
  %shl7 = shl nuw nsw i32 4, %cond
  %call8 = tail call i32 %13(ptr noundef %dev, i32 noundef 65840, i32 noundef %shl7, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #4
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmw.i, align 4
  %call.i = tail call i32 %18(ptr noundef %dev, i32 noundef 65840, i32 noundef 0, i32 noundef 65537) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #4
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %rmw2.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %rmw2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmw2.i, align 4
  %call3.i = tail call i32 %23(ptr noundef %dev, i32 noundef 65564, i32 noundef 255, i32 noundef 0) #4
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %rmw5.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %rmw5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmw5.i, align 4
  %call6.i = tail call i32 %27(ptr noundef %dev, i32 noundef 65564, i32 noundef 0, i32 noundef 48) #4
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr.i, align 4
  tail call void %31(ptr noundef %dev, i32 noundef 65556, i32 noundef 18511) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #4
  %33 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus, align 4
  %rmw9.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %rmw9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmw9.i, align 4
  %call10.i = tail call i32 %36(ptr noundef %dev, i32 noundef 65840, i32 noundef 0, i32 noundef 131072) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 26843500) #4
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus, align 4
  %rmw12.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %rmw12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmw12.i, align 4
  %call13.i = tail call i32 %41(ptr noundef %dev, i32 noundef 65840, i32 noundef 65536, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 10737400) #4
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus, align 4
  %rmw15.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %rmw15.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmw15.i, align 4
  %call16.i = tail call i32 %46(ptr noundef %dev, i32 noundef 65868, i32 noundef 0, i32 noundef 1572864) #4
  %47 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus, align 4
  %rmw10 = getelementptr inbounds %struct.mt76_bus_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %rmw10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmw10, align 4
  %call11 = tail call i32 %50(ptr noundef %dev, i32 noundef 1328, i32 noundef 0, i32 noundef 15) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2_eeprom_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_dma_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @mt76x2_register_device.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_init.c", i32 294, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mt76x2_register_device.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 2148193883, i64 2148193909, i64 2148193938, i64 2148193972, i64 2148194003, i64 2148194026}
!15 = !{i64 2155245166}
!16 = !{i64 2155245808}
