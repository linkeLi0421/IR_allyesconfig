; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7615/pci_init.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7615/pci_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.mt7615_dev = type { %union.anon, ptr, %struct.tasklet_struct, %struct.mt7615_phy, i64, i16, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.spinlock, %struct.anon.155, i32, i8, i8, i8, i8, %struct.work_struct, %struct.list_head, i32, i32, i32, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, [48 x i8] }
%union.anon = type { %struct.mt76_dev }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.mt7615_phy = type { ptr, ptr, ptr, i8, i32, i64, i16, i8, i32, i32, i32, i8, i8, i16, i8, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.sk_buff_head, %struct.delayed_work, %struct.work_struct, %struct.timer_list, %struct.wait_queue_head, i8, %struct.anon.146 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.146 = type { ptr, i16, [4 x i8], [4 x i8], [4 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.anon.155 = type { i8, i32, i16, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.156], %struct.work_struct, %struct.wait_queue_head, %struct.anon.157, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.158 }
%struct.anon.156 = type { ptr, ptr }
%struct.anon.157 = type { %struct.spinlock, i32 }
%struct.anon.158 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@mt7615_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&dev->reset_work)\00", [60 x i8] zeroinitializer }, align 32
@mt76_rates = external dso_local global [12 x %struct.ieee80211_rate], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mt7615_init_hardware.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&dev->mcu_work)\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 132, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/pci_init.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 40, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @mt7615_register_device.__key, ptr @.str, ptr @mt7615_init_hardware.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_init_hardware.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7615_register_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mt7615_init_device(ptr noundef %dev) #3
  %reset_work = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 11
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #3
  %0 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %reset_work, align 8
  %lockdep_map = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mt7615_register_device.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry4 = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 11, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mt7615_mac_reset_work, ptr %func, align 4
  %brightness_set = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 50, i32 5
  %4 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mt7615_led_set_brightness, ptr %brightness_set, align 4
  %blink_set = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 50, i32 8
  %5 = ptrtoint ptr %blink_set to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mt7615_led_set_blink, ptr %blink_set, align 4
  %call = tail call i32 @mt7622_wmac_init(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_map.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_map.i, align 8
  %arrayidx.i = getelementptr i32, ptr %7, i32 22
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @mt7615_reg_map(ptr noundef %dev, i32 noundef %9) #3
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr.i, align 4
  %14 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_map.i, align 8
  %arrayidx2.i = getelementptr i32, ptr %15, i32 5
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.i, align 4
  %add.i = add i32 %17, 512
  tail call void %13(ptr noundef %dev, i32 noundef %add.i, i32 noundef -1) #3
  %mcu_work.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 10
  tail call void @__init_work(ptr noundef %mcu_work.i, i32 noundef 0) #3
  %18 = ptrtoint ptr %mcu_work.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %mcu_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @mt7615_init_hardware.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry6.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 10, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry6.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 10, i32 2
  %21 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mt7615_pci_init_work, ptr %func.i, align 4
  %call8.i = tail call i32 @mt7615_eeprom_init(ptr noundef %dev, i32 noundef %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %rev.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %22 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rev.i.i.i, align 4
  %shr.i.mask.i.i = and i32 %23, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i.i)
  %cmp.i.i = icmp eq i32 %shr.i.mask.i.i, 1986199552
  br i1 %cmp.i.i, label %if.then10.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmw.i, align 4
  %call12.i = tail call i32 %27(ptr noundef %dev, i32 noundef 786448, i32 noundef 2, i32 noundef 0) #3
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 4
  %rmw14.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %rmw14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw14.i, align 4
  %call15.i = tail call i32 %31(ptr noundef %dev, i32 noundef 786448, i32 noundef 0, i32 noundef 2) #3
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then10.i, %if.end.i.if.end16.i_crit_edge
  %call17.i = tail call i32 @mt7615_dma_init(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i, label %if.end19.i, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end19.i:                                       ; preds = %if.end16.i
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #3
  %wcid_mask.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 33
  %32 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rev.i.i.i, align 4
  %shr.i.mask.i.i.i = and i32 %33, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986199552, i32 %shr.i.mask.i.i.i)
  %cmp.i.i.i = icmp eq i32 %shr.i.mask.i.i.i, 1986199552
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i, label %if.end19.i.if.else.i.i_crit_edge

if.end19.i.if.else.i.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end19.i
  %fw_ver.i.i.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 21
  %34 = ptrtoint ptr %fw_ver.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fw_ver.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp.i3.i.i = icmp ugt i8 %35, 2
  br i1 %cmp.i3.i.i, label %land.lhs.true.i.i.mt7615_wtbl_size.exit.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i.i

land.lhs.true.i.i.mt7615_wtbl_size.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7615_wtbl_size.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end19.i.if.else.i.i_crit_edge
  br label %mt7615_wtbl_size.exit.i

mt7615_wtbl_size.exit.i:                          ; preds = %if.else.i.i, %land.lhs.true.i.i.mt7615_wtbl_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 110, %if.else.i.i ], [ 14, %land.lhs.true.i.i.mt7615_wtbl_size.exit.i_crit_edge ]
  %call23.i = tail call i32 @mt76_wcid_alloc(ptr noundef %wcid_mask.i, i32 noundef %retval.0.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end10, label %mt7615_wtbl_size.exit.i.cleanup_crit_edge

mt7615_wtbl_size.exit.i.cleanup_crit_edge:        ; preds = %mt7615_wtbl_size.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %mt7615_wtbl_size.exit.i
  %global_wcid.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36
  %idx28.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36, i32 6
  %36 = ptrtoint ptr %idx28.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %idx28.i, align 2
  %hw_key_idx.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 36, i32 7
  %37 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %hw_key_idx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !15
  %wcid58.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 37
  %38 = ptrtoint ptr %wcid58.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %global_wcid.i, ptr %wcid58.i, align 4
  %call11 = tail call i32 @mt76_register_device(ptr noundef %dev, i1 noundef zeroext true, ptr noundef nonnull @mt76_rates, i32 noundef 12) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @mt7615_thermal_init(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 128
  tail call void @ieee80211_queue_work(ptr noundef %40, ptr noundef %mcu_work.i) #3
  %sband_2g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 10
  tail call void @mt7615_init_txpower(ptr noundef %dev, ptr noundef %sband_2g) #3
  %sband_5g = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 11
  tail call void @mt7615_init_txpower(ptr noundef %dev, ptr noundef %sband_5g) #3
  %dbdc_support = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 20
  %41 = ptrtoint ptr %dbdc_support to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dbdc_support, align 2, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool20.not = icmp eq i8 %42, 0
  br i1 %tobool20.not, label %if.end18.if.end26_crit_edge, label %if.then21

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then21:                                        ; preds = %if.end18
  %call22 = tail call i32 @mt7615_register_ext_phy(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.if.end26_crit_edge, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %call27 = tail call i32 @mt7615_init_debugfs(ptr noundef %dev) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then21.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %mt7615_wtbl_size.exit.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end26 ], [ %call, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call22, %if.then21.cleanup_crit_edge ], [ -28, %mt7615_wtbl_size.exit.i.cleanup_crit_edge ], [ %call17.i, %if.end16.i.cleanup_crit_edge ], [ %call8.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_init_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mac_reset_work(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_led_set_brightness(ptr noundef %led_cdev, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool.not = icmp eq i32 %brightness, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @mt7615_led_set_config(ptr noundef %led_cdev, i8 noundef zeroext 0, i8 noundef zeroext -1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @mt7615_led_set_config(ptr noundef %led_cdev, i8 noundef zeroext -1, i8 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_led_set_blink(ptr noundef %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_off, align 4
  %div = udiv i32 %1, 10
  %conv1 = and i32 %div, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp.not = icmp eq i32 %conv1, 0
  %phi.cast = trunc i32 %div to i8
  %cond = select i1 %cmp.not, i8 1, i8 %phi.cast
  %2 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_on, align 4
  %div7 = udiv i32 %3, 10
  %conv10 = and i32 %div7, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10)
  %cmp12.not = icmp eq i32 %conv10, 0
  %phi.cast25 = trunc i32 %div7 to i8
  %cond19 = select i1 %cmp12.not, i8 1, i8 %phi.cast25
  tail call fastcc void @mt7615_led_set_config(ptr noundef %led_cdev, i8 noundef zeroext %cond19, i8 noundef zeroext %cond)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7622_wmac_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_register_device(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_thermal_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_init_txpower(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_register_ext_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_init_debugfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7615_unregister_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mt7615_wait_for_mcu_init(ptr noundef %dev) #3
  tail call void @mt7615_unregister_ext_phy(ptr noundef %dev) #3
  tail call void @mt76_unregister_device(ptr noundef %dev) #3
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mt7615_mcu_exit(ptr noundef %dev) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mt7615_tx_token_put(ptr noundef %dev) #3
  tail call void @mt7615_dma_cleanup(ptr noundef %dev) #3
  %irq_tasklet = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 2
  %count.i.i = getelementptr inbounds %struct.mt7615_dev, ptr %dev, i32 0, i32 2, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #3
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #3
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @tasklet_unlock_wait(ptr noundef %irq_tasklet) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @mt76_free_device(ptr noundef %dev) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt7615_wait_for_mcu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_unregister_ext_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_mcu_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_tx_token_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_dma_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7615_led_set_config(ptr noundef %led_cdev, i8 noundef zeroext %delay_on, i8 noundef zeroext %delay_off) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -10332
  %pm = getelementptr i8, ptr %led_cdev, i32 1432
  %wake.i = getelementptr i8, ptr %led_cdev, i32 1608
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #3
  %state.i = getelementptr i8, ptr %led_cdev, i32 -10320
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %do.end15, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end15:                                         ; preds = %entry
  %count.i = getelementptr i8, ptr %led_cdev, i32 1652
  %3 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #3
  %conv35 = zext i8 %delay_off to i32
  %shl = shl nuw i32 %conv35, 24
  %conv60 = zext i8 %delay_on to i32
  %shl61 = shl nuw nsw i32 %conv60, 16
  %or = or i32 %shl, %shl61
  %or63 = or i32 %or, 65535
  %led_pin = getelementptr i8, ptr %led_cdev, i32 433
  %5 = ptrtoint ptr %led_pin to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %led_pin, align 1
  %conv64 = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %conv64, 3
  %add65 = add nuw nsw i32 %mul, -2147336176
  %call66 = tail call i32 @mt7615_reg_map(ptr noundef %add.ptr, i32 noundef %add65) #3
  %bus = getelementptr i8, ptr %led_cdev, i32 -9360
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wr, align 4
  tail call void %10(ptr noundef %add.ptr, i32 noundef %call66, i32 noundef %or63) #3
  %11 = ptrtoint ptr %led_pin to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %led_pin, align 1
  %conv68 = zext i8 %12 to i32
  %mul69 = shl nuw nsw i32 %conv68, 3
  %add71 = add nuw nsw i32 %mul69, -2147336172
  %call72 = tail call i32 @mt7615_reg_map(ptr noundef %add.ptr, i32 noundef %add71) #3
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %wr74 = getelementptr inbounds %struct.mt76_bus_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wr74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr74, align 4
  tail call void %16(ptr noundef %add.ptr, i32 noundef %call72, i32 noundef %or63) #3
  %17 = ptrtoint ptr %led_pin to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %led_pin, align 1
  %conv76 = zext i8 %18 to i32
  %mul77 = shl nuw nsw i32 %conv76, 3
  %shl79 = shl nuw i32 1, %mul77
  %add83 = or i32 %mul77, 7
  %shl84 = shl nuw i32 1, %add83
  %or85 = or i32 %shl84, %shl79
  %led_al = getelementptr i8, ptr %led_cdev, i32 432
  %19 = ptrtoint ptr %led_al to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %led_al, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool86.not = icmp eq i8 %20, 0
  %add91 = or i32 %mul77, 1
  %shl92 = shl nuw i32 1, %add91
  %or93 = select i1 %tobool86.not, i32 0, i32 %shl92
  %val.0 = or i32 %or85, %or93
  %call95 = tail call i32 @mt7615_reg_map(ptr noundef %add.ptr, i32 noundef -2147336192) #3
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  %wr97 = getelementptr inbounds %struct.mt76_bus_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %wr97 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wr97, align 4
  tail call void %24(ptr noundef %add.ptr, i32 noundef %call95, i32 noundef %val.0) #3
  tail call void @_raw_spin_lock_bh(ptr noundef %wake.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %last_activity.i = getelementptr i8, ptr %led_cdev, i32 1848
  %26 = ptrtoint ptr %last_activity.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %last_activity.i, align 4
  %27 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %28, -1
  store i32 %dec.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end15.cleanup_crit_edge

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end15
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i, align 4
  %31 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i132 = icmp eq i32 %31, 0
  br i1 %tobool.not.i132, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mt76_connac_power_save_sched(ptr noundef %add.ptr, ptr noundef %pm) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %do.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wake.i) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_reg_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_connac_power_save_sched(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7615_pci_init_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -11484
  %call = tail call i32 @mt7615_mcu_init(ptr noundef %add.ptr) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp9 = icmp eq i32 %call, -11
  br i1 %cmp9, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @msleep(i32 noundef 200) #3
  %call2 = tail call i32 @mt7615_mcu_init(ptr noundef %add.ptr) #3
  %inc = add nuw nsw i32 %i.010, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call2)
  %cmp = icmp eq i32 %call2, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.010)
  %cmp1 = icmp ult i32 %i.010, 9
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ %call, %entry.for.end_crit_edge ], [ %call2, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %tobool.not = icmp eq i32 %ret.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mt7615_init_work(ptr noundef %add.ptr) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_eeprom_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_dma_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_wcid_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7615_init_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @mt7615_register_device.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci_init.c", i32 132, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mt7615_init_hardware.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/pci_init.c", i32 40, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2157989859}
!16 = !{i8 0, i8 2}
!17 = !{i64 2148370084, i64 2148370110, i64 2148370139, i64 2148370173, i64 2148370204, i64 2148370227}
!18 = !{i64 2155259627}
!19 = !{i64 2155260269}
