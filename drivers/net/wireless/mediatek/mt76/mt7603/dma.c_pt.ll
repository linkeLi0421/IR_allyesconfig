; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7603/dma.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7603/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.142, ptr, %union.anon.143, [20 x i8] }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mt7603_rx_loopback_skb.tid_to_ac = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\02\03\03\02\01\01\00\00", [24 x i8] zeroinitializer }, align 32
@mt7603_rx_loopback_skb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/mediatek/mt76/mt7603/dma.c\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 7]
@___asan_gen_.2 = private unnamed_addr constant [10 x i8] c"tid_to_ac\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 10, i32 18 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7603/dma.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 40, i32 9 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @mt7603_rx_loopback_skb.tid_to_ac, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_rx_loopback_skb.tid_to_ac to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_queue_rx_skb(ptr noundef %mdev, i32 noundef %q, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = lshr i32 %5, 5
  %shr = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %q)
  %cmp = icmp eq i32 %q, 1
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp16 = icmp eq i32 %shr, 7
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76_mcu_rx_event(ptr noundef %mdev, ptr noundef %skb) #4
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %3)
  %cmp.i = icmp ult i32 %3, 62
  br i1 %cmp.i, label %if.else.free.i_crit_edge, label %if.end.i

if.else.free.i_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %free.i

if.end.i:                                         ; preds = %if.else
  %arrayidx.i = getelementptr i32, ptr %1, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  %and.i = and i32 %9, 255
  %and29.i = lshr i32 %9, 20
  %shr30.i = and i32 %and29.i, 7
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %10 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr30.i, ptr %priority.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 121, i32 %and.i)
  %cmp31.i = icmp ugt i32 %and.i, 121
  br i1 %cmp31.i, label %if.end.i.free.i_crit_edge, label %if.end33.i

if.end.i.free.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %free.i

if.end33.i:                                       ; preds = %if.end.i
  %arrayidx39.i = getelementptr %struct.mt76_dev, ptr %mdev, i32 0, i32 37, i32 %and.i
  %11 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx39.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end33.i.do.end48.i_crit_edge

if.end33.i.do.end48.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end48.i

land.lhs.true.i:                                  ; preds = %if.end33.i
  %call41.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %land.lhs.true.i.do.end48.i_crit_edge, label %land.lhs.true43.i

land.lhs.true.i.do.end48.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end48.i

land.lhs.true43.i:                                ; preds = %land.lhs.true.i
  %.b124.i = load i1, ptr @mt7603_rx_loopback_skb.__warned, align 1
  br i1 %.b124.i, label %land.lhs.true43.i.do.end48.i_crit_edge, label %if.then45.i

land.lhs.true43.i.do.end48.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end48.i

if.then45.i:                                      ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @mt7603_rx_loopback_skb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 40, ptr noundef nonnull @.str.1) #4
  br label %do.end48.i

do.end48.i:                                       ; preds = %if.then45.i, %land.lhs.true43.i.do.end48.i_crit_edge, %land.lhs.true.i.do.end48.i_crit_edge, %if.end33.i.do.end48.i_crit_edge
  %tobool50.not.i = icmp eq ptr %12, null
  br i1 %tobool50.not.i, label %do.end48.i.free.i_crit_edge, label %if.end52.i

do.end48.i.free.i_crit_edge:                      ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %free.i

if.end52.i:                                       ; preds = %do.end48.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %15 = and i32 %14, -249
  %16 = or i32 %15, 32
  store i32 %16, ptr %1, align 4
  %add.ptr75.i = getelementptr i8, ptr %12, i32 -268
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %arrayidx77.i = getelementptr i8, ptr %18, i32 32
  %19 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx77.i, align 2
  %21 = and i16 %20, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %21)
  %cmp.i.i = icmp eq i16 %21, -30720
  br i1 %cmp.i.i, label %if.then79.i, label %if.end52.i.if.end83.i_crit_edge

if.end52.i.if.end83.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end83.i

if.then79.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = and i16 %20, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %22)
  %cmp.i.i.i = icmp eq i16 %22, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %arrayidx77.i, i32 %retval.0.v.i.i
  %23 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %retval.0.i.i, align 1
  %25 = and i8 %24, 7
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then79.i, %if.end52.i.if.end83.i_crit_edge
  %tid.0.i = phi i8 [ %25, %if.then79.i ], [ 0, %if.end52.i.if.end83.i_crit_edge ]
  %idxprom.i = zext i8 %tid.0.i to i32
  %arrayidx84.i = getelementptr [8 x i8], ptr @mt7603_rx_loopback_skb.tid_to_ac, i32 0, i32 %idxprom.i
  %26 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx84.i, align 1
  %conv85.i = zext i8 %27 to i16
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %28 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv85.i, ptr %queue_mapping1.i.i, align 8
  tail call void @ieee80211_sta_set_buffered(ptr noundef %add.ptr75.i, i8 noundef zeroext %tid.0.i, i1 noundef zeroext true) #4
  %ps_lock.i = getelementptr inbounds %struct.mt7603_dev, ptr %mdev, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_lock.i) #4
  %psq.i = getelementptr inbounds %struct.mt7603_sta, ptr %12, i32 0, i32 4
  %prev.i.i.i = getelementptr inbounds %struct.mt7603_sta, ptr %12, i32 0, i32 4, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %psq.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %skb, i32 0, i32 1
  %32 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %skb, ptr %30, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.mt7603_sta, ptr %12, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add.i.i.i.i)
  %cmp88.i = icmp ugt i32 %add.i.i.i.i, 63
  br i1 %cmp88.i, label %if.then90.i, label %if.end83.i.if.end93.i_crit_edge

if.end83.i.if.end93.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end93.i

if.then90.i:                                      ; preds = %if.end83.i
  %36 = ptrtoint ptr %psq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %psq.i, align 4
  %cmp.i.i125.i = icmp eq ptr %37, %psq.i
  %spec.store.select.i.i.i = select i1 %cmp.i.i125.i, ptr null, ptr %37
  %tobool.not.i.i = icmp eq ptr %spec.store.select.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then90.i.__skb_dequeue.exit.i_crit_edge, label %if.then.i.i

if.then90.i.__skb_dequeue.exit.i_crit_edge:       ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__skb_dequeue.exit.i

if.then.i.i:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %35, ptr %qlen.i.i.i.i, align 4
  %39 = ptrtoint ptr %spec.store.select.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spec.store.select.i.i.i, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i.i, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.41, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %42, ptr %prev17.i.i.i, align 4
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %40, ptr %42, align 8
  br label %__skb_dequeue.exit.i

__skb_dequeue.exit.i:                             ; preds = %if.then.i.i, %if.then90.i.__skb_dequeue.exit.i_crit_edge
  tail call void @consume_skb(ptr noundef %spec.store.select.i.i.i) #4
  br label %if.end93.i

if.end93.i:                                       ; preds = %__skb_dequeue.exit.i, %if.end83.i.if.end93.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_lock.i) #4
  br label %cleanup

free.i:                                           ; preds = %do.end48.i.free.i_crit_edge, %if.end.i.free.i_crit_edge, %if.else.free.i_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %cleanup

if.end18:                                         ; preds = %entry
  %45 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %if.end18.sw.default_crit_edge [
    i32 0, label %sw.bb
    i32 7, label %sw.bb22
    i32 2, label %sw.bb23
  ]

if.end18.sw.default_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default

sw.bb:                                            ; preds = %if.end18
  %add.ptr1950 = getelementptr i32, ptr %1, i32 6
  %cmp20.not51 = icmp ugt ptr %add.ptr1950, %arrayidx
  br i1 %cmp20.not51, label %sw.bb.for.end_crit_edge, label %for.body.preheader

sw.bb.for.end_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %sw.bb
  %incdec.ptr = getelementptr i32, ptr %1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %add.ptr1953 = phi ptr [ %add.ptr19, %for.body.for.body_crit_edge ], [ %add.ptr1950, %for.body.preheader ]
  %rxd.052 = phi ptr [ %add.ptr1953, %for.body.for.body_crit_edge ], [ %incdec.ptr, %for.body.preheader ]
  tail call void @mt7603_mac_add_txs(ptr noundef %mdev, ptr noundef %rxd.052) #4
  %add.ptr19 = getelementptr i32, ptr %add.ptr1953, i32 5
  %cmp20.not = icmp ugt ptr %add.ptr19, %arrayidx
  br i1 %cmp20.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.bb.for.end_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %cleanup

sw.bb22:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76_mcu_rx_event(ptr noundef %mdev, ptr noundef %skb) #4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end18
  %call = tail call i32 @mt7603_mac_fill_rx(ptr noundef %mdev, ptr noundef %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp24 = icmp eq i32 %call, 0
  br i1 %cmp24, label %if.then25, label %sw.bb23.sw.default_crit_edge

sw.bb23.sw.default_crit_edge:                     ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default

if.then25:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76_rx(ptr noundef %mdev, i32 noundef %q, ptr noundef %skb) #4
  br label %cleanup

sw.default:                                       ; preds = %sw.bb23.sw.default_crit_edge, %if.end18.sw.default_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then25, %sw.bb22, %for.end, %free.i, %if.end93.i, %if.then17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_mcu_rx_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_mac_add_txs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7603_mac_fill_rx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_rx(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7603_dma_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mt76_dma_attach(ptr noundef %dev) #4
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 16904, i32 noundef 117, i32 noundef 0) #4
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr, align 4
  tail call void %7(ptr noundef %dev, i32 noundef 16908, i32 noundef -1) #4
  tail call void @mt7603_pse_client_reset(ptr noundef %dev) #4
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %call.i = tail call ptr @mt76_init_queue(ptr noundef %9, i32 noundef 0, i32 noundef 3, i32 noundef 256, i32 noundef 17152) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.mt76_init_tx_queue.exit_crit_edge, label %mt76_init_tx_queue.exit.thread

entry.mt76_init_tx_queue.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_init_tx_queue.exit

mt76_init_tx_queue.exit.thread:                   ; preds = %entry
  %qid3.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i, i32 0, i32 15
  %10 = ptrtoint ptr %qid3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %qid3.i, align 4
  %arrayidx.i = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %call.i.1 = tail call ptr @mt76_init_queue(ptr noundef %13, i32 noundef 1, i32 noundef 2, i32 noundef 256, i32 noundef 17152) #4
  %cmp.i.i.1 = icmp ugt ptr %call.i.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.1, label %mt76_init_tx_queue.exit.thread.mt76_init_tx_queue.exit_crit_edge, label %mt76_init_tx_queue.exit.thread.1

mt76_init_tx_queue.exit.thread.mt76_init_tx_queue.exit_crit_edge: ; preds = %mt76_init_tx_queue.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_init_tx_queue.exit

mt76_init_tx_queue.exit.thread.1:                 ; preds = %mt76_init_tx_queue.exit.thread
  %qid3.i.1 = getelementptr inbounds %struct.mt76_queue, ptr %call.i.1, i32 0, i32 15
  %14 = ptrtoint ptr %qid3.i.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %qid3.i.1, align 4
  %arrayidx.i.1 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.1, ptr %arrayidx.i.1, align 4
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %call.i.2 = tail call ptr @mt76_init_queue(ptr noundef %17, i32 noundef 2, i32 noundef 1, i32 noundef 256, i32 noundef 17152) #4
  %cmp.i.i.2 = icmp ugt ptr %call.i.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.2, label %mt76_init_tx_queue.exit.thread.1.mt76_init_tx_queue.exit_crit_edge, label %mt76_init_tx_queue.exit.thread.2

mt76_init_tx_queue.exit.thread.1.mt76_init_tx_queue.exit_crit_edge: ; preds = %mt76_init_tx_queue.exit.thread.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_init_tx_queue.exit

mt76_init_tx_queue.exit.thread.2:                 ; preds = %mt76_init_tx_queue.exit.thread.1
  %qid3.i.2 = getelementptr inbounds %struct.mt76_queue, ptr %call.i.2, i32 0, i32 15
  %18 = ptrtoint ptr %qid3.i.2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %qid3.i.2, align 4
  %arrayidx.i.2 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.2, ptr %arrayidx.i.2, align 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %call.i.3 = tail call ptr @mt76_init_queue(ptr noundef %21, i32 noundef 3, i32 noundef 0, i32 noundef 256, i32 noundef 17152) #4
  %cmp.i.i.3 = icmp ugt ptr %call.i.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.3, label %mt76_init_tx_queue.exit.thread.2.mt76_init_tx_queue.exit_crit_edge, label %mt76_init_tx_queue.exit.thread.3

mt76_init_tx_queue.exit.thread.2.mt76_init_tx_queue.exit_crit_edge: ; preds = %mt76_init_tx_queue.exit.thread.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_init_tx_queue.exit

mt76_init_tx_queue.exit.thread.3:                 ; preds = %mt76_init_tx_queue.exit.thread.2
  %qid3.i.3 = getelementptr inbounds %struct.mt76_queue, ptr %call.i.3, i32 0, i32 15
  %22 = ptrtoint ptr %qid3.i.3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %qid3.i.3, align 4
  %arrayidx.i.3 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.3, ptr %arrayidx.i.3, align 4
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %call.i79 = tail call ptr @mt76_init_queue(ptr noundef %25, i32 noundef 4, i32 noundef 4, i32 noundef 128, i32 noundef 17152) #4
  %cmp.i.i80 = icmp ugt ptr %call.i79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i80, label %mt76_init_tx_queue.exit86, label %mt76_init_tx_queue.exit86.thread

mt76_init_tx_queue.exit:                          ; preds = %mt76_init_tx_queue.exit.thread.2.mt76_init_tx_queue.exit_crit_edge, %mt76_init_tx_queue.exit.thread.1.mt76_init_tx_queue.exit_crit_edge, %mt76_init_tx_queue.exit.thread.mt76_init_tx_queue.exit_crit_edge, %entry.mt76_init_tx_queue.exit_crit_edge
  %call.i.lcssa = phi ptr [ %call.i, %entry.mt76_init_tx_queue.exit_crit_edge ], [ %call.i.1, %mt76_init_tx_queue.exit.thread.mt76_init_tx_queue.exit_crit_edge ], [ %call.i.2, %mt76_init_tx_queue.exit.thread.1.mt76_init_tx_queue.exit_crit_edge ], [ %call.i.3, %mt76_init_tx_queue.exit.thread.2.mt76_init_tx_queue.exit_crit_edge ]
  %26 = ptrtoint ptr %call.i.lcssa to i32
  br label %cleanup

mt76_init_tx_queue.exit86.thread:                 ; preds = %mt76_init_tx_queue.exit.thread.3
  %qid3.i82 = getelementptr inbounds %struct.mt76_queue, ptr %call.i79, i32 0, i32 15
  %27 = ptrtoint ptr %qid3.i82 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %qid3.i82, align 4
  %arrayidx.i83 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i79, ptr %arrayidx.i83, align 4
  %call.i87 = tail call ptr @mt76_init_queue(ptr noundef %dev, i32 noundef 0, i32 noundef 5, i32 noundef 32, i32 noundef 17152) #4
  %cmp.i.i88 = icmp ugt ptr %call.i87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i88, label %mt76_init_mcu_queue.exit, label %mt76_init_mcu_queue.exit.thread

mt76_init_tx_queue.exit86:                        ; preds = %mt76_init_tx_queue.exit.thread.3
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %call.i79 to i32
  br label %cleanup

mt76_init_mcu_queue.exit.thread:                  ; preds = %mt76_init_tx_queue.exit86.thread
  %qid3.i90 = getelementptr inbounds %struct.mt76_queue, ptr %call.i87, i32 0, i32 15
  %30 = ptrtoint ptr %qid3.i90 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 7, ptr %qid3.i90, align 4
  %q_mcu.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 22
  %31 = ptrtoint ptr %q_mcu.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i87, ptr %q_mcu.i, align 4
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %call.i94 = tail call ptr @mt76_init_queue(ptr noundef %33, i32 noundef 5, i32 noundef 7, i32 noundef 32, i32 noundef 17152) #4
  %cmp.i.i95 = icmp ugt ptr %call.i94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i95, label %mt76_init_tx_queue.exit101, label %mt76_init_tx_queue.exit101.thread

mt76_init_mcu_queue.exit:                         ; preds = %mt76_init_tx_queue.exit86.thread
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %call.i87 to i32
  br label %cleanup

mt76_init_tx_queue.exit101.thread:                ; preds = %mt76_init_mcu_queue.exit.thread
  %qid3.i97 = getelementptr inbounds %struct.mt76_queue, ptr %call.i94, i32 0, i32 15
  %35 = ptrtoint ptr %qid3.i97 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %qid3.i97, align 4
  %arrayidx.i98 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 5
  %36 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i94, ptr %arrayidx.i98, align 4
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %call.i103 = tail call ptr @mt76_init_queue(ptr noundef %38, i32 noundef 6, i32 noundef 8, i32 noundef 32, i32 noundef 17152) #4
  %cmp.i.i104 = icmp ugt ptr %call.i103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i104, label %mt76_init_tx_queue.exit110, label %mt76_init_tx_queue.exit110.thread

mt76_init_tx_queue.exit101:                       ; preds = %mt76_init_mcu_queue.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %call.i94 to i32
  br label %cleanup

mt76_init_tx_queue.exit110.thread:                ; preds = %mt76_init_tx_queue.exit101.thread
  %qid3.i106 = getelementptr inbounds %struct.mt76_queue, ptr %call.i103, i32 0, i32 15
  %40 = ptrtoint ptr %qid3.i106 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 6, ptr %qid3.i106, align 4
  %arrayidx.i107 = getelementptr %struct.mt76_phy, ptr %dev, i32 0, i32 4, i32 6
  %41 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i103, ptr %arrayidx.i107, align 4
  tail call void @mt76_set_irq_mask(ptr noundef %dev, i32 noundef 16900, i32 noundef 0, i32 noundef 7152) #4
  %arrayidx19 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1
  %call20 = tail call fastcc i32 @mt7603_init_rx_queue(ptr noundef %dev, ptr noundef %arrayidx19, i32 noundef 1, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %mt76_init_tx_queue.exit110.thread.cleanup_crit_edge

mt76_init_tx_queue.exit110.thread.cleanup_crit_edge: ; preds = %mt76_init_tx_queue.exit110.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mt76_init_tx_queue.exit110:                       ; preds = %mt76_init_tx_queue.exit101.thread
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %call.i103 to i32
  br label %cleanup

if.end23:                                         ; preds = %mt76_init_tx_queue.exit110.thread
  %q_rx = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 23
  %call26 = tail call fastcc i32 @mt7603_init_rx_queue(ptr noundef %dev, ptr noundef %q_rx, i32 noundef 0, i32 noundef 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus, align 4
  %wr31 = getelementptr inbounds %struct.mt76_bus_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wr31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr31, align 4
  tail call void %46(ptr noundef %dev, i32 noundef 16912, i32 noundef 0) #4
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 24
  %47 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %queue_ops, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %call32 = tail call i32 %50(ptr noundef %dev, ptr noundef nonnull @mt76_dma_rx_poll) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %tx_napi_dev = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 17
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 27
  tail call fastcc void @netif_tx_napi_add(ptr noundef %tx_napi_dev, ptr noundef %tx_napi)
  tail call void @napi_enable(ptr noundef %tx_napi) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end29.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %mt76_init_tx_queue.exit110, %mt76_init_tx_queue.exit110.thread.cleanup_crit_edge, %mt76_init_tx_queue.exit101, %mt76_init_mcu_queue.exit, %mt76_init_tx_queue.exit86, %mt76_init_tx_queue.exit
  %retval.0 = phi i32 [ 0, %if.end35 ], [ %26, %mt76_init_tx_queue.exit ], [ %29, %mt76_init_tx_queue.exit86 ], [ %34, %mt76_init_mcu_queue.exit ], [ %39, %mt76_init_tx_queue.exit101 ], [ %42, %mt76_init_tx_queue.exit110 ], [ %call20, %mt76_init_tx_queue.exit110.thread.cleanup_crit_edge ], [ %call26, %if.end23.cleanup_crit_edge ], [ %call32, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_dma_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_pse_client_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7603_init_rx_queue(ptr noundef %dev, ptr noundef %q, i32 noundef %idx, i32 noundef %n_desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue_ops, align 4
  %alloc = getelementptr inbounds %struct.mt76_queue_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc, align 4
  %call = tail call i32 %3(ptr noundef %dev, ptr noundef %q, i32 noundef %idx, i32 noundef %n_desc, i32 noundef 2048, i32 noundef 17408) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl nuw i32 1, %idx
  tail call void @mt76_set_irq_mask(ptr noundef %dev, i32 noundef 16900, i32 noundef 0, i32 noundef %shl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_dma_rx_poll(ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_tx_napi_add(ptr noundef %dev, ptr noundef %napi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %state = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #4
  tail call void @netif_napi_add(ptr noundef %dev, ptr noundef %napi, ptr noundef nonnull @mt7603_poll_tx, i32 noundef 64) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_poll_tx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8152
  %tx_dma_check = getelementptr i8, ptr %napi, i32 3431
  %0 = ptrtoint ptr %tx_dma_check to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tx_dma_check, align 1
  %queue_ops = getelementptr i8, ptr %napi, i32 -36
  %1 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup = getelementptr inbounds %struct.mt76_queue_ops, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %tx_cleanup to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_cleanup, align 4
  %q_mcu = getelementptr i8, ptr %napi, i32 -808
  %5 = ptrtoint ptr %q_mcu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q_mcu, align 16
  tail call void %4(ptr noundef %add.ptr, ptr noundef %6, i1 noundef zeroext false) #4
  %q_tx = getelementptr i8, ptr %napi, i32 -8136
  %7 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %tx_cleanup2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_cleanup2, align 4
  %arrayidx3 = getelementptr i8, ptr %napi, i32 -8120
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx3, align 4
  tail call void %10(ptr noundef %add.ptr, ptr noundef %12, i1 noundef zeroext false) #4
  %13 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup2.1 = getelementptr inbounds %struct.mt76_queue_ops, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %tx_cleanup2.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_cleanup2.1, align 4
  %arrayidx3.1 = getelementptr i8, ptr %napi, i32 -8124
  %17 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3.1, align 4
  tail call void %16(ptr noundef %add.ptr, ptr noundef %18, i1 noundef zeroext false) #4
  %19 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup2.2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %tx_cleanup2.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_cleanup2.2, align 4
  %arrayidx3.2 = getelementptr i8, ptr %napi, i32 -8128
  %23 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx3.2, align 4
  tail call void %22(ptr noundef %add.ptr, ptr noundef %24, i1 noundef zeroext false) #4
  %25 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup2.3 = getelementptr inbounds %struct.mt76_queue_ops, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %tx_cleanup2.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_cleanup2.3, align 4
  %arrayidx3.3 = getelementptr i8, ptr %napi, i32 -8132
  %29 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx3.3, align 4
  tail call void %28(ptr noundef %add.ptr, ptr noundef %30, i1 noundef zeroext false) #4
  %31 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup2.4 = getelementptr inbounds %struct.mt76_queue_ops, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %tx_cleanup2.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_cleanup2.4, align 4
  %35 = ptrtoint ptr %q_tx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %q_tx, align 4
  tail call void %34(ptr noundef %add.ptr, ptr noundef %36, i1 noundef zeroext false) #4
  %call = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #4
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mt76_set_irq_mask(ptr noundef %add.ptr, i32 noundef 16900, i32 noundef 0, i32 noundef 1048560) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %37 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup5 = getelementptr inbounds %struct.mt76_queue_ops, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %tx_cleanup5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_cleanup5, align 4
  %41 = ptrtoint ptr %q_mcu to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %q_mcu, align 16
  tail call void %40(ptr noundef %add.ptr, ptr noundef %42, i1 noundef zeroext false) #4
  %43 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup12 = getelementptr inbounds %struct.mt76_queue_ops, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %tx_cleanup12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_cleanup12, align 4
  %47 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx3, align 4
  tail call void %46(ptr noundef %add.ptr, ptr noundef %48, i1 noundef zeroext false) #4
  %49 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup12.1 = getelementptr inbounds %struct.mt76_queue_ops, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %tx_cleanup12.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_cleanup12.1, align 4
  %53 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx3.1, align 4
  tail call void %52(ptr noundef %add.ptr, ptr noundef %54, i1 noundef zeroext false) #4
  %55 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup12.2 = getelementptr inbounds %struct.mt76_queue_ops, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %tx_cleanup12.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx_cleanup12.2, align 4
  %59 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx3.2, align 4
  tail call void %58(ptr noundef %add.ptr, ptr noundef %60, i1 noundef zeroext false) #4
  %61 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup12.3 = getelementptr inbounds %struct.mt76_queue_ops, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %tx_cleanup12.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_cleanup12.3, align 4
  %65 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx3.3, align 4
  tail call void %64(ptr noundef %add.ptr, ptr noundef %66, i1 noundef zeroext false) #4
  %67 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup12.4 = getelementptr inbounds %struct.mt76_queue_ops, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %tx_cleanup12.4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tx_cleanup12.4, align 4
  %71 = ptrtoint ptr %q_tx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %q_tx, align 4
  tail call void %70(ptr noundef %add.ptr, ptr noundef %72, i1 noundef zeroext false) #4
  tail call void @mt7603_mac_sta_poll(ptr noundef %add.ptr) #4
  %tx_worker = getelementptr i8, ptr %napi, i32 -16
  %73 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tx_worker, align 4
  %tobool.not.i = icmp eq ptr %74, null
  br i1 %tobool.not.i, label %if.end.mt76_worker_schedule.exit_crit_edge, label %if.end.i

if.end.mt76_worker_schedule.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_schedule.exit

if.end.i:                                         ; preds = %if.end
  %state.i = getelementptr i8, ptr %napi, i32 -8
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end.i.mt76_worker_schedule.exit_crit_edge

if.end.i.mt76_worker_schedule.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_schedule.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %75 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %state.i, align 4
  %77 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool4.not.i = icmp eq i32 %77, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.mt76_worker_schedule.exit_crit_edge

land.lhs.true.i.mt76_worker_schedule.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt76_worker_schedule.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %78 = ptrtoint ptr %tx_worker to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tx_worker, align 4
  %call7.i = tail call i32 @wake_up_process(ptr noundef %79) #4
  br label %mt76_worker_schedule.exit

mt76_worker_schedule.exit:                        ; preds = %if.then5.i, %land.lhs.true.i.mt76_worker_schedule.exit_crit_edge, %if.end.i.mt76_worker_schedule.exit_crit_edge, %if.end.mt76_worker_schedule.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_dma_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
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
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 16904, i32 noundef 69, i32 noundef 0) #4
  tail call void @mt76_dma_cleanup(ptr noundef %dev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_dma_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_set_buffered(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_init_queue(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_irq_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7603_mac_sta_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{null, !1, !"wmm_queue_map", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/dma.c", i32 154, i32 18}
!2 = !{ptr @mt7603_rx_loopback_skb.tid_to_ac, !3, !"tid_to_ac", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/dma.c", i32 10, i32 18}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/dma.c", i32 40, i32 9}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
