; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7615/testmode.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7615/testmode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mt76_testmode_ops = type { ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.anon.134 = type { ptr, ptr, i16 }
%struct.mt7615_phy = type { ptr, ptr, ptr, i8, i32, i64, i16, i8, i32, i32, i32, i8, i8, i16, i8, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.sk_buff_head, %struct.delayed_work, %struct.work_struct, %struct.timer_list, %struct.wait_queue_head, i8, %struct.anon.145 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.145 = type { ptr, i16, [4 x i8], [4 x i8], [4 x i8] }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.135, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.135 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
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
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.mt7615_dev = type { %union.anon.146, ptr, %struct.tasklet_struct, %struct.mt7615_phy, i64, i16, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.spinlock, %struct.anon.155, i32, i8, i8, i8, i8, %struct.work_struct, %struct.list_head, i32, i32, i32, %struct.mt76_connac_pm, %struct.mt76_connac_coredump, [48 x i8] }
%union.anon.146 = type { %struct.mt76_dev }
%struct.anon.155 = type { i8, i32, i16, i16 }
%struct.mt76_connac_pm = type { i8, i8, i8, %struct.spinlock, [4 x %struct.anon.156], %struct.work_struct, %struct.wait_queue_head, %struct.anon.157, %struct.mutex, %struct.delayed_work, i32, i32, %struct.anon.158 }
%struct.anon.156 = type { ptr, ptr }
%struct.anon.157 = type { %struct.spinlock, i32 }
%struct.anon.158 = type { i32, i32, i32, i32, i32 }
%struct.mt76_connac_coredump = type { %struct.sk_buff_head, %struct.delayed_work, i32 }

@mt7615_testmode_ops = dso_local constant { %struct.mt76_testmode_ops, [20 x i8] } { %struct.mt76_testmode_ops { ptr @mt7615_tm_set_state, ptr @mt7615_tm_set_params, ptr @mt7615_tm_dump_stats }, [20 x i8] zeroinitializer }, align 32
@mt7615_ops = external dso_local local_unnamed_addr constant %struct.ieee80211_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"mt7615_testmode_ops\00", align 1
@___asan_gen_.2 = private constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7615/testmode.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 372, i32 32 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @mt7615_testmode_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7615_testmode_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_tm_set_state(ptr nocapture noundef %mphy, i32 noundef %state) #0 align 64 {
entry:
  %total_flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %test = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 17
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %test, align 8
  store i32 %state, ptr %test, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @mt7615_tm_set_tx_frames(ptr noundef %1, i1 noundef zeroext false)
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp4 = icmp eq i32 %state, 2
  br i1 %cmp4, label %if.end6.thread, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.end6.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @mt7615_tm_set_tx_frames(ptr noundef %1, i1 noundef zeroext true)
  br label %if.end23

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp7 = icmp ult i32 %state, 2
  br i1 %cmp7, label %if.then8, label %if.end6.if.end23_crit_edge

if.end6.if.end23_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.then8:                                         ; preds = %if.end6
  %dev1.i = getelementptr inbounds %struct.mt7615_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %total_flags.i) #3
  %6 = ptrtoint ptr %total_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %total_flags.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %state.i = getelementptr inbounds %struct.mt76_phy, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then8.if.end9_crit_edge, label %if.end.i

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.end.i:                                         ; preds = %if.then8
  %test.i = getelementptr inbounds %struct.mt76_phy, ptr %8, i32 0, i32 17
  %12 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %test.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  %call4.i = tail call i32 @mt7615_mcu_set_sku_en(ptr noundef %1, i1 noundef zeroext %cmp.i) #3
  %mutex.i = getelementptr inbounds %struct.mt76_dev, ptr %5, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #3
  %call5.i = tail call i32 @mt7615_set_channel(ptr noundef %1) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ieee80211_ops, ptr @mt7615_ops, i32 0, i32 14) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.ieee80211_ops, ptr @mt7615_ops, i32 0, i32 14), align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  call void %14(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %total_flags.i, i64 noundef 0) #3
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #3
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i, align 4
  %test.i.i = getelementptr inbounds %struct.mt7615_phy, ptr %1, i32 0, i32 27
  %21 = ptrtoint ptr %test.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %test.i.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %test2.i.i = getelementptr inbounds %struct.mt76_phy, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %test2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %test2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 0
  br i1 %cmp.i.i, label %for.cond.preheader.i.i, label %if.end.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %bus.i.i = getelementptr inbounds %struct.mt76_dev, ptr %20, i32 0, i32 10
  %27 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i.i, align 4
  %wr.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr.i.i, align 4
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %22, align 4
  call void %30(ptr noundef %20, i32 noundef -2113466112, i32 noundef %32) #3
  %33 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i.i, align 4
  %wr.1.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %wr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr.1.i.i, align 4
  %arrayidx4.1.i.i = getelementptr i32, ptr %22, i32 1
  %37 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx4.1.i.i, align 4
  call void %36(ptr noundef %20, i32 noundef -2113465088, i32 noundef %38) #3
  %39 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i.i, align 4
  %wr.2.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %wr.2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wr.2.i.i, align 4
  %arrayidx4.2.i.i = getelementptr i32, ptr %22, i32 2
  %43 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx4.2.i.i, align 4
  call void %42(ptr noundef %20, i32 noundef -2113464064, i32 noundef %44) #3
  %45 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i.i, align 4
  %wr.3.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %wr.3.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wr.3.i.i, align 4
  %arrayidx4.3.i.i = getelementptr i32, ptr %22, i32 3
  %49 = ptrtoint ptr %arrayidx4.3.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx4.3.i.i, align 4
  call void %48(ptr noundef %20, i32 noundef -2113463040, i32 noundef %50) #3
  %51 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i.i, align 4
  %wr.4.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %wr.4.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wr.4.i.i, align 4
  %arrayidx4.4.i.i = getelementptr i32, ptr %22, i32 4
  %55 = ptrtoint ptr %arrayidx4.4.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx4.4.i.i, align 4
  call void %54(ptr noundef %20, i32 noundef -2130313012, i32 noundef %56) #3
  %57 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus.i.i, align 4
  %wr.5.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %wr.5.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wr.5.i.i, align 4
  %arrayidx4.5.i.i = getelementptr i32, ptr %22, i32 5
  %61 = ptrtoint ptr %arrayidx4.5.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx4.5.i.i, align 4
  call void %60(ptr noundef %20, i32 noundef -2130313008, i32 noundef %62) #3
  %63 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus.i.i, align 4
  %wr.6.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %wr.6.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wr.6.i.i, align 4
  %arrayidx4.6.i.i = getelementptr i32, ptr %22, i32 6
  %67 = ptrtoint ptr %arrayidx4.6.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx4.6.i.i, align 4
  call void %66(ptr noundef %20, i32 noundef -2130313004, i32 noundef %68) #3
  %69 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bus.i.i, align 4
  %wr.7.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %wr.7.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wr.7.i.i, align 4
  %arrayidx4.7.i.i = getelementptr i32, ptr %22, i32 7
  %73 = ptrtoint ptr %arrayidx4.7.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx4.7.i.i, align 4
  call void %72(ptr noundef %20, i32 noundef -2130312996, i32 noundef %74) #3
  %75 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus.i.i, align 4
  %wr.8.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %wr.8.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wr.8.i.i, align 4
  %arrayidx4.8.i.i = getelementptr i32, ptr %22, i32 8
  %79 = ptrtoint ptr %arrayidx4.8.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx4.8.i.i, align 4
  call void %78(ptr noundef %20, i32 noundef -2130312992, i32 noundef %80) #3
  %81 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus.i.i, align 4
  %wr.9.i.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %wr.9.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %wr.9.i.i, align 4
  %arrayidx4.9.i.i = getelementptr i32, ptr %22, i32 9
  %85 = ptrtoint ptr %arrayidx4.9.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx4.9.i.i, align 4
  call void %84(ptr noundef %20, i32 noundef -2130312988, i32 noundef %86) #3
  %arrayidx11.i.i = getelementptr i32, ptr %22, i32 10
  %87 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx11.i.i, align 4
  %call.i.i = call i32 @mt7615_rf_wr(ptr noundef %20, i32 noundef 0, i32 noundef 72, i32 noundef %88) #3
  %arrayidx11.1.i.i = getelementptr i32, ptr %22, i32 11
  %89 = ptrtoint ptr %arrayidx11.1.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx11.1.i.i, align 4
  %call.1.i.i = call i32 @mt7615_rf_wr(ptr noundef %20, i32 noundef 1, i32 noundef 72, i32 noundef %90) #3
  %arrayidx11.2.i.i = getelementptr i32, ptr %22, i32 12
  %91 = ptrtoint ptr %arrayidx11.2.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx11.2.i.i, align 4
  %call.2.i.i = call i32 @mt7615_rf_wr(ptr noundef %20, i32 noundef 2, i32 noundef 72, i32 noundef %92) #3
  %arrayidx11.3.i.i = getelementptr i32, ptr %22, i32 13
  %93 = ptrtoint ptr %arrayidx11.3.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx11.3.i.i, align 4
  %call.3.i.i = call i32 @mt7615_rf_wr(ptr noundef %20, i32 noundef 3, i32 noundef 72, i32 noundef %94) #3
  br label %if.end9

if.end.i.i:                                       ; preds = %if.end.i
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end16.i.i, label %if.end.i.i.if.end9_crit_edge

if.end.i.i.if.end9_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.end16.i.i:                                     ; preds = %if.end.i.i
  %dev17.i.i = getelementptr inbounds %struct.mt76_dev, ptr %20, i32 0, i32 13
  %95 = ptrtoint ptr %dev17.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev17.i.i, align 8
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %96, i32 noundef 56, i32 noundef 3520) #3
  %tobool20.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool20.not.i.i, label %if.end16.i.i.if.end9_crit_edge, label %if.end22.i.i

if.end16.i.i.if.end9_crit_edge:                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.end22.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %97 = ptrtoint ptr %test.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call.i.i.i, ptr %test.i.i, align 4
  %bus29.i.i = getelementptr inbounds %struct.mt76_dev, ptr %20, i32 0, i32 10
  %98 = ptrtoint ptr %bus29.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus29.i.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %call31.i.i = call i32 %101(ptr noundef %20, i32 noundef -2113466112) #3
  %102 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call31.i.i, ptr %call.i.i.i, align 4
  %103 = ptrtoint ptr %bus29.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bus29.i.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %call31.1.i.i = call i32 %106(ptr noundef %20, i32 noundef -2113465088) #3
  %arrayidx32.1.i.i = getelementptr i32, ptr %call.i.i.i, i32 1
  %107 = ptrtoint ptr %arrayidx32.1.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call31.1.i.i, ptr %arrayidx32.1.i.i, align 4
  %108 = ptrtoint ptr %bus29.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bus29.i.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %call31.2.i.i = call i32 %111(ptr noundef %20, i32 noundef -2113464064) #3
  %arrayidx32.2.i.i = getelementptr i32, ptr %call.i.i.i, i32 2
  %112 = ptrtoint ptr %arrayidx32.2.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %call31.2.i.i, ptr %arrayidx32.2.i.i, align 4
  %113 = ptrtoint ptr %bus29.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bus29.i.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %call31.3.i.i = call i32 %116(ptr noundef %20, i32 noundef -2113463040) #3
  %arrayidx32.3.i.i = getelementptr i32, ptr %call.i.i.i, i32 3
  %117 = ptrtoint ptr %arrayidx32.3.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call31.3.i.i, ptr %arrayidx32.3.i.i, align 4
  %118 = ptrtoint ptr %bus29.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bus29.i.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %call31.4.i.i = call i32 %121(ptr noundef %20, i32 noundef -2130313012) #3
  %arrayidx32.4.i.i = getelementptr i32, ptr %call.i.i.i, i32 4
  %122 = ptrtoint ptr %arrayidx32.4.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call31.4.i.i, ptr %arrayidx32.4.i.i, align 4
  %123 = ptrtoint ptr %bus29.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bus29.i.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %call31.5.i.i = call i32 %126(ptr noundef %20, i32 noundef -2130313008) #3
  %arrayidx32.5.i.i = getelementptr i32, ptr %call.i.i.i, i32 5
  %127 = ptrtoint ptr %arrayidx32.5.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call31.5.i.i, ptr %arrayidx32.5.i.i, align 4
  %128 = ptrtoint ptr %bus29.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bus29.i.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %call31.6.i.i = call i32 %131(ptr noundef %20, i32 noundef -2130313004) #3
  %arrayidx32.6.i.i = getelementptr i32, ptr %call.i.i.i, i32 6
  %132 = ptrtoint ptr %arrayidx32.6.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %call31.6.i.i, ptr %arrayidx32.6.i.i, align 4
  %133 = ptrtoint ptr %bus29.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bus29.i.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %call31.7.i.i = call i32 %136(ptr noundef %20, i32 noundef -2130312996) #3
  %arrayidx32.7.i.i = getelementptr i32, ptr %call.i.i.i, i32 7
  %137 = ptrtoint ptr %arrayidx32.7.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %call31.7.i.i, ptr %arrayidx32.7.i.i, align 4
  %138 = ptrtoint ptr %bus29.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bus29.i.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %call31.8.i.i = call i32 %141(ptr noundef %20, i32 noundef -2130312992) #3
  %arrayidx32.8.i.i = getelementptr i32, ptr %call.i.i.i, i32 8
  %142 = ptrtoint ptr %arrayidx32.8.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call31.8.i.i, ptr %arrayidx32.8.i.i, align 4
  %143 = ptrtoint ptr %bus29.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bus29.i.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %call31.9.i.i = call i32 %146(ptr noundef %20, i32 noundef -2130312988) #3
  %arrayidx32.9.i.i = getelementptr i32, ptr %call.i.i.i, i32 9
  %147 = ptrtoint ptr %arrayidx32.9.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %call31.9.i.i, ptr %arrayidx32.9.i.i, align 4
  %call46.i.i = call i32 @mt7615_rf_rr(ptr noundef %20, i32 noundef 0, i32 noundef 72) #3
  %arrayidx48.i.i = getelementptr i32, ptr %call.i.i.i, i32 10
  %148 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %call46.i.i, ptr %arrayidx48.i.i, align 4
  %call46.1.i.i = call i32 @mt7615_rf_rr(ptr noundef %20, i32 noundef 1, i32 noundef 72) #3
  %arrayidx48.1.i.i = getelementptr i32, ptr %call.i.i.i, i32 11
  %149 = ptrtoint ptr %arrayidx48.1.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %call46.1.i.i, ptr %arrayidx48.1.i.i, align 4
  %call46.2.i.i = call i32 @mt7615_rf_rr(ptr noundef %20, i32 noundef 2, i32 noundef 72) #3
  %arrayidx48.2.i.i = getelementptr i32, ptr %call.i.i.i, i32 12
  %150 = ptrtoint ptr %arrayidx48.2.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %call46.2.i.i, ptr %arrayidx48.2.i.i, align 4
  %call46.3.i.i = call i32 @mt7615_rf_rr(ptr noundef %20, i32 noundef 3, i32 noundef 72) #3
  %arrayidx48.3.i.i = getelementptr i32, ptr %call.i.i.i, i32 13
  %151 = ptrtoint ptr %arrayidx48.3.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %call46.3.i.i, ptr %arrayidx48.3.i.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end22.i.i, %if.end16.i.i.if.end9_crit_edge, %if.end.i.i.if.end9_crit_edge, %for.cond.preheader.i.i, %if.then8.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %total_flags.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp10 = icmp eq i32 %state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp eq i32 %3, 0
  %or.cond = select i1 %cmp10, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.end9.if.then15_crit_edge, label %lor.lhs.false

if.end9.if.then15_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp12 = icmp eq i32 %state, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp14 = icmp eq i32 %3, 1
  %or.cond42 = select i1 %cmp12, i1 %cmp14, i1 false
  br i1 %or.cond42, label %lor.lhs.false.if.then15_crit_edge, label %lor.lhs.false.if.end23_crit_edge

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end9.if.then15_crit_edge
  %arrayidx18 = getelementptr %struct.mt76_phy, ptr %mphy, i32 0, i32 17, i32 1, i32 0
  %152 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx18, align 4
  %and = lshr i32 %153, 15
  %and.lobit = and i32 %and, 1
  %and.1 = lshr i32 %153, 15
  %154 = and i32 %and.1, 2
  %changed.1.1 = or i32 %154, %and.lobit
  %and.2 = lshr i32 %153, 15
  %155 = and i32 %and.2, 4
  %changed.1.2 = or i32 %155, %changed.1.1
  call fastcc void @mt7615_tm_update_params(ptr noundef %1, i32 noundef %changed.1.2)
  br label %if.end23

if.end23:                                         ; preds = %if.then15, %lor.lhs.false.if.end23_crit_edge, %if.end6.if.end23_crit_edge, %if.end6.thread
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_tm_set_params(ptr nocapture noundef readonly %mphy, ptr nocapture noundef readonly %tb, i32 noundef %new_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_state)
  %cmp = icmp eq i32 %new_state, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %test = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 17
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %test, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tx_antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 17, i32 12
  %4 = ptrtoint ptr %tx_antenna_mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_antenna_mask, align 1
  %conv = zext i8 %5 to i32
  %chainmask = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 16
  %6 = ptrtoint ptr %chainmask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %chainmask, align 2
  %conv2 = zext i16 %7 to i32
  %neg = xor i32 %conv2, -1
  %and = and i32 %neg, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 15
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp ne ptr %9, null
  %or = zext i1 %tobool8.not to i32
  %arrayidx7.1 = getelementptr ptr, ptr %tb, i32 16
  %10 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7.1, align 4
  %tobool8.not.1 = icmp eq ptr %11, null
  %or.1 = select i1 %tobool8.not.1, i32 0, i32 2
  %changed.1.1 = or i32 %or.1, %or
  %arrayidx7.2 = getelementptr ptr, ptr %tb, i32 17
  %12 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7.2, align 4
  %tobool8.not.2 = icmp eq ptr %13, null
  %or.2 = select i1 %tobool8.not.2, i32 0, i32 4
  %changed.1.2 = or i32 %or.2, %changed.1.1
  tail call fastcc void @mt7615_tm_update_params(ptr noundef %1, i32 noundef %changed.1.2)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.preheader ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7615_tm_dump_stats(ptr nocapture noundef readonly %mphy, ptr noundef %msg) #0 align 64 {
entry:
  %tmp.i108 = alloca i8, align 1
  %tmp.i97 = alloca i8, align 1
  %tmp.i91 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mt76_phy, ptr %mphy, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 32775, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not120 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not120
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_freq_offset = getelementptr inbounds %struct.mt7615_phy, ptr %1, i32 0, i32 27, i32 1
  %4 = ptrtoint ptr %last_freq_offset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %last_freq_offset, align 4
  %conv = sext i16 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #3
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i88 = call i32 @nla_put(ptr noundef %msg, i32 noundef 32770, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i88)
  %cmp.i.i89 = icmp slt i32 %call1.i.i88, 0
  %tobool6.not128 = icmp eq ptr %8, null
  %tobool6.not = select i1 %cmp.i.i89, i1 true, i1 %tobool6.not128
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %for.body.preheader

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.preheader:                               ; preds = %if.end4
  %arrayidx = getelementptr %struct.mt7615_phy, ptr %1, i32 0, i32 27, i32 2, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i91) #3
  %11 = ptrtoint ptr %tmp.i91 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tmp.i91, align 1
  %call.i92 = call i32 @nla_put(ptr noundef %msg, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %tmp.i91) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i91) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool12.not = icmp eq i32 %call.i92, 0
  br i1 %tobool12.not, label %for.cond, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.mt7615_phy, ptr %1, i32 0, i32 27, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i91) #3
  %14 = ptrtoint ptr %tmp.i91 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tmp.i91, align 1
  %call.i92.1 = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i91) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i91) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.1)
  %tobool12.not.1 = icmp eq i32 %call.i92.1, 0
  br i1 %tobool12.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.mt7615_phy, ptr %1, i32 0, i32 27, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i91) #3
  %17 = ptrtoint ptr %tmp.i91 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tmp.i91, align 1
  %call.i92.2 = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i91) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i91) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.2)
  %tobool12.not.2 = icmp eq i32 %call.i92.2, 0
  br i1 %tobool12.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.mt7615_phy, ptr %1, i32 0, i32 27, i32 2, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i91) #3
  %20 = ptrtoint ptr %tmp.i91 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tmp.i91, align 1
  %call.i92.3 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i91) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i91) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.3)
  %tobool12.not.3 = icmp eq i32 %call.i92.3, 0
  br i1 %tobool12.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %21 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %8, align 2
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i94 = call i32 @nla_put(ptr noundef %msg, i32 noundef 32771, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i94)
  %cmp.i.i95 = icmp slt i32 %call1.i.i94, 0
  %tobool17.not129 = icmp eq ptr %24, null
  %tobool17.not = select i1 %cmp.i.i95, i1 true, i1 %tobool17.not129
  br i1 %tobool17.not, label %for.cond.3.cleanup_crit_edge, label %for.body23.preheader

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body23.preheader:                             ; preds = %for.cond.3
  %arrayidx25 = getelementptr %struct.mt7615_phy, ptr %1, i32 0, i32 27, i32 3, i32 0
  %25 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx25, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i97) #3
  %27 = ptrtoint ptr %tmp.i97 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %tmp.i97, align 1
  %call.i98 = call i32 @nla_put(ptr noundef %msg, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %tmp.i97) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i97) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool27.not = icmp eq i32 %call.i98, 0
  br i1 %tobool27.not, label %for.cond20, label %for.body23.preheader.cleanup_crit_edge

for.body23.preheader.cleanup_crit_edge:           ; preds = %for.body23.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond20:                                       ; preds = %for.body23.preheader
  %arrayidx25.1 = getelementptr %struct.mt7615_phy, ptr %1, i32 0, i32 27, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx25.1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i97) #3
  %30 = ptrtoint ptr %tmp.i97 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %tmp.i97, align 1
  %call.i98.1 = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i97) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i97) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.1)
  %tobool27.not.1 = icmp eq i32 %call.i98.1, 0
  br i1 %tobool27.not.1, label %for.cond20.1, label %for.cond20.cleanup_crit_edge

for.cond20.cleanup_crit_edge:                     ; preds = %for.cond20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond20.1:                                     ; preds = %for.cond20
  %arrayidx25.2 = getelementptr %struct.mt7615_phy, ptr %1, i32 0, i32 27, i32 3, i32 2
  %31 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx25.2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i97) #3
  %33 = ptrtoint ptr %tmp.i97 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %tmp.i97, align 1
  %call.i98.2 = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i97) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i97) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.2)
  %tobool27.not.2 = icmp eq i32 %call.i98.2, 0
  br i1 %tobool27.not.2, label %for.cond20.2, label %for.cond20.1.cleanup_crit_edge

for.cond20.1.cleanup_crit_edge:                   ; preds = %for.cond20.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond20.2:                                     ; preds = %for.cond20.1
  %arrayidx25.3 = getelementptr %struct.mt7615_phy, ptr %1, i32 0, i32 27, i32 3, i32 3
  %34 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx25.3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i97) #3
  %36 = ptrtoint ptr %tmp.i97 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %tmp.i97, align 1
  %call.i98.3 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i97) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i97) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.3)
  %tobool27.not.3 = icmp eq i32 %call.i98.3, 0
  br i1 %tobool27.not.3, label %for.cond20.3, label %for.cond20.2.cleanup_crit_edge

for.cond20.2.cleanup_crit_edge:                   ; preds = %for.cond20.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond20.3:                                     ; preds = %for.cond20.2
  %37 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i100 = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i101 = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i102 = sub i32 %sub.ptr.lhs.cast.i100, %sub.ptr.rhs.cast.i101
  %conv.i103 = trunc i32 %sub.ptr.sub.i102 to i16
  %39 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i103, ptr %24, align 2
  %40 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i105 = call i32 @nla_put(ptr noundef %msg, i32 noundef 32772, i32 noundef 0, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i105)
  %cmp.i.i106 = icmp slt i32 %call1.i.i105, 0
  %tobool35.not130 = icmp eq ptr %40, null
  %tobool35.not = select i1 %cmp.i.i106, i1 true, i1 %tobool35.not130
  br i1 %tobool35.not, label %for.cond20.3.cleanup_crit_edge, label %for.body41.preheader

for.cond20.3.cleanup_crit_edge:                   ; preds = %for.cond20.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body41.preheader:                             ; preds = %for.cond20.3
  %arrayidx43 = getelementptr %struct.mt7615_phy, ptr %1, i32 0, i32 27, i32 4, i32 0
  %41 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx43, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i108) #3
  %43 = ptrtoint ptr %tmp.i108 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %tmp.i108, align 1
  %call.i109 = call i32 @nla_put(ptr noundef %msg, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %tmp.i108) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i108) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool45.not = icmp eq i32 %call.i109, 0
  br i1 %tobool45.not, label %for.cond38, label %for.body41.preheader.cleanup_crit_edge

for.body41.preheader.cleanup_crit_edge:           ; preds = %for.body41.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond38:                                       ; preds = %for.body41.preheader
  %arrayidx43.1 = getelementptr %struct.mt7615_phy, ptr %1, i32 0, i32 27, i32 4, i32 1
  %44 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx43.1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i108) #3
  %46 = ptrtoint ptr %tmp.i108 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %tmp.i108, align 1
  %call.i109.1 = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i108) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i108) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109.1)
  %tobool45.not.1 = icmp eq i32 %call.i109.1, 0
  br i1 %tobool45.not.1, label %for.cond38.1, label %for.cond38.cleanup_crit_edge

for.cond38.cleanup_crit_edge:                     ; preds = %for.cond38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond38.1:                                     ; preds = %for.cond38
  %arrayidx43.2 = getelementptr %struct.mt7615_phy, ptr %1, i32 0, i32 27, i32 4, i32 2
  %47 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx43.2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i108) #3
  %49 = ptrtoint ptr %tmp.i108 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %tmp.i108, align 1
  %call.i109.2 = call i32 @nla_put(ptr noundef %msg, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i108) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i108) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109.2)
  %tobool45.not.2 = icmp eq i32 %call.i109.2, 0
  br i1 %tobool45.not.2, label %for.cond38.2, label %for.cond38.1.cleanup_crit_edge

for.cond38.1.cleanup_crit_edge:                   ; preds = %for.cond38.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond38.2:                                     ; preds = %for.cond38.1
  %arrayidx43.3 = getelementptr %struct.mt7615_phy, ptr %1, i32 0, i32 27, i32 4, i32 3
  %50 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx43.3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i108) #3
  %52 = ptrtoint ptr %tmp.i108 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %tmp.i108, align 1
  %call.i109.3 = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i108) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i108) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109.3)
  %tobool45.not.3 = icmp eq i32 %call.i109.3, 0
  br i1 %tobool45.not.3, label %for.cond38.3, label %for.cond38.2.cleanup_crit_edge

for.cond38.2.cleanup_crit_edge:                   ; preds = %for.cond38.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond38.3:                                     ; preds = %for.cond38.2
  call void @__sanitizer_cov_trace_pc() #5
  %53 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i111 = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i112 = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i113 = sub i32 %sub.ptr.lhs.cast.i111, %sub.ptr.rhs.cast.i112
  %conv.i114 = trunc i32 %sub.ptr.sub.i113 to i16
  %55 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i114, ptr %40, align 2
  %56 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i116 = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i117 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i118 = sub i32 %sub.ptr.lhs.cast.i116, %sub.ptr.rhs.cast.i117
  %conv.i119 = trunc i32 %sub.ptr.sub.i118 to i16
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i119, ptr %3, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.cond38.3, %for.cond38.2.cleanup_crit_edge, %for.cond38.1.cleanup_crit_edge, %for.cond38.cleanup_crit_edge, %for.body41.preheader.cleanup_crit_edge, %for.cond20.3.cleanup_crit_edge, %for.cond20.2.cleanup_crit_edge, %for.cond20.1.cleanup_crit_edge, %for.cond20.cleanup_crit_edge, %for.body23.preheader.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond38.3 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ -12, %for.cond.3.cleanup_crit_edge ], [ -12, %for.cond20.3.cleanup_crit_edge ], [ -12, %for.cond38.2.cleanup_crit_edge ], [ -12, %for.cond38.1.cleanup_crit_edge ], [ -12, %for.cond38.cleanup_crit_edge ], [ -12, %for.body41.preheader.cleanup_crit_edge ], [ -12, %for.cond20.2.cleanup_crit_edge ], [ -12, %for.cond20.1.cleanup_crit_edge ], [ -12, %for.cond20.cleanup_crit_edge ], [ -12, %for.body23.preheader.cleanup_crit_edge ], [ -12, %for.cond.2.cleanup_crit_edge ], [ -12, %for.cond.1.cleanup_crit_edge ], [ -12, %for.cond.cleanup_crit_edge ], [ -12, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7615_tm_set_tx_frames(ptr noundef %phy, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7615_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %tx_skb = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 17, i32 2
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb, align 8
  %call = tail call i32 @mt7615_mcu_set_chan_info(ptr noundef %phy, i32 noundef 20205) #3
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 8
  %tx_antenna_mask.i = getelementptr inbounds %struct.mt76_phy, ptr %9, i32 0, i32 17, i32 12
  %10 = ptrtoint ptr %tx_antenna_mask.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_antenna_mask.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.mt7615_tm_set_tx_antenna.exit_crit_edge, label %if.end.i

entry.mt7615_tm_set_tx_antenna.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7615_tm_set_tx_antenna.exit

if.end.i:                                         ; preds = %entry
  br i1 %en, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %chainmask.i = getelementptr inbounds %struct.mt76_phy, ptr %9, i32 0, i32 16
  %12 = ptrtoint ptr %chainmask.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %chainmask.i, align 2
  %conv.i = trunc i16 %13 to i8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %mask.0.i = phi i8 [ %11, %if.end.i.if.end5.i_crit_edge ], [ %conv.i, %if.then3.i ]
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %7, i32 0, i32 10
  %conv12.i = zext i8 %mask.0.i to i32
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmw.i, align 4
  %and.i = and i32 %conv12.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool13.not.i, i32 160, i32 0
  %call.i = tail call i32 %17(ptr noundef %7, i32 noundef -2113466112, i32 noundef 240, i32 noundef %cond.i) #3
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 4
  %rmw.1.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %rmw.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw.1.i, align 4
  %and.1.i = and i32 %conv12.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool13.not.1.i = icmp eq i32 %and.1.i, 0
  %cond.1.i = select i1 %tobool13.not.1.i, i32 160, i32 0
  %call.1.i = tail call i32 %21(ptr noundef %7, i32 noundef -2113465088, i32 noundef 240, i32 noundef %cond.1.i) #3
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 4
  %rmw.2.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %rmw.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmw.2.i, align 4
  %and.2.i = and i32 %conv12.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool13.not.2.i = icmp eq i32 %and.2.i, 0
  %cond.2.i = select i1 %tobool13.not.2.i, i32 160, i32 0
  %call.2.i = tail call i32 %25(ptr noundef %7, i32 noundef -2113464064, i32 noundef 240, i32 noundef %cond.2.i) #3
  %26 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i, align 4
  %rmw.3.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %rmw.3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmw.3.i, align 4
  %and.3.i = and i32 %conv12.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool13.not.3.i = icmp eq i32 %and.3.i, 0
  %cond.3.i = select i1 %tobool13.not.3.i, i32 160, i32 0
  %call.3.i = tail call i32 %29(ptr noundef %7, i32 noundef -2113463040, i32 noundef 240, i32 noundef %cond.3.i) #3
  %30 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i, align 4
  %rmw39.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %rmw39.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmw39.i, align 4
  %cond50.i = select i1 %tobool13.not.i, i32 27, i32 8
  %call76.i = tail call i32 %33(ptr noundef %7, i32 noundef -2130313008, i32 noundef 31, i32 noundef %cond50.i) #3
  %34 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i, align 4
  %rmw78.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %rmw78.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmw78.i, align 4
  %cond89.i = select i1 %tobool13.not.1.i, i32 1769472, i32 917504
  %call115.i = tail call i32 %37(ptr noundef %7, i32 noundef -2130313004, i32 noundef 2031616, i32 noundef %cond89.i) #3
  %38 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i, align 4
  %rmw117.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %rmw117.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmw117.i, align 4
  %cond128.i = select i1 %tobool13.not.2.i, i32 15, i32 0
  %call154.i = tail call i32 %41(ptr noundef %7, i32 noundef -2130312996, i32 noundef 15, i32 noundef %cond128.i) #3
  %42 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus.i, align 4
  %rmw156.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %rmw156.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmw156.i, align 4
  %cond167.i = select i1 %tobool13.not.3.i, i32 983040, i32 393216
  %call193.i = tail call i32 %45(ptr noundef %7, i32 noundef -2130312992, i32 noundef 983040, i32 noundef %cond167.i) #3
  %46 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus.i, align 4
  %rmw195.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %rmw195.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmw195.i, align 4
  %cond206.i = select i1 %tobool13.not.i, i32 6912, i32 3328
  %call232.i = tail call i32 %49(ptr noundef %7, i32 noundef -2130313004, i32 noundef 7936, i32 noundef %cond206.i) #3
  %50 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus.i, align 4
  %rmw234.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %rmw234.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmw234.i, align 4
  %cond245.i = select i1 %tobool13.not.1.i, i32 452984832, i32 318767104
  %call271.i = tail call i32 %53(ptr noundef %7, i32 noundef -2130313012, i32 noundef 520093696, i32 noundef %cond245.i) #3
  %54 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus.i, align 4
  %rmw273.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %rmw273.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmw273.i, align 4
  %cond284.i = select i1 %tobool13.not.2.i, i32 3840, i32 1280
  %call310.i = tail call i32 %57(ptr noundef %7, i32 noundef -2130312992, i32 noundef 3840, i32 noundef %cond284.i) #3
  %58 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus.i, align 4
  %rmw312.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %rmw312.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmw312.i, align 4
  %cond323.i = select i1 %tobool13.not.3.i, i32 251658240, i32 184549376
  %call349.i = tail call i32 %61(ptr noundef %7, i32 noundef -2130312988, i32 noundef 251658240, i32 noundef %cond323.i) #3
  %call354.i = tail call i32 @mt7615_rf_rr(ptr noundef %7, i32 noundef 0, i32 noundef 72) #3
  %and355.i = and i32 %call354.i, -1072693249
  %val.0.v.i = select i1 %tobool13.not.i, i32 679477248, i32 3145728
  %val.0.i = or i32 %and355.i, %val.0.v.i
  %call363.i = tail call i32 @mt7615_rf_wr(ptr noundef %7, i32 noundef 0, i32 noundef 72, i32 noundef %val.0.i) #3
  %call354.1.i = tail call i32 @mt7615_rf_rr(ptr noundef %7, i32 noundef 1, i32 noundef 72) #3
  %and355.1.i = and i32 %call354.1.i, -1072693249
  %val.0.v.1.i = select i1 %tobool13.not.1.i, i32 679477248, i32 3145728
  %val.0.1.i = or i32 %and355.1.i, %val.0.v.1.i
  %call363.1.i = tail call i32 @mt7615_rf_wr(ptr noundef %7, i32 noundef 1, i32 noundef 72, i32 noundef %val.0.1.i) #3
  %call354.2.i = tail call i32 @mt7615_rf_rr(ptr noundef %7, i32 noundef 2, i32 noundef 72) #3
  %and355.2.i = and i32 %call354.2.i, -1072693249
  %val.0.v.2.i = select i1 %tobool13.not.2.i, i32 679477248, i32 3145728
  %val.0.2.i = or i32 %and355.2.i, %val.0.v.2.i
  %call363.2.i = tail call i32 @mt7615_rf_wr(ptr noundef %7, i32 noundef 2, i32 noundef 72, i32 noundef %val.0.2.i) #3
  %call354.3.i = tail call i32 @mt7615_rf_rr(ptr noundef %7, i32 noundef 3, i32 noundef 72) #3
  %and355.3.i = and i32 %call354.3.i, -1072693249
  %val.0.v.3.i = select i1 %tobool13.not.3.i, i32 679477248, i32 3145728
  %val.0.3.i = or i32 %and355.3.i, %val.0.v.3.i
  %call363.3.i = tail call i32 @mt7615_rf_wr(ptr noundef %7, i32 noundef 3, i32 noundef 72, i32 noundef %val.0.3.i) #3
  br label %mt7615_tm_set_tx_antenna.exit

mt7615_tm_set_tx_antenna.exit:                    ; preds = %if.end5.i, %entry.mt7615_tm_set_tx_antenna.exit_crit_edge
  %bus.i43 = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 10
  %62 = ptrtoint ptr %bus.i43 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus.i43, align 4
  %rmw.i44 = getelementptr inbounds %struct.mt76_bus_ops, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmw.i44, align 4
  %reg_map.i = getelementptr inbounds %struct.mt7615_dev, ptr %1, i32 0, i32 9
  %66 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_map.i, align 8
  %arrayidx.i = getelementptr i32, ptr %67, i32 4
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %69, 128
  br i1 %en, label %mt7615_tm_set_rx_enable.exit, label %mt7615_tm_set_rx_enable.exit.thread

mt7615_tm_set_rx_enable.exit.thread:              ; preds = %mt7615_tm_set_tx_antenna.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call.i45 = tail call i32 %65(ptr noundef %1, i32 noundef %add.i, i32 noundef 2560, i32 noundef 0) #3
  %70 = ptrtoint ptr %bus.i43 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus.i43, align 4
  %rmw2.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %rmw2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmw2.i, align 4
  %74 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_map.i, align 8
  %arrayidx4.i = getelementptr i32, ptr %75, i32 4
  %76 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx4.i, align 4
  %add5.i = add i32 %77, 112
  %call6.i = tail call i32 %73(ptr noundef %1, i32 noundef %add5.i, i32 noundef 0, i32 noundef 26280337) #3
  br label %cleanup

mt7615_tm_set_rx_enable.exit:                     ; preds = %mt7615_tm_set_tx_antenna.exit
  %call12.i = tail call i32 %65(ptr noundef %1, i32 noundef %add.i, i32 noundef 0, i32 noundef 2560) #3
  %78 = ptrtoint ptr %bus.i43 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus.i43, align 4
  %rmw14.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %rmw14.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmw14.i, align 4
  %82 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_map.i, align 8
  %arrayidx16.i = getelementptr i32, ptr %83, i32 4
  %84 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx16.i, align 4
  %add17.i = add i32 %85, 112
  %call18.i = tail call i32 %81(ptr noundef %1, i32 noundef %add17.i, i32 noundef 26280337, i32 noundef 0) #3
  %tobool32.not = icmp eq ptr %5, null
  br i1 %tobool32.not, label %mt7615_tm_set_rx_enable.exit.cleanup_crit_edge, label %if.end

mt7615_tm_set_rx_enable.exit.cleanup_crit_edge:   ; preds = %mt7615_tm_set_rx_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %mt7615_tm_set_rx_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  %monitor_vif = getelementptr inbounds %struct.mt7615_phy, ptr %phy, i32 0, i32 2
  %86 = ptrtoint ptr %monitor_vif to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %monitor_vif, align 8
  %vif = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 24
  %88 = ptrtoint ptr %vif to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %vif, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mt7615_tm_set_rx_enable.exit.cleanup_crit_edge, %mt7615_tm_set_rx_enable.exit.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7615_tm_update_params(ptr noundef readonly %phy, i32 noundef %changed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mt7615_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %test = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %test, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp ne i32 %5, 0
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  br i1 %cmp, label %land.rhs, label %if.then.land.end_crit_edge

if.then.land.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

land.rhs:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %tx_power_control = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 17, i32 19
  %6 = ptrtoint ptr %tx_power_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_power_control, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6 = icmp ne i8 %7, 0
  %phi.cast = zext i1 %tobool6 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.land.end_crit_edge
  %8 = phi i32 [ 0, %if.then.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %call = tail call i32 @mt7615_mcu_set_test_param(ptr noundef %1, i8 noundef zeroext 21, i1 noundef zeroext %cmp, i32 noundef %8) #3
  br label %if.end

if.end:                                           ; preds = %land.end, %entry.if.end_crit_edge
  %and7 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end14_crit_edge, label %if.then9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then9:                                         ; preds = %if.end
  br i1 %cmp, label %cond.true, label %if.then9.cond.end_crit_edge

if.then9.cond.end_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  %freq_offset = getelementptr inbounds %struct.mt76_phy, ptr %3, i32 0, i32 17, i32 17
  %9 = ptrtoint ptr %freq_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %freq_offset, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then9.cond.end_crit_edge
  %cond = phi i32 [ %10, %cond.true ], [ 0, %if.then9.cond.end_crit_edge ]
  %call13 = tail call i32 @mt7615_mcu_set_test_param(ptr noundef %1, i8 noundef zeroext 10, i1 noundef zeroext %cmp, i32 noundef %cond) #3
  br label %if.end14

if.end14:                                         ; preds = %cond.end, %if.end.if.end14_crit_edge
  %and15 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  %11 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1, align 4
  %13 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy, align 8
  %antenna_mask.i = getelementptr inbounds %struct.mt76_phy, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %antenna_mask.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %antenna_mask.i, align 8
  %conv67.i = zext i8 %16 to i32
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %conv67.i) #3
  %chandef68.i = getelementptr inbounds %struct.mt76_phy, ptr %14, i32 0, i32 5
  %center_freq1.i = getelementptr inbounds %struct.mt76_phy, ptr %14, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %center_freq1.i, align 4
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %12, i32 0, i32 44
  %19 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eeprom.i, align 16
  %21 = ptrtoint ptr %chandef68.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chandef68.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %mul.i.i = mul i32 %18, 1000
  %call.i7.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i) #3
  %test.i = getelementptr inbounds %struct.mt76_phy, ptr %14, i32 0, i32 17
  %25 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %test.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp78.not.i = icmp eq i32 %26, 0
  %tx_power81.i = getelementptr inbounds %struct.mt76_phy, ptr %14, i32 0, i32 17, i32 18
  %spec.select.i = select i1 %cmp78.not.i, ptr null, ptr %tx_power81.i
  %call83.i = tail call ptr @mt76_mcu_msg_alloc(ptr noundef %12, ptr noundef null, i32 noundef 911) #3
  %tobool84.not.i = icmp eq ptr %call83.i, null
  br i1 %tobool84.not.i, label %if.then17.if.end19_crit_edge, label %if.end86.i

if.then17.if.end19_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.end86.i:                                       ; preds = %if.then17
  %conv77.i = trunc i32 %24 to i8
  %phy73.i = getelementptr inbounds %struct.mt7615_dev, ptr %12, i32 0, i32 3
  %cmp.i = icmp ne ptr %phy73.i, %phy
  %conv75.i = zext i1 %cmp.i to i8
  %conv72.i = trunc i32 %call.i7.i to i8
  %call.i8.i = tail call ptr @skb_put(ptr noundef nonnull %call83.i, i32 noundef 4) #3
  %27 = ptrtoint ptr %call.i8.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv72.i, ptr %call.i8.i, align 1
  %req_hdr.sroa.5.0.call.i8.sroa_idx.i = getelementptr inbounds i8, ptr %call.i8.i, i32 1
  %28 = ptrtoint ptr %req_hdr.sroa.5.0.call.i8.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv75.i, ptr %req_hdr.sroa.5.0.call.i8.sroa_idx.i, align 1
  %req_hdr.sroa.7.0.call.i8.sroa_idx.i = getelementptr inbounds i8, ptr %call.i8.i, i32 2
  %29 = ptrtoint ptr %req_hdr.sroa.7.0.call.i8.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv77.i, ptr %req_hdr.sroa.7.0.call.i8.sroa_idx.i, align 1
  %req_hdr.sroa.9.0.call.i8.sroa_idx.i = getelementptr inbounds i8, ptr %call.i8.i, i32 3
  %30 = ptrtoint ptr %req_hdr.sroa.9.0.call.i8.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %req_hdr.sroa.9.0.call.i8.sroa_idx.i, align 1
  %add.ptr.i = getelementptr i8, ptr %20, i32 52
  %call.i9.i = tail call ptr @skb_put(ptr noundef nonnull %call83.i, i32 noundef 907) #3
  %31 = call ptr @memcpy(ptr %call.i9.i, ptr %add.ptr.i, i32 907)
  %32 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %eeprom.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 1
  %arrayidx.i.i = getelementptr i8, ptr %33, i32 55
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i, align 1
  %..i.i = select i1 %cmp.i.i, i8 64, i8 32
  %36 = and i8 %35, %..i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %retval.0.i.i = icmp eq i8 %36, 0
  %spec.select6.i = select i1 %retval.0.i.i, i32 1, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select6.i)
  %cmp9511.i = icmp sgt i32 %spec.select6.i, 0
  br i1 %cmp9511.i, label %if.end86.i.for.body.i_crit_edge, label %if.end86.i.for.end.i_crit_edge

if.end86.i.for.end.i_crit_edge:                   ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end86.i.for.body.i_crit_edge:                  ; preds = %if.end86.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end86.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end86.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %chandef68.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chandef68.i, align 4
  %conv98.i = trunc i32 %i.012.i to i8
  %call99.i = tail call i32 @mt7615_eeprom_get_target_power_index(ptr noundef %12, ptr noundef %38, i8 noundef zeroext %conv98.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %cmp100.i = icmp slt i32 %call99.i, 0
  br i1 %cmp100.i, label %if.then102.i, label %if.end103.i

if.then102.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @consume_skb(ptr noundef nonnull %call83.i) #3
  br label %if.end19

if.end103.i:                                      ; preds = %for.body.i
  br i1 %cmp78.not.i, label %if.end103.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end103.i.for.inc.i_crit_edge:                  ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end103.i
  %arrayidx.i = getelementptr i8, ptr %spec.select.i, i32 %i.012.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool106.not.i = icmp eq i8 %40, 0
  br i1 %tobool106.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then107.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then107.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add nsw i32 %call99.i, -52
  %arrayidx109.i = getelementptr i8, ptr %call.i9.i, i32 %sub.i
  %41 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx109.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then107.i, %land.lhs.true.i.for.inc.i_crit_edge, %if.end103.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %spec.select6.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end86.i.for.end.i_crit_edge
  %call.i10.i = tail call i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef %12, ptr noundef nonnull %call83.i, i32 noundef 4589, i1 noundef zeroext false, ptr noundef null) #3
  br label %if.end19

if.end19:                                         ; preds = %for.end.i, %if.then102.i, %if.then17.if.end19_crit_edge, %if.end14.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_set_chan_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_rf_rr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_rf_wr(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_set_sku_en(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_set_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_mcu_set_test_param(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_mcu_msg_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7615_eeprom_get_target_power_index(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_mcu_skb_send_and_get_msg(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @mt7615_testmode_ops, !1, !"mt7615_testmode_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/testmode.c", i32 372, i32 32}
!2 = distinct !{null, !3, !"reg_backup_list", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/testmode.c", i32 24, i32 18}
!4 = distinct !{null, !5, !"rf_backup_list", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/testmode.c", i32 40, i32 3}
!6 = distinct !{null, !7, !"tm_change_map", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt7615/testmode.c", i32 18, i32 17}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
