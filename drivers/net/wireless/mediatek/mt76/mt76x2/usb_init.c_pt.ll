; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x2/usb_init.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x2/usb_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.131 = type { i32, i16 }

@mt76x2u_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&dev->cal_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@mt76x2u_register_device.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&dev->cal_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@mt76x02_rates = external dso_local global [12 x %struct.ieee80211_rate], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_init.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 196, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @mt76x2u_register_device.__key, ptr @.str, ptr @mt76x2u_register_device.__key.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt76x2u_register_device.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2u_init_hardware(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mt76x2_reset_wlan(ptr noundef %dev, i1 noundef zeroext true) #3
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw.i, align 4
  %call.i = tail call i32 %3(ptr noundef %dev, i32 noundef 1073742152, i32 noundef 0, i32 noundef 1) #3
  %call1.i = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 1073742152, i32 noundef 268447744, i32 noundef 268447744, i32 noundef 1000) #3
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 4
  %rmw3.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw3.i, align 4
  %call4.i = tail call i32 %7(ptr noundef %dev, i32 noundef 1073742152, i32 noundef 8323072, i32 noundef 0) #3
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #3
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %rmw6.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw6.i, align 4
  %call7.i = tail call i32 %11(ptr noundef %dev, i32 noundef 1073742152, i32 noundef 251658240, i32 noundef 0) #3
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #3
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 4
  %rmw9.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw9.i, align 4
  %call10.i = tail call i32 %15(ptr noundef %dev, i32 noundef 1073742152, i32 noundef 0, i32 noundef 251658240) #3
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 4
  %rmw12.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rmw12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw12.i, align 4
  %call13.i = tail call i32 %19(ptr noundef %dev, i32 noundef 1073742152, i32 noundef 4095, i32 noundef 0) #3
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 4
  %rmw15.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %rmw15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmw15.i, align 4
  %call16.i = tail call i32 %23(ptr noundef %dev, i32 noundef 1073746436, i32 noundef 8, i32 noundef 0) #3
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 4
  %rmw18.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %rmw18.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmw18.i, align 4
  %call19.i = tail call i32 %27(ptr noundef %dev, i32 noundef 1073741952, i32 noundef 0, i32 noundef 1) #3
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 4
  %rmw21.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %rmw21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw21.i, align 4
  %call22.i = tail call i32 %31(ptr noundef %dev, i32 noundef 1073741924, i32 noundef 262144, i32 noundef 0) #3
  tail call fastcc void @mt76x2u_power_on_rf(ptr noundef %dev, i32 noundef 0) #3
  tail call fastcc void @mt76x2u_power_on_rf(ptr noundef %dev, i32 noundef 1) #3
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %entry
  %i.06.i = phi i32 [ 0, %entry ], [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i, align 4
  %34 = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %35 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call1.i91 = tail call i32 %38(ptr noundef %dev, i32 noundef 4096) #3
  %39 = zext i32 %call1.i91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i91, label %if.end [
    i32 0, label %if.end.i.sw.epilog.i_crit_edge
    i32 -1, label %if.end.i.sw.epilog.i_crit_edge119
  ]

if.end.i.sw.epilog.i_crit_edge119:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge119
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #3
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 500
  br i1 %exitcond.not.i, label %sw.epilog.i.cleanup_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call1 = tail call i32 @mt76x2u_mcu_fw_init(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 520, i32 noundef 10, i32 noundef 0, i32 noundef 100) #3
  br i1 %call4, label %if.end3.for.body.i96_crit_edge, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.for.body.i96_crit_edge:                   ; preds = %if.end3
  br label %for.body.i96

for.body.i96:                                     ; preds = %sw.epilog.i101.for.body.i96_crit_edge, %if.end3.for.body.i96_crit_edge
  %i.06.i94 = phi i32 [ %inc.i99, %sw.epilog.i101.for.body.i96_crit_edge ], [ 0, %if.end3.for.body.i96_crit_edge ]
  %40 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %state.i, align 4
  %42 = and i32 %41, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i95 = icmp eq i32 %42, 0
  br i1 %tobool.not.i95, label %if.end.i98, label %for.body.i96.cleanup_crit_edge

for.body.i96.cleanup_crit_edge:                   ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i98:                                       ; preds = %for.body.i96
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call1.i97 = tail call i32 %46(ptr noundef %dev, i32 noundef 4096) #3
  %47 = zext i32 %call1.i97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call1.i97, label %if.end9 [
    i32 0, label %if.end.i98.sw.epilog.i101_crit_edge
    i32 -1, label %if.end.i98.sw.epilog.i101_crit_edge120
  ]

if.end.i98.sw.epilog.i101_crit_edge120:           ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i101

if.end.i98.sw.epilog.i101_crit_edge:              ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i101

sw.epilog.i101:                                   ; preds = %if.end.i98.sw.epilog.i101_crit_edge, %if.end.i98.sw.epilog.i101_crit_edge120
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #3
  %inc.i99 = add nuw nsw i32 %i.06.i94, 1
  %exitcond.not.i100 = icmp eq i32 %inc.i99, 500
  br i1 %exitcond.not.i100, label %sw.epilog.i101.cleanup_crit_edge, label %sw.epilog.i101.for.body.i96_crit_edge

sw.epilog.i101.for.body.i96_crit_edge:            ; preds = %sw.epilog.i101
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i96

sw.epilog.i101.cleanup_crit_edge:                 ; preds = %sw.epilog.i101
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end.i98
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call.i105 = tail call i32 %51(ptr noundef %dev, i32 noundef 1073778712) #3
  %or.i = and i32 %call.i105, -14942209
  %and.i = or i32 %or.i, 12845056
  %52 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wr.i, align 4
  tail call void %55(ptr noundef %dev, i32 noundef 1073778712, i32 noundef %and.i) #3
  %call10 = tail call i32 @mt76x2u_mcu_init(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @mt76x2u_mac_reset(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %eeprom = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %56 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %eeprom, align 16
  %add.ptr = getelementptr i8, ptr %57, i32 4
  tail call void @mt76x02_mac_setaddr(ptr noundef %dev, ptr noundef %add.ptr) #3
  %58 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call18 = tail call i32 %61(ptr noundef %dev, i32 noundef 5120) #3
  %rxfilter = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 55
  %62 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call18, ptr %rxfilter, align 16
  %call.i106 = tail call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 4608, i32 noundef 3, i32 noundef 0, i32 noundef 100) #3
  br i1 %call.i106, label %if.end17.for.body_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end17.for.body_crit_edge
  %i.0110 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end17.for.body_crit_edge ]
  %conv = trunc i32 %i.0110 to i8
  tail call void @mt76x02_mac_wcid_setup(ptr noundef %dev, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef null) #3
  %inc = add nuw nsw i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body.for.cond27.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.cond27.preheader_crit_edge:          ; preds = %for.body
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.cond27.preheader.for.cond27.preheader_crit_edge, %for.body.for.cond27.preheader_crit_edge
  %i.1112 = phi i32 [ %inc38, %for.cond27.preheader.for.cond27.preheader_crit_edge ], [ 0, %for.body.for.cond27.preheader_crit_edge ]
  %conv31 = trunc i32 %i.1112 to i8
  %call33 = tail call i32 @mt76x02_mac_shared_key_setup(ptr noundef %dev, i8 noundef zeroext %conv31, i8 noundef zeroext 0, ptr noundef null) #3
  %call33.1 = tail call i32 @mt76x02_mac_shared_key_setup(ptr noundef %dev, i8 noundef zeroext %conv31, i8 noundef zeroext 1, ptr noundef null) #3
  %call33.2 = tail call i32 @mt76x02_mac_shared_key_setup(ptr noundef %dev, i8 noundef zeroext %conv31, i8 noundef zeroext 2, ptr noundef null) #3
  %call33.3 = tail call i32 @mt76x02_mac_shared_key_setup(ptr noundef %dev, i8 noundef zeroext %conv31, i8 noundef zeroext 3, ptr noundef null) #3
  %inc38 = add nuw nsw i32 %i.1112, 1
  %exitcond115.not = icmp eq i32 %inc38, 16
  br i1 %exitcond115.not, label %for.end39, label %for.cond27.preheader.for.cond27.preheader_crit_edge

for.cond27.preheader.for.cond27.preheader_crit_edge: ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond27.preheader

for.end39:                                        ; preds = %for.cond27.preheader
  tail call void @mt76x02u_init_beacon_config(ptr noundef %dev) #3
  %63 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus.i, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmw, align 4
  %call41 = tail call i32 %66(ptr noundef %dev, i32 noundef 676, i32 noundef 255, i32 noundef 30) #3
  %67 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus.i, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr, align 4
  tail call void %70(ptr noundef %dev, i32 noundef 4928, i32 noundef 22591) #3
  %call43 = tail call i32 @mt76x2_mcu_load_cr(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %for.end39.cleanup_crit_edge, label %if.end47

for.end39.cleanup_crit_edge:                      ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end47:                                         ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mt76x02_phy_set_rxpath(ptr noundef %dev) #3
  tail call void @mt76x02_phy_set_txdac(ptr noundef %dev) #3
  %call48 = tail call i32 @mt76x2u_mac_stop(ptr noundef %dev) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %for.end39.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %sw.epilog.i101.cleanup_crit_edge, %for.body.i96.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %if.end47 ], [ %call1, %if.end.cleanup_crit_edge ], [ -5, %if.end3.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ -110, %if.end17.cleanup_crit_edge ], [ %call43, %for.end39.cleanup_crit_edge ], [ -110, %for.body.i96.cleanup_crit_edge ], [ -110, %sw.epilog.i101.cleanup_crit_edge ], [ -110, %for.body.i.cleanup_crit_edge ], [ -110, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_reset_wlan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2u_mcu_fw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2u_mcu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2u_mac_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_setaddr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_mac_wcid_setup(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mac_shared_key_setup(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02u_init_beacon_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2_mcu_load_cr(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_phy_set_rxpath(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_phy_set_txdac(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x2u_mac_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2u_register_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %cal_work = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9
  tail call void @__init_work(ptr noundef %cal_work, i32 noundef 0) #3
  %2 = ptrtoint ptr %cal_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %cal_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mt76x2u_register_device.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry9 = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 0, i32 1
  %3 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mt76x2u_phy_calibrate, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @mt76x2u_register_device.__key.1) #3
  %call = tail call i32 @mt76x02_init_device(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 512, i32 noundef 3520) #3
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %8 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %eeprom.i, align 16
  %size.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44, i32 1
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 512, ptr %size.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %for.cond.preheader.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %add21.i = phi i32 [ 4, %for.cond.preheader.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.020.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add21.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %or.i = or i32 %i.020.i, -2147483648
  %call5.i = tail call i32 %13(ptr noundef %dev, i32 noundef %or.i) #3
  %14 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i = getelementptr i8, ptr %15, i32 %i.020.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %call5.i) #3
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %add.ptr.i, align 1
  %add.i = add nuw nsw i32 %add21.i, 4
  %cmp.i = icmp ult i32 %add21.i, 509
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %if.end20

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

if.end20:                                         ; preds = %for.body.i
  tail call void @mt76x02_eeprom_parse_hw_cap(ptr noundef %dev) #3
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i, align 8
  %call22 = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 1024, i32 noundef 3264) #3
  %mcu = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 9
  %20 = ptrtoint ptr %mcu to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call22, ptr %mcu, align 4
  %tobool26.not = icmp eq ptr %call22, null
  br i1 %tobool26.not, label %if.end20.cleanup_crit_edge, label %if.end28

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %call29 = tail call i32 @mt76u_alloc_queues(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.fail_crit_edge, label %if.end32

if.end28.fail_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @mt76x2u_init_hardware(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.fail_crit_edge, label %if.end36

if.end32.fail_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail

if.end36:                                         ; preds = %if.end32
  %sg_en = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 59, i32 0, i32 8
  %21 = ptrtoint ptr %sg_en to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sg_en, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool37.not = icmp eq i8 %22, 0
  %conv = select i1 %tobool37.not, i8 1, i8 8
  %max_tx_fragments = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %max_tx_fragments to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %max_tx_fragments, align 8
  %call38 = tail call i32 @mt76_register_device(ptr noundef %dev, i1 noundef zeroext true, ptr noundef nonnull @mt76x02_rates, i32 noundef 12) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.fail_crit_edge

if.end36.fail_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail

if.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  %state = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #3
  tail call void @mt76x02_init_debugfs(ptr noundef %dev) #3
  %sband_2g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 10
  tail call void @mt76x2_init_txpower(ptr noundef %dev, ptr noundef %sband_2g) #3
  %sband_5g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11
  tail call void @mt76x2_init_txpower(ptr noundef %dev, ptr noundef %sband_5g) #3
  br label %cleanup

fail:                                             ; preds = %if.end36.fail_crit_edge, %if.end32.fail_crit_edge, %if.end28.fail_crit_edge
  %err.0 = phi i32 [ %call29, %if.end28.fail_crit_edge ], [ %call33, %if.end32.fail_crit_edge ], [ %call38, %if.end36.fail_crit_edge ]
  %call.i = tail call i32 @mt76x02_mcu_set_radio_state(ptr noundef %dev, i1 noundef zeroext false) #3
  %call.i.i74 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cal_work) #3
  %mac_work.i.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18
  %call1.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work.i.i) #3
  %call2.i.i = tail call i32 @mt76x2u_mac_stop(ptr noundef %dev) #3
  tail call void @mt76u_queues_deinit(ptr noundef %dev) #3
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end41, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %fail ], [ 0, %if.end41 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2u_phy_calibrate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_init_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76u_alloc_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_register_device(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_init_debugfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x2_init_txpower(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x2u_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt76x02_mcu_set_radio_state(ptr noundef %dev, i1 noundef zeroext false) #3
  %cal_work.i = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cal_work.i) #3
  %mac_work.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work.i) #3
  %call2.i = tail call i32 @mt76x2u_mac_stop(ptr noundef %dev) #3
  tail call void @mt76u_queues_deinit(ptr noundef %dev) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76x2u_stop_hw(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cal_work = getelementptr inbounds %struct.mt76x02_dev, ptr %dev, i32 0, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cal_work) #3
  %mac_work = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 18
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mac_work) #3
  %call2 = tail call i32 @mt76x2u_mac_stop(ptr noundef %dev) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76x02_mcu_set_radio_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76u_queues_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt76x2u_power_on_rf(ptr noundef %dev, i32 noundef %unit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unit)
  %tobool.not = icmp eq i32 %unit, 0
  %cond = select i1 %tobool.not, i32 0, i32 8
  %shl = shl nuw nsw i32 58, %cond
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %shl1 = shl nuw nsw i32 1, %cond
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 1073742128, i32 noundef 0, i32 noundef %shl1) #3
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #3
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %rmw3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw3, align 4
  %call4 = tail call i32 %7(ptr noundef %dev, i32 noundef 1073742128, i32 noundef 0, i32 noundef %shl) #3
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #3
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw6 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw6, align 4
  %shl7 = shl nuw nsw i32 4, %cond
  %call8 = tail call i32 %11(ptr noundef %dev, i32 noundef 1073742128, i32 noundef %shl7, i32 noundef 0) #3
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #3
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw.i, align 4
  %call.i = tail call i32 %15(ptr noundef %dev, i32 noundef 1073742128, i32 noundef 0, i32 noundef 65537) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #3
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %rmw2.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %rmw2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmw2.i, align 4
  %call3.i = tail call i32 %20(ptr noundef %dev, i32 noundef 1073741852, i32 noundef 255, i32 noundef 0) #3
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %rmw5.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %rmw5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmw5.i, align 4
  %call6.i = tail call i32 %24(ptr noundef %dev, i32 noundef 1073741852, i32 noundef 0, i32 noundef 48) #3
  %25 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr.i, align 4
  tail call void %28(ptr noundef %dev, i32 noundef 1073741844, i32 noundef 18511) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #3
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 4
  %rmw9.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %rmw9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmw9.i, align 4
  %call10.i = tail call i32 %33(ptr noundef %dev, i32 noundef 1073742128, i32 noundef 0, i32 noundef 131072) #3
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 200, i32 noundef 2) #3
  %34 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus, align 4
  %rmw12.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %rmw12.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmw12.i, align 4
  %call13.i = tail call i32 %37(ptr noundef %dev, i32 noundef 1073742128, i32 noundef 65536, i32 noundef 0) #3
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #3
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus, align 4
  %rmw15.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %rmw15.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmw15.i, align 4
  %call16.i = tail call i32 %41(ptr noundef %dev, i32 noundef 1073742156, i32 noundef 0, i32 noundef 1572864) #3
  %42 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus, align 4
  %rmw10 = getelementptr inbounds %struct.mt76_bus_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %rmw10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmw10, align 4
  %call11 = tail call i32 %45(ptr noundef %dev, i32 noundef 1328, i32 noundef 0, i32 noundef 15) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76x02_eeprom_parse_hw_cap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @mt76x2u_register_device.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/usb_init.c", i32 196, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mt76x2u_register_device.__key.1, !1, !"__key", i1 false, i1 false}
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
!14 = !{i8 0, i8 2}
