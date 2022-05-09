; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x2/pci_phy.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x2/pci_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type { ptr, ptr, i16 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mt76x2_temp_comp = type { i8, i32, i32, i32, i32 }

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/mediatek/mt76/mt76x2/pci_phy.c\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [55 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_phy.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 171, i32 7 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x2_phy_set_antenna(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 8960) #4
  %antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %antenna_mask, align 8
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb60
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmw, align 4
  %call2 = tail call i32 %10(ptr noundef %dev, i32 noundef 8484, i32 noundef 2048, i32 noundef 0) #4
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 4
  %rmw4 = getelementptr inbounds %struct.mt76_bus_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %rmw4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmw4, align 4
  %call5 = tail call i32 %14(ptr noundef %dev, i32 noundef 10004, i32 noundef 3, i32 noundef 0) #4
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 4
  %rmw7 = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %rmw7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmw7, align 4
  %call20 = tail call i32 %18(ptr noundef %dev, i32 noundef 4904, i32 noundef 15, i32 noundef 3) #4
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %rmw22 = getelementptr inbounds %struct.mt76_bus_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %rmw22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmw22, align 4
  %call39 = tail call i32 %22(ptr noundef %dev, i32 noundef 8320, i32 noundef 3145728, i32 noundef 2097152) #4
  %23 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus, align 4
  %rmw41 = getelementptr inbounds %struct.mt76_bus_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %rmw41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmw41, align 4
  %call58 = tail call i32 %26(ptr noundef %dev, i32 noundef 8324, i32 noundef 7680, i32 noundef 2048) #4
  %and59 = and i32 %call, -28
  br label %sw.epilog

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 4
  %rmw62 = getelementptr inbounds %struct.mt76_bus_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %rmw62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmw62, align 4
  %call63 = tail call i32 %30(ptr noundef %dev, i32 noundef 8484, i32 noundef 2048, i32 noundef 0) #4
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus, align 4
  %rmw65 = getelementptr inbounds %struct.mt76_bus_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %rmw65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmw65, align 4
  %call82 = tail call i32 %34(ptr noundef %dev, i32 noundef 10004, i32 noundef 3, i32 noundef 1) #4
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 4
  %rmw84 = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %rmw84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmw84, align 4
  %call101 = tail call i32 %38(ptr noundef %dev, i32 noundef 4904, i32 noundef 15, i32 noundef 12) #4
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %rmw103 = getelementptr inbounds %struct.mt76_bus_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %rmw103 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmw103, align 4
  %call120 = tail call i32 %42(ptr noundef %dev, i32 noundef 8320, i32 noundef 3145728, i32 noundef 1048576) #4
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus, align 4
  %rmw122 = getelementptr inbounds %struct.mt76_bus_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %rmw122 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmw122, align 4
  %call139 = tail call i32 %46(ptr noundef %dev, i32 noundef 8324, i32 noundef 7680, i32 noundef 512) #4
  %and140 = and i32 %call, -28
  %or = or i32 %and140, 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus, align 4
  %rmw143 = getelementptr inbounds %struct.mt76_bus_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %rmw143 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmw143, align 4
  %call144 = tail call i32 %50(ptr noundef %dev, i32 noundef 8484, i32 noundef 0, i32 noundef 2048) #4
  %51 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus, align 4
  %rmw146 = getelementptr inbounds %struct.mt76_bus_ops, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %rmw146 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmw146, align 4
  %call147 = tail call i32 %54(ptr noundef %dev, i32 noundef 10004, i32 noundef 0, i32 noundef 3) #4
  %55 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus, align 4
  %rmw149 = getelementptr inbounds %struct.mt76_bus_ops, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %rmw149 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmw149, align 4
  %call166 = tail call i32 %58(ptr noundef %dev, i32 noundef 4904, i32 noundef 15, i32 noundef 15) #4
  %59 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus, align 4
  %rmw168 = getelementptr inbounds %struct.mt76_bus_ops, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %rmw168 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmw168, align 4
  %call169 = tail call i32 %62(ptr noundef %dev, i32 noundef 8320, i32 noundef 3145728, i32 noundef 0) #4
  %63 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus, align 4
  %rmw171 = getelementptr inbounds %struct.mt76_bus_ops, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %rmw171 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmw171, align 4
  %call172 = tail call i32 %66(ptr noundef %dev, i32 noundef 8324, i32 noundef 7680, i32 noundef 0) #4
  %and173 = and i32 %call, -28
  %or174 = or i32 %and173, 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb60, %sw.bb
  %val.0 = phi i32 [ %or174, %sw.default ], [ %or, %sw.bb60 ], [ %and59, %sw.bb ]
  %67 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr, align 4
  tail call void %70(ptr noundef %dev, i32 noundef 8960, i32 noundef %val.0) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2_phy_set_channel(ptr noundef %dev, ptr nocapture noundef readonly %chandef) local_unnamed_addr #0 align 64 {
entry:
  %ext_cca_chan = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef, align 4
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ext_cca_chan) #4
  %7 = getelementptr inbounds [4 x i32], ptr %ext_cca_chan, i32 0, i32 1
  %8 = getelementptr inbounds [4 x i32], ptr %ext_cca_chan, i32 0, i32 2
  %9 = getelementptr inbounds [4 x i32], ptr %ext_cca_chan, i32 0, i32 3
  %10 = ptrtoint ptr %ext_cca_chan to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 484, ptr %ext_cca_chan, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 737, ptr %7, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1054, ptr %8, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2075, ptr %9, align 4
  %channel_cal_done = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 14
  %14 = ptrtoint ptr %channel_cal_done to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %channel_cal_done, align 4
  %15 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %center_freq, align 4
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %19 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %center_freq1, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hw_value, align 2
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %23 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %width, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %24, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb340
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp = icmp slt i32 %18, %20
  %not.cmp = xor i1 %cmp, true
  %. = zext i1 %not.cmp to i32
  %.553 = select i1 %cmp, i8 1, i8 3
  %sub = select i1 %cmp, i8 2, i8 -2
  %conv338 = trunc i16 %22 to i8
  %add = add i8 %sub, %conv338
  br label %sw.epilog

sw.bb340:                                         ; preds = %entry
  %sub341 = sub i32 %18, %20
  %add342 = add i32 %sub341, 30
  %div = sdiv i32 %add342, 20
  %26 = add i32 %sub341, -50
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99, i32 %26)
  %27 = icmp ult i32 %26, -99
  br i1 %27, label %do.end358, label %sw.bb340.if.end364_crit_edge, !prof !11

sw.bb340.if.end364_crit_edge:                     ; preds = %sw.bb340
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end364

do.end358:                                        ; preds = %sw.bb340
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef null) #4
  br label %if.end364

if.end364:                                        ; preds = %do.end358, %sw.bb340.if.end364_crit_edge
  %spec.select554 = phi i32 [ 0, %do.end358 ], [ %div, %sw.bb340.if.end364_crit_edge ]
  %conv375 = trunc i32 %spec.select554 to i8
  %mul376.neg = mul i32 %spec.select554, 252
  %conv378 = zext i16 %22 to i32
  %sub377 = add nuw nsw i32 %conv378, 6
  %add379 = add i32 %sub377, %mul376.neg
  %conv380 = trunc i32 %add379 to i8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i16 %22 to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end364, %sw.bb
  %channel.0 = phi i8 [ %conv, %sw.default ], [ %conv380, %if.end364 ], [ %add, %sw.bb ]
  %ch_group_index.2 = phi i32 [ 0, %sw.default ], [ %spec.select554, %if.end364 ], [ %., %sw.bb ]
  %bw.0 = phi i8 [ 0, %sw.default ], [ 2, %if.end364 ], [ 1, %sw.bb ]
  %bw_index.1 = phi i8 [ 0, %sw.default ], [ %conv375, %if.end364 ], [ %.553, %sw.bb ]
  tail call void @mt76x2_read_rx_gain(ptr noundef %dev) #4
  tail call void @mt76x2_phy_set_txpower_regs(ptr noundef %dev, i32 noundef %6) #4
  tail call void @mt76x2_configure_tx_delay(ptr noundef %dev, i32 noundef %6, i8 noundef zeroext %bw.0) #4
  tail call void @mt76x2_phy_set_txpower(ptr noundef %dev) #4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %and = and i32 %ch_group_index.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool382 = icmp ne i32 %and, 0
  tail call void @mt76x02_phy_set_band(ptr noundef %dev, i32 noundef %29, i1 noundef zeroext %tobool382) #4
  %30 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width, align 4
  %conv384 = trunc i32 %ch_group_index.2 to i8
  tail call void @mt76x02_phy_set_bw(ptr noundef %dev, i32 noundef %31, i8 noundef zeroext %conv384) #4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmw, align 4
  %arrayidx = getelementptr [4 x i32], ptr %ext_cca_chan, i32 0, i32 %ch_group_index.2
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %call385 = tail call i32 %35(ptr noundef %dev, i32 noundef 5148, i32 noundef 4095, i32 noundef %37) #4
  %call387 = tail call i32 @mt76x2_mcu_set_channel(ptr noundef %dev, i8 noundef zeroext %channel.0, i8 noundef zeroext %bw.0, i8 noundef zeroext %bw_index.1, i1 noundef zeroext %tobool) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call387)
  %tobool388.not = icmp eq i32 %call387, 0
  br i1 %tobool388.not, label %if.end390, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end390:                                        ; preds = %sw.epilog
  %mcu_gain = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 0, i32 3
  %38 = ptrtoint ptr %mcu_gain to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mcu_gain, align 4
  %call392 = tail call i32 @mt76x2_mcu_init_gain(ptr noundef %dev, i8 noundef zeroext %channel.0, i32 noundef %39, i1 noundef zeroext true) #4
  tail call void @mt76x2_phy_set_antenna(ptr noundef %dev)
  %rev.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %40 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rev.i, align 4
  %conv.i = trunc i32 %41 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %conv.i)
  %cmp395 = icmp ugt i16 %conv.i, 33
  br i1 %cmp395, label %if.then397, label %if.end390.if.end401_crit_edge

if.end390.if.end401_crit_edge:                    ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end401

if.then397:                                       ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus, align 4
  %rmw399 = getelementptr inbounds %struct.mt76_bus_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %rmw399 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmw399, align 4
  %call400 = tail call i32 %45(ptr noundef %dev, i32 noundef 10548, i32 noundef 0, i32 noundef 1024) #4
  br label %if.end401

if.end401:                                        ; preds = %if.then397, %if.end390.if.end401_crit_edge
  %init_cal_done = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 10
  %46 = ptrtoint ptr %init_cal_done to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %init_cal_done, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool403.not = icmp eq i8 %47, 0
  br i1 %tobool403.not, label %if.then404, label %if.end401.if.end413_crit_edge

if.end401.if.end413_crit_edge:                    ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end413

if.then404:                                       ; preds = %if.end401
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %48 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i = getelementptr i8, ptr %49, i32 312
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %51)
  %cmp408.not = icmp ugt i16 %51, -257
  br i1 %cmp408.not, label %if.then404.if.end413_crit_edge, label %if.then410

if.then404.if.end413_crit_edge:                   ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end413

if.then410:                                       ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #6
  %call411 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 1, i32 noundef 0) #4
  br label %if.end413

if.end413:                                        ; preds = %if.then410, %if.then404.if.end413_crit_edge, %if.end401.if.end413_crit_edge
  %conv414 = zext i8 %channel.0 to i32
  %call415 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 3, i32 noundef %conv414) #4
  %52 = ptrtoint ptr %init_cal_done to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %init_cal_done, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool418.not = icmp eq i8 %53, 0
  br i1 %tobool418.not, label %if.then419, label %if.end413.if.end421_crit_edge

if.end413.if.end421_crit_edge:                    ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end421

if.then419:                                       ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #6
  %call420 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 4, i32 noundef 0) #4
  br label %if.end421

if.end421:                                        ; preds = %if.then419, %if.end413.if.end421_crit_edge
  %54 = ptrtoint ptr %init_cal_done to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %init_cal_done, align 4
  %55 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wr, align 4
  tail call void %58(ptr noundef %dev, i32 noundef 9204, i32 noundef -10181406) #4
  %59 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus, align 4
  %wr426 = getelementptr inbounds %struct.mt76_bus_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wr426 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wr426, align 4
  tail call void %62(ptr noundef %dev, i32 noundef 8988, i32 noundef 134746128) #4
  %63 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus, align 4
  %wr428 = getelementptr inbounds %struct.mt76_bus_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %wr428 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wr428, align 4
  tail call void %66(ptr noundef %dev, i32 noundef 9004, i32 noundef 1028) #4
  %67 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus, align 4
  %wr430 = getelementptr inbounds %struct.mt76_bus_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %wr430 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr430, align 4
  tail call void %70(ptr noundef %dev, i32 noundef 8968, i32 noundef 28784) #4
  %71 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus, align 4
  %wr432 = getelementptr inbounds %struct.mt76_bus_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %wr432 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wr432, align 4
  tail call void %74(ptr noundef %dev, i32 noundef 4928, i32 noundef 68164415) #4
  br i1 %tobool, label %if.end421.cleanup_crit_edge, label %if.end435

if.end421.cleanup_crit_edge:                      ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end435:                                        ; preds = %if.end421
  tail call fastcc void @mt76x2_phy_channel_calibrate(ptr noundef %dev, i1 noundef zeroext true)
  tail call void @mt76x02_init_agc_gain(ptr noundef %dev) #4
  %eeprom.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %75 = ptrtoint ptr %eeprom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %eeprom.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %76, i32 84
  %77 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %add.ptr.i.i.i, align 1
  %.mask.i.i = and i16 %78, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i.i)
  %tobool.not.i.i = icmp eq i16 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %if.end435.mt76x2_tssi_enabled.exit_crit_edge, label %mt76x2_temp_tx_alc_enabled.exit.i

if.end435.mt76x2_tssi_enabled.exit_crit_edge:     ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x2_tssi_enabled.exit

mt76x2_temp_tx_alc_enabled.exit.i:                ; preds = %if.end435
  %add.ptr.i7.i.i = getelementptr i8, ptr %76, i32 54
  %79 = ptrtoint ptr %add.ptr.i7.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %add.ptr.i7.i.i, align 1
  %81 = and i16 %80, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool4.i.not.i = icmp eq i16 %81, 0
  br i1 %tobool4.i.not.i, label %mt76x2_temp_tx_alc_enabled.exit.i.mt76x2_tssi_enabled.exit_crit_edge, label %mt76x2_temp_tx_alc_enabled.exit.i.if.end476_crit_edge

mt76x2_temp_tx_alc_enabled.exit.i.if.end476_crit_edge: ; preds = %mt76x2_temp_tx_alc_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end476

mt76x2_temp_tx_alc_enabled.exit.i.mt76x2_tssi_enabled.exit_crit_edge: ; preds = %mt76x2_temp_tx_alc_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x2_tssi_enabled.exit

mt76x2_tssi_enabled.exit:                         ; preds = %mt76x2_temp_tx_alc_enabled.exit.i.mt76x2_tssi_enabled.exit_crit_edge, %if.end435.mt76x2_tssi_enabled.exit_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %76, i32 54
  %82 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %add.ptr.i.i, align 1
  %84 = and i16 %83, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool.i.not = icmp eq i16 %84, 0
  br i1 %tobool.i.not, label %mt76x2_tssi_enabled.exit.if.end476_crit_edge, label %if.then437

mt76x2_tssi_enabled.exit.if.end476_crit_edge:     ; preds = %mt76x2_tssi_enabled.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end476

if.then437:                                       ; preds = %mt76x2_tssi_enabled.exit
  call void @__sanitizer_cov_trace_pc() #6
  %85 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bus, align 4
  %rmw439 = getelementptr inbounds %struct.mt76_bus_ops, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %rmw439 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rmw439, align 4
  %call456 = tail call i32 %88(ptr noundef %dev, i32 noundef 5044, i32 noundef 63, i32 noundef 56) #4
  %89 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bus, align 4
  %rmw458 = getelementptr inbounds %struct.mt76_bus_ops, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %rmw458 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rmw458, align 4
  %call475 = tail call i32 %92(ptr noundef %dev, i32 noundef 5032, i32 noundef 63, i32 noundef 56) #4
  br label %if.end476

if.end476:                                        ; preds = %if.then437, %mt76x2_tssi_enabled.exit.if.end476_crit_edge, %mt76x2_temp_tx_alc_enabled.exit.i.if.end476_crit_edge
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev, align 128
  %cal_work = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9
  tail call void @ieee80211_queue_delayed_work(ptr noundef %94, ptr noundef %cal_work, i32 noundef 100) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end476, %if.end421.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ext_cca_chan) #4
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76x2_phy_channel_calibrate(ptr noundef %dev, i1 noundef zeroext %mac_stopped) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %5 = load i8, ptr %channel_cal_done, align 4, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mt76x2_channel_silent.exit.if.end4_crit_edge:     ; preds = %mt76x2_channel_silent.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.end4:                                          ; preds = %mt76x2_channel_silent.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %tssi_cal_done = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 19, i32 11
  %10 = ptrtoint ptr %tssi_cal_done to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tssi_cal_done, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.then7, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  %eeprom.i.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %12 = ptrtoint ptr %eeprom.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eeprom.i.i.i.i, align 16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 84
  %14 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %add.ptr.i.i.i.i, align 1
  %.mask.i.i.i = and i16 %15, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i.i.i)
  %tobool.not.i.i.i = icmp eq i16 %.mask.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then7.mt76x2_tssi_enabled.exit.i_crit_edge, label %mt76x2_temp_tx_alc_enabled.exit.i.i

if.then7.mt76x2_tssi_enabled.exit.i_crit_edge:    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x2_tssi_enabled.exit.i

mt76x2_temp_tx_alc_enabled.exit.i.i:              ; preds = %if.then7
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %13, i32 54
  %16 = ptrtoint ptr %add.ptr.i7.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %add.ptr.i7.i.i.i, align 1
  %18 = and i16 %17, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool4.i.not.i.i = icmp eq i16 %18, 0
  br i1 %tobool4.i.not.i.i, label %mt76x2_temp_tx_alc_enabled.exit.i.i.mt76x2_tssi_enabled.exit.i_crit_edge, label %mt76x2_temp_tx_alc_enabled.exit.i.i.if.end9_crit_edge

mt76x2_temp_tx_alc_enabled.exit.i.i.if.end9_crit_edge: ; preds = %mt76x2_temp_tx_alc_enabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

mt76x2_temp_tx_alc_enabled.exit.i.i.mt76x2_tssi_enabled.exit.i_crit_edge: ; preds = %mt76x2_temp_tx_alc_enabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x2_tssi_enabled.exit.i

mt76x2_tssi_enabled.exit.i:                       ; preds = %mt76x2_temp_tx_alc_enabled.exit.i.i.mt76x2_tssi_enabled.exit.i_crit_edge, %if.then7.mt76x2_tssi_enabled.exit.i_crit_edge
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 54
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %add.ptr.i.i.i, align 1
  %21 = and i16 %20, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.i.not.i = icmp eq i16 %21, 0
  br i1 %tobool.i.not.i, label %mt76x2_tssi_enabled.exit.i.if.end9_crit_edge, label %if.end.i

mt76x2_tssi_enabled.exit.i.if.end9_crit_edge:     ; preds = %mt76x2_tssi_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end.i:                                         ; preds = %mt76x2_tssi_enabled.exit.i
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %mt76x2_channel_silent.exit.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

mt76x2_channel_silent.exit.i:                     ; preds = %if.end.i
  %dfs_state.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %dfs_state.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dfs_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i.not.i = icmp eq i32 %23, 2
  br i1 %cmp.i.not.i, label %mt76x2_channel_silent.exit.i.if.end4.i_crit_edge, label %mt76x2_channel_silent.exit.i.if.end9_crit_edge

mt76x2_channel_silent.exit.i.if.end9_crit_edge:   ; preds = %mt76x2_channel_silent.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

mt76x2_channel_silent.exit.i.if.end4.i_crit_edge: ; preds = %mt76x2_channel_silent.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %mt76x2_channel_silent.exit.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %spec.select.i = zext i1 %cmp to i32
  %call8.i = tail call zeroext i1 @mt76x02_ext_pa_enabled(ptr noundef %dev, i32 noundef %3) #4
  %or10.i = or i32 %spec.select.i, 256
  %flag.1.i = select i1 %call8.i, i32 %or10.i, i32 %spec.select.i
  %call12.i = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 9, i32 noundef %flag.1.i) #4
  %24 = ptrtoint ptr %tssi_cal_done to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %tssi_cal_done, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.end4.i, %mt76x2_channel_silent.exit.i.if.end9_crit_edge, %mt76x2_tssi_enabled.exit.i.if.end9_crit_edge, %mt76x2_temp_tx_alc_enabled.exit.i.i.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  br i1 %mac_stopped, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76x2_mac_stop(ptr noundef %dev, i1 noundef zeroext false) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  br i1 %cmp, label %if.then14, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 6, i32 noundef 0) #4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %conv = zext i1 %cmp to i32
  %call18 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 7, i32 noundef %conv) #4
  %call21 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 8, i32 noundef %conv) #4
  %call24 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 12, i32 noundef %conv) #4
  %call25 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 2, i32 noundef 0) #4
  %call26 = tail call i32 @mt76x02_mcu_calibrate(ptr noundef %dev, i32 noundef 15, i32 noundef 0) #4
  br i1 %mac_stopped, label %if.end16.if.end29_crit_edge, label %if.then28

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %25 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr.i, align 4
  tail call void %28(ptr noundef %dev, i32 noundef 4100, i32 noundef 12) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end16.if.end29_crit_edge
  tail call void @mt76x2_apply_gain_adj(ptr noundef %dev) #4
  tail call void @mt76x02_edcca_init(ptr noundef %dev) #4
  %29 = ptrtoint ptr %channel_cal_done to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %channel_cal_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %mt76x2_channel_silent.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_init_agc_gain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x2_phy_calibrate(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %t.i = alloca %struct.mt76x2_temp_comp, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -11228
  %mutex = getelementptr i8, ptr %work, i32 -10348
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  tail call fastcc void @mt76x2_phy_channel_calibrate(ptr noundef %add.ptr, i1 noundef zeroext false)
  tail call void @mt76x2_phy_tssi_compensate(ptr noundef %add.ptr) #4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %t.i) #4
  %0 = call ptr @memset(ptr %t.i, i32 255, i32 20)
  %call.i = call i32 @mt76x2_get_temp_comp(ptr noundef %add.ptr, ptr noundef nonnull %t.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end12.i, label %entry.mt76x2_phy_temp_compensate.exit_crit_edge

entry.mt76x2_phy_temp_compensate.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76x2_phy_temp_compensate.exit

do.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bus.i = getelementptr i8, ptr %work, i32 -10256
  %1 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call13.i = call i32 %4(ptr noundef %add.ptr, i32 noundef 118784) #4
  %and.i = and i32 %call13.i, 127
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %t.i, align 4
  %conv.i = zext i8 %6 to i32
  %sub.i = sub nsw i32 %and.i, %conv.i
  %mul.i = mul nsw i32 %sub.i, 1789
  %div.i = sdiv i32 %mul.i, 1000
  %7 = trunc i32 %div.i to i8
  %conv14.i = add i8 %7, 25
  %temp15.i = getelementptr i8, ptr %work, i32 339
  %8 = ptrtoint ptr %temp15.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv14.i, ptr %temp15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 999
  %sub20.i = sub nsw i32 0, %div.i
  %sub20.sink.i = select i1 %cmp.i, i32 %div.i, i32 %sub20.i
  %high_slope.i = getelementptr inbounds %struct.mt76x2_temp_comp, ptr %t.i, i32 0, i32 3
  %9 = ptrtoint ptr %high_slope.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %high_slope.val.i = load i32, ptr %high_slope.i, align 4
  %low_slope.i = getelementptr inbounds %struct.mt76x2_temp_comp, ptr %t.i, i32 0, i32 4
  %10 = ptrtoint ptr %low_slope.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %low_slope.val.i = load i32, ptr %low_slope.i, align 4
  %11 = select i1 %cmp.i, i32 %high_slope.val.i, i32 %low_slope.val.i
  %div21.i = udiv i32 %sub20.sink.i, %11
  %upper_bound.i = getelementptr inbounds %struct.mt76x2_temp_comp, ptr %t.i, i32 0, i32 2
  %12 = ptrtoint ptr %upper_bound.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %upper_bound.i, align 4
  %14 = call i32 @llvm.smin.i32(i32 %div21.i, i32 %13) #4
  %lower_bound.i = getelementptr inbounds %struct.mt76x2_temp_comp, ptr %t.i, i32 0, i32 1
  %15 = ptrtoint ptr %lower_bound.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lower_bound.i, align 4
  %17 = call i32 @llvm.smax.i32(i32 %14, i32 %16) #4
  %mul41.i = shl i32 %17, 1
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw.i, align 4
  %and59.i = and i32 %mul41.i, 62
  %call60.i = call i32 %21(ptr noundef %add.ptr, i32 noundef 5044, i32 noundef 63, i32 noundef %and59.i) #4
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 4
  %rmw62.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %rmw62.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmw62.i, align 4
  %call90.i = call i32 %25(ptr noundef %add.ptr, i32 noundef 5032, i32 noundef 63, i32 noundef %and59.i) #4
  br label %mt76x2_phy_temp_compensate.exit

mt76x2_phy_temp_compensate.exit:                  ; preds = %do.end12.i, %entry.mt76x2_phy_temp_compensate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %t.i) #4
  call void @mt76x2_phy_update_channel_gain(ptr noundef %add.ptr) #4
  call void @mutex_unlock(ptr noundef %mutex) #4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 128
  call void @ieee80211_queue_delayed_work(ptr noundef %27, ptr noundef %work, i32 noundef 100) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_phy_tssi_compensate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_phy_update_channel_gain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2_phy_start(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt76x02_mcu_set_radio_state(ptr noundef %dev, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @mt76x2_mcu_load_cr(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_set_radio_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2_mcu_load_cr(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_mac_stop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_apply_gain_adj(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_edcca_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76x02_ext_pa_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2_get_temp_comp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/pci_phy.c", i32 171, i32 7}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i8 0, i8 2}
