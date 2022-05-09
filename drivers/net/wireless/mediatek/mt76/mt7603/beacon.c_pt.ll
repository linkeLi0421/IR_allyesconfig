; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7603/beacon.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7603/beacon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.beacon_bc_data = type { ptr, %struct.sk_buff_head, [4 x ptr], [4 x i32] }
%struct.sk_buff_head = type { %union.anon.63, i32, %struct.spinlock }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, i32, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.139, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.139 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.140] }
%struct.anon.140 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.136], ptr }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.135 }
%struct.anon.135 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.136 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.137, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.137 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.107, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.128, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.107 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.128 = type { ptr }
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
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon, i32 }
%union.anon = type { ptr }
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
%struct.mt7603_dev = type { %union.anon.0, ptr, i32, %struct.list_head, %struct.spinlock, %struct.mt7603_sta, i32, i32, i32, i32, i32, i32, i32, [3 x i8], i8, i16, i8, i64, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i16], i16, i32, [7 x i32], [12 x i8] }
%union.anon.0 = type { %struct.mt76_dev }
%struct.mt7603_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, [4 x i32], %struct.sk_buff_head, [4 x %struct.ieee80211_tx_rate], [2 x %struct.mt7603_rate_set], i32, i8, i8, i8, i8, i8 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.mt7603_rate_set = type { %struct.ieee80211_tx_rate, [4 x %struct.ieee80211_tx_rate] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_pre_tbtt_tasklet(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.beacon_bc_data, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -10224
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %data) #3
  %0 = getelementptr inbounds i8, ptr %data, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 76)
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %data, align 4
  %q2 = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %q2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %q2, ptr %q2, align 4
  %prev.i = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %q2, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen.i, align 4
  %arrayidx = getelementptr i8, ptr %t, i32 -10188
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.mt76_queue, ptr %11, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #3
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 128
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %13, i32 noundef 1, ptr noundef nonnull @mt7603_update_beacon_iter, ptr noundef %add.ptr) #3
  %queue_ops = getelementptr i8, ptr %t, i32 -2108
  %14 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue_ops, align 4
  %kick = getelementptr inbounds %struct.mt76_queue_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %kick to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kick, align 4
  call void %17(ptr noundef %add.ptr, ptr noundef %11) #3
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #3
  %bus = getelementptr i8, ptr %t, i32 -9252
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr, align 4
  call void %21(ptr noundef %add.ptr, i32 noundef 136484, i32 noundef 2147418113) #3
  %22 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup = getelementptr inbounds %struct.mt76_queue_ops, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %tx_cleanup to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_cleanup, align 4
  %arrayidx7 = getelementptr i8, ptr %t, i32 -10184
  %26 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx7, align 8
  call void %25(ptr noundef %add.ptr, ptr noundef %27, i1 noundef zeroext false) #3
  call void @mt76_csa_check(ptr noundef %add.ptr) #3
  %csa_complete = getelementptr i8, ptr %t, i32 542
  %28 = ptrtoint ptr %csa_complete to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %csa_complete, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool8.not = icmp eq i8 %29, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end10:                                         ; preds = %if.end
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx7, align 8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end10
  %32 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qlen.i, align 4
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 128
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %35, i32 noundef 1, ptr noundef nonnull @mt7603_add_buffered_bc, ptr noundef nonnull %data) #3
  %36 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %37)
  %cmp.not = icmp ne i32 %33, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %37)
  %cmp19 = icmp ult i32 %37, 8
  %or.cond = and i1 %cmp.not, %cmp19
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.body
  %38 = ptrtoint ptr %q2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %q2, align 4
  %cmp.i.not = icmp eq ptr %39, %q2
  br i1 %cmp.i.not, label %do.end.out_crit_edge, label %for.body.preheader

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

for.body.preheader:                               ; preds = %do.end
  %arrayidx26 = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 2, i32 0
  %40 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx26, align 4
  %tobool27.not = icmp eq ptr %41, null
  br i1 %tobool27.not, label %for.body.preheader.for.inc_crit_edge, label %if.end29

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end29:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 2
  %46 = and i16 %45, -33
  store i16 %46, ptr %43, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %for.body.preheader.for.inc_crit_edge
  %arrayidx26.1 = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx26.1, align 4
  %tobool27.not.1 = icmp eq ptr %48, null
  br i1 %tobool27.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end29.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1

if.end29.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %data.i.1 = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 19
  %49 = ptrtoint ptr %data.i.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.1, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %50, align 2
  %53 = and i16 %52, -33
  store i16 %53, ptr %50, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end29.1, %for.inc.for.inc.1_crit_edge
  %arrayidx26.2 = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx26.2, align 4
  %tobool27.not.2 = icmp eq ptr %55, null
  br i1 %tobool27.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end29.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2

if.end29.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %data.i.2 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.2, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %57, align 2
  %60 = and i16 %59, -33
  store i16 %60, ptr %57, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end29.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx26.3 = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 2, i32 3
  %61 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx26.3, align 4
  %tobool27.not.3 = icmp eq ptr %62, null
  br i1 %tobool27.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end29.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3

if.end29.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %data.i.3 = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 19
  %63 = ptrtoint ptr %data.i.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.3, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %64, align 2
  %67 = and i16 %66, -33
  store i16 %67, ptr %64, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end29.3, %for.inc.2.for.inc.3_crit_edge
  %lock32 = getelementptr inbounds %struct.mt76_queue, ptr %31, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock32) #3
  %68 = ptrtoint ptr %q2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %q2, align 4
  %cmp.i.i236 = icmp eq ptr %69, %q2
  %tobool.not.i234237 = icmp eq ptr %69, null
  %tobool.not.i238 = or i1 %cmp.i.i236, %tobool.not.i234237
  br i1 %tobool.not.i238, label %for.inc.3.while.end_crit_edge, label %for.inc.3.while.body_crit_edge

for.inc.3.while.body_crit_edge:                   ; preds = %for.inc.3
  br label %while.body

for.inc.3.while.end_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.inc.3.while.body_crit_edge
  %70 = phi ptr [ %86, %while.body.while.body_crit_edge ], [ %69, %for.inc.3.while.body_crit_edge ]
  %71 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %72, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %70, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.43, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %70, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.43, ptr %74, i32 0, i32 1
  %77 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %76, ptr %prev17.i.i, align 4
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %74, ptr %76, align 8
  %vif37 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 3, i32 24
  %79 = ptrtoint ptr %vif37 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vif37, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %80, i32 0, i32 19
  %81 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %queue_ops, align 4
  %tx_queue_skb = getelementptr inbounds %struct.mt76_queue_ops, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %tx_queue_skb to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tx_queue_skb, align 4
  %call39 = call i32 %84(ptr noundef %add.ptr, ptr noundef %31, ptr noundef nonnull %70, ptr noundef %drv_priv, ptr noundef null) #3
  %85 = ptrtoint ptr %q2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %q2, align 4
  %cmp.i.i = icmp eq ptr %86, %q2
  %tobool.not.i234 = icmp eq ptr %86, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i234
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.inc.3.while.end_crit_edge
  %87 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %queue_ops, align 4
  %kick41 = getelementptr inbounds %struct.mt76_queue_ops, ptr %88, i32 0, i32 8
  %89 = ptrtoint ptr %kick41 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %kick41, align 4
  call void %90(ptr noundef %add.ptr, ptr noundef %31) #3
  call void @_raw_spin_unlock_bh(ptr noundef %lock32) #3
  %91 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bus, align 4
  %wr47 = getelementptr inbounds %struct.mt76_bus_ops, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %wr47 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %wr47, align 4
  %arrayidx52 = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 3, i32 0
  %95 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx52, align 4
  call void %94(ptr noundef %add.ptr, i32 noundef 136488, i32 noundef %96) #3
  %97 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bus, align 4
  %wr47.1 = getelementptr inbounds %struct.mt76_bus_ops, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %wr47.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wr47.1, align 4
  %arrayidx52.1 = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 3, i32 1
  %101 = ptrtoint ptr %arrayidx52.1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx52.1, align 4
  %shl.1 = shl i32 %102, 16
  call void %100(ptr noundef %add.ptr, i32 noundef 136488, i32 noundef %shl.1) #3
  %103 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bus, align 4
  %wr47.2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %wr47.2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wr47.2, align 4
  %arrayidx52.2 = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 3, i32 2
  %107 = ptrtoint ptr %arrayidx52.2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx52.2, align 4
  %shl.2 = shl i32 %108, 20
  call void %106(ptr noundef %add.ptr, i32 noundef 136488, i32 noundef %shl.2) #3
  %109 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bus, align 4
  %wr47.3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %wr47.3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wr47.3, align 4
  %arrayidx52.3 = getelementptr inbounds %struct.beacon_bc_data, ptr %data, i32 0, i32 3, i32 3
  %113 = ptrtoint ptr %arrayidx52.3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx52.3, align 4
  %shl.3 = shl i32 %114, 24
  call void %112(ptr noundef %add.ptr, i32 noundef 136488, i32 noundef %shl.3) #3
  %115 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bus, align 4
  %wr75 = getelementptr inbounds %struct.mt76_bus_ops, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %wr75 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wr75, align 4
  call void %118(ptr noundef %add.ptr, i32 noundef 136480, i32 noundef 458753) #3
  br label %out

out:                                              ; preds = %while.end, %do.end.out_crit_edge, %if.end.out_crit_edge
  %119 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %queue_ops, align 4
  %tx_cleanup77 = getelementptr inbounds %struct.mt76_queue_ops, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %tx_cleanup77 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tx_cleanup77, align 4
  %123 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx, align 4
  call void %122(ptr noundef %add.ptr, ptr noundef %124, i1 noundef zeroext false) #3
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx, align 4
  %queued = getelementptr inbounds %struct.mt76_queue, ptr %126, i32 0, i32 9
  %127 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %queued, align 4
  %beacon_mask = getelementptr i8, ptr %t, i32 28
  %129 = ptrtoint ptr %beacon_mask to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %beacon_mask, align 4
  %conv152 = zext i8 %130 to i32
  %call.i = call i32 @__sw_hweight8(i32 noundef %conv152) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %call.i)
  %cmp156 = icmp ugt i32 %128, %call.i
  br i1 %cmp156, label %if.then158, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then158:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #5
  %beacon_check = getelementptr i8, ptr %t, i32 1357
  %131 = ptrtoint ptr %beacon_check to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %beacon_check, align 1
  %inc159 = add i8 %132, 1
  store i8 %inc159, ptr %beacon_check, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then158, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %data) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_update_beacon_iter(ptr noundef %priv, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %beacon_mask = getelementptr inbounds %struct.mt76_dev, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %beacon_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %beacon_mask, align 4
  %conv = zext i8 %1 to i32
  %idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 1
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %idx, align 4
  %conv1 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv1
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 128
  %call.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %5, ptr noundef %vif, ptr noundef null, ptr noundef null) #3
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %priv, i32 0, i32 24
  %6 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue_ops, align 4
  %tx_queue_skb = getelementptr inbounds %struct.mt76_queue_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %tx_queue_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_queue_skb, align 4
  %arrayidx = getelementptr %struct.mt76_phy, ptr %priv, i32 0, i32 4, i32 5
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 %9(ptr noundef %priv, ptr noundef %11, ptr noundef nonnull %call.i, ptr noundef %drv_priv, ptr noundef null) #3
  %ps_lock = getelementptr inbounds %struct.mt7603_dev, ptr %priv, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %ps_lock) #3
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %priv, i32 0, i32 10
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr, align 4
  %idx12 = getelementptr inbounds %struct.mt76_wcid, ptr %drv_priv, i32 0, i32 6
  %16 = ptrtoint ptr %idx12 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %idx12, align 2
  %arrayidx43 = getelementptr %struct.mt76_phy, ptr %priv, i32 0, i32 4, i32 6
  %18 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx43, align 8
  %hw_idx = getelementptr inbounds %struct.mt76_queue, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %hw_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hw_idx, align 1
  %22 = and i16 %17, 255
  %and34 = zext i16 %22 to i32
  %conv66 = zext i8 %21 to i32
  %shl67 = shl nuw nsw i32 %conv66, 16
  %and68 = and i32 %shl67, 2031616
  %or = or i32 %and68, %and34
  %or103 = or i32 %or, -2000683008
  tail call void %15(ptr noundef %priv, i32 noundef 138248, i32 noundef %or103) #3
  %call104 = tail call zeroext i1 @__mt76_poll(ptr noundef %priv, i32 noundef 138248, i32 noundef -2147483648, i32 noundef 0, i32 noundef 5000) #3
  br i1 %call104, label %if.end4.if.end106_crit_edge, label %if.then105

if.end4.if.end106_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end106

if.then105:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %beacon_check = getelementptr inbounds %struct.mt7603_dev, ptr %priv, i32 0, i32 28
  %23 = ptrtoint ptr %beacon_check to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 10, ptr %beacon_check, align 1
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end4.if.end106_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ps_lock) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_csa_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7603_add_buffered_bc(ptr noundef %priv, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %beacon_mask = getelementptr inbounds %struct.mt76_dev, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %beacon_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %beacon_mask, align 4
  %conv = zext i8 %3 to i32
  %idx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 1
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %idx, align 4
  %conv2 = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv2
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %call = tail call ptr @ieee80211_get_buffered_bc(ptr noundef %7, ptr noundef %vif) #3
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %vif7 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 24
  %8 = ptrtoint ptr %vif7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vif, ptr %vif7, align 8
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb.i, align 8
  %or = or i32 %10, 2
  store i32 %or, ptr %cb.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 2
  %storemerge.i = or i16 %14, 32
  store i16 %storemerge.i, ptr %12, align 2
  %q = getelementptr inbounds %struct.beacon_bc_data, ptr %priv, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.beacon_bc_data, ptr %priv, i32 0, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %q, ptr %call, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.43, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %prev10.i.i.i, align 4
  store volatile ptr %call, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call, ptr %16, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.beacon_bc_data, ptr %priv, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %idx, align 4
  %idxprom = zext i8 %23 to i32
  %arrayidx = getelementptr %struct.beacon_bc_data, ptr %priv, i32 0, i32 2, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %arrayidx, align 4
  %25 = load i8, ptr %idx, align 4
  %idxprom10 = zext i8 %25 to i32
  %arrayidx11 = getelementptr %struct.beacon_bc_data, ptr %priv, i32 0, i32 3, i32 %idxprom10
  %26 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx11, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %arrayidx11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_beacon_set_timer(ptr noundef %dev, i32 noundef %idx, i32 noundef %intval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx)
  %cmp = icmp sgt i32 %idx, -1
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intval)
  %tobool.not = icmp eq i32 %intval, 0
  %shl3 = shl nuw i32 1, %idx
  %beacon_mask4 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 43
  %0 = ptrtoint ptr %beacon_mask4 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %beacon_mask4, align 4
  %2 = trunc i32 %shl3 to i8
  %conv2 = or i8 %1, %2
  %3 = xor i8 %2, -1
  %conv6 = and i8 %1, %3
  %conv2.sink = select i1 %tobool.not, i8 %conv6, i8 %conv2
  store i8 %conv2.sink, ptr %beacon_mask4, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %beacon_mask8 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 43
  %4 = ptrtoint ptr %beacon_mask8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %beacon_mask8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.end7.if.then13_crit_edge, label %lor.lhs.false

if.end7.if.then13_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intval)
  %tobool10.not = icmp eq i32 %intval, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp11 = icmp slt i32 %idx, 0
  %or.cond = and i1 %cmp11, %tobool10.not
  br i1 %or.cond, label %lor.lhs.false.if.then13_crit_edge, label %if.end15

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end7.if.then13_crit_edge
  tail call void @mt76_set_irq_mask(ptr noundef %dev, i32 noundef 16900, i32 noundef 134217728, i32 noundef 0) #3
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %9(ptr noundef %dev, i32 noundef 136320, i32 noundef 3, i32 noundef 0) #3
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr, align 4
  tail call void %13(ptr noundef %dev, i32 noundef 148568, i32 noundef 0) #3
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %beacon_int = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 42
  %14 = ptrtoint ptr %beacon_int to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %intval, ptr %beacon_int, align 8
  %bus16 = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %15 = ptrtoint ptr %bus16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus16, align 4
  %wr17 = getelementptr inbounds %struct.mt76_bus_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wr17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr17, align 4
  %and35 = and i32 %intval, 65535
  %or36 = or i32 %and35, -2147483648
  tail call void %18(ptr noundef %dev, i32 noundef 147508, i32 noundef %or36) #3
  %19 = ptrtoint ptr %bus16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus16, align 4
  %wr38 = getelementptr inbounds %struct.mt76_bus_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wr38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr38, align 4
  tail call void %22(ptr noundef %dev, i32 noundef 147548, i32 noundef 153) #3
  %23 = ptrtoint ptr %bus16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus16, align 4
  %rmw40 = getelementptr inbounds %struct.mt76_bus_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %rmw40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmw40, align 4
  %call57 = tail call i32 %26(ptr noundef %dev, i32 noundef 136320, i32 noundef 3, i32 noundef 1) #3
  %27 = ptrtoint ptr %bus16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus16, align 4
  %rmw59 = getelementptr inbounds %struct.mt76_bus_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %rmw59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmw59, align 4
  %call60 = tail call i32 %30(ptr noundef %dev, i32 noundef 136320, i32 noundef 1073741824, i32 noundef 0) #3
  %31 = ptrtoint ptr %bus16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus16, align 4
  %rmw62 = getelementptr inbounds %struct.mt76_bus_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %rmw62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmw62, align 4
  %call63 = tail call i32 %34(ptr noundef %dev, i32 noundef 136320, i32 noundef 0, i32 noundef -2147483648) #3
  %35 = ptrtoint ptr %bus16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus16, align 4
  %wr65 = getelementptr inbounds %struct.mt76_bus_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wr65 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr65, align 4
  tail call void %38(ptr noundef %dev, i32 noundef 147504, i32 noundef 78) #3
  %39 = ptrtoint ptr %bus16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus16, align 4
  %rmw67 = getelementptr inbounds %struct.mt76_bus_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %rmw67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmw67, align 4
  %call68 = tail call i32 %42(ptr noundef %dev, i32 noundef 148568, i32 noundef 0, i32 noundef -2147450880) #3
  %43 = ptrtoint ptr %bus16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus16, align 4
  %rmw70 = getelementptr inbounds %struct.mt76_bus_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %rmw70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmw70, align 4
  %47 = ptrtoint ptr %beacon_mask8 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %beacon_mask8, align 4
  %49 = lshr i8 %48, 1
  %50 = zext i8 %49 to i32
  %mul = shl nuw nsw i32 %50, 16
  %or73 = or i32 %mul, 1
  %call74 = tail call i32 %46(ptr noundef %dev, i32 noundef 136472, i32 noundef 0, i32 noundef %or73) #3
  tail call void @mt76_set_irq_mask(ptr noundef %dev, i32 noundef 16900, i32 noundef 0, i32 noundef 134217728) #3
  %51 = ptrtoint ptr %beacon_mask8 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %beacon_mask8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %52)
  %tobool78.not = icmp ult i8 %52, 2
  %53 = ptrtoint ptr %bus16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus16, align 4
  %rmw85 = getelementptr inbounds %struct.mt76_bus_ops, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %rmw85 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmw85, align 4
  br i1 %tobool78.not, label %if.else83, label %if.then79

if.then79:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %call82 = tail call i32 %56(ptr noundef %dev, i32 noundef 147616, i32 noundef 0, i32 noundef 536870912) #3
  br label %cleanup

if.else83:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %call86 = tail call i32 %56(ptr noundef %dev, i32 noundef 147616, i32 noundef 536870912, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.else83, %if.then79, %if.then13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_buffered_bc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_irq_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
