; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7915/dma.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7915/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt7915_dev = type { %union.anon.139, ptr, ptr, %struct.tasklet_struct, %struct.mt7915_phy, i16, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i8, i8, i8, i8, i8, i8, ptr, %struct.anon.147, [14 x i8] }
%union.anon.139 = type { %struct.mt76_dev }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.144, ptr, %union.anon.145, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.140, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.140 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.142 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.144 = type { ptr, i32 }
%union.anon.145 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.141, i32 }
%union.anon.141 = type { ptr }
%struct.mt7915_phy = type { ptr, ptr, [2 x [13 x %struct.ieee80211_sband_iftype_data]], ptr, ptr, i8, [2 x i32], i32, i64, i16, i16, i8, i8, i32, i32, i32, %struct.mib_stats, %struct.mt76_channel_state, %struct.anon.138 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.127 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.127 = type { ptr, i32 }
%struct.mib_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.mt76_channel_state = type { i64, i64, i64, i64, i64, i8 }
%struct.anon.138 = type { ptr, i32, [4 x i8], [4 x i8], [4 x i8], i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.147 = type { i8, i8 }
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_init_tx_queues(ptr nocapture noundef readonly %phy, i32 noundef %idx, i32 noundef %n_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 8
  %dev.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i = tail call ptr @mt76_init_queue(ptr noundef %3, i32 noundef 0, i32 noundef %idx, i32 noundef %n_desc, i32 noundef 873216) #3
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mt76_init_tx_queue.exit, label %mt76_init_tx_queue.exit.thread

mt76_init_tx_queue.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %qid3.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i, i32 0, i32 15
  %4 = ptrtoint ptr %qid3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %qid3.i, align 4
  %q_tx.i = getelementptr inbounds %struct.mt76_phy, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %q_tx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %q_tx.i, align 4
  br label %for.body.preheader

mt76_init_tx_queue.exit:                          ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  %cmp = icmp slt ptr %call.i, null
  br i1 %cmp, label %mt76_init_tx_queue.exit.cleanup_crit_edge, label %mt76_init_tx_queue.exit.for.body.preheader_crit_edge

mt76_init_tx_queue.exit.for.body.preheader_crit_edge: ; preds = %mt76_init_tx_queue.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.preheader

mt76_init_tx_queue.exit.cleanup_crit_edge:        ; preds = %mt76_init_tx_queue.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.preheader:                               ; preds = %mt76_init_tx_queue.exit.for.body.preheader_crit_edge, %mt76_init_tx_queue.exit.thread
  %7 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy, align 8
  %q_tx.1 = getelementptr inbounds %struct.mt76_phy, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %q_tx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %q_tx.1, align 8
  %arrayidx5.1 = getelementptr %struct.mt76_phy, ptr %8, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %arrayidx5.1, align 4
  %12 = load ptr, ptr %phy, align 8
  %q_tx.2 = getelementptr inbounds %struct.mt76_phy, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %q_tx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %q_tx.2, align 8
  %arrayidx5.2 = getelementptr %struct.mt76_phy, ptr %12, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %arrayidx5.2, align 4
  %16 = load ptr, ptr %phy, align 8
  %q_tx.3 = getelementptr inbounds %struct.mt76_phy, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %q_tx.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %q_tx.3, align 8
  %arrayidx5.3 = getelementptr %struct.mt76_phy, ptr %16, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %arrayidx5.3, align 4
  %20 = load ptr, ptr %phy, align 8
  %q_tx.4 = getelementptr inbounds %struct.mt76_phy, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %q_tx.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %q_tx.4, align 8
  %arrayidx5.4 = getelementptr %struct.mt76_phy, ptr %20, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %arrayidx5.4, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %mt76_init_tx_queue.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %mt76_init_tx_queue.exit.cleanup_crit_edge ], [ 0, %for.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_dma_prefetch(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__mt7915_dma_prefetch(ptr noundef %dev, i32 noundef 0)
  %hif2 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %hif2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif2, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @__mt7915_dma_prefetch(ptr noundef %dev, i32 noundef 16384)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mt7915_dma_prefetch(ptr noundef %dev, i32 noundef %ofs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr, align 4
  %add = add i32 %ofs, 870016
  tail call void %3(ptr noundef %dev, i32 noundef %add, i32 noundef 4) #3
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %wr2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr2, align 4
  %add3 = add i32 %ofs, 870020
  tail call void %7(ptr noundef %dev, i32 noundef %add3, i32 noundef 4194308) #3
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %wr5 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr5, align 4
  %add6 = add i32 %ofs, 870024
  tail call void %11(ptr noundef %dev, i32 noundef %add6, i32 noundef 8388608) #3
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %wr8 = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr8, align 4
  %add9 = add i32 %ofs, 873984
  tail call void %15(ptr noundef %dev, i32 noundef %add9, i32 noundef 8388612) #3
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %wr11 = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr11, align 4
  %add12 = add i32 %ofs, 873988
  tail call void %19(ptr noundef %dev, i32 noundef %add12, i32 noundef 12582916) #3
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %wr14 = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wr14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr14, align 4
  %add15 = add i32 %ofs, 873992
  tail call void %23(ptr noundef %dev, i32 noundef %add15, i32 noundef 16777220) #3
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %wr17 = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr17, align 4
  %add18 = add i32 %ofs, 873996
  tail call void %27(ptr noundef %dev, i32 noundef %add18, i32 noundef 20971524) #3
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 4
  %wr20 = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr20, align 4
  %add21 = add i32 %ofs, 874000
  tail call void %31(ptr noundef %dev, i32 noundef %add21, i32 noundef 25165828) #3
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %wr23 = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wr23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr23, align 4
  %add24 = add i32 %ofs, 874004
  tail call void %35(ptr noundef %dev, i32 noundef %add24, i32 noundef 29360132) #3
  %36 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus, align 4
  %wr26 = getelementptr inbounds %struct.mt76_bus_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr26, align 4
  %add27 = add i32 %ofs, 874008
  tail call void %39(ptr noundef %dev, i32 noundef %add27, i32 noundef 33554436) #3
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 4
  %wr29 = getelementptr inbounds %struct.mt76_bus_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wr29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr29, align 4
  %add30 = add i32 %ofs, 874012
  tail call void %43(ptr noundef %dev, i32 noundef %add30, i32 noundef 37748740) #3
  %44 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus, align 4
  %wr32 = getelementptr inbounds %struct.mt76_bus_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wr32, align 4
  %add33 = add i32 %ofs, 874048
  tail call void %47(ptr noundef %dev, i32 noundef %add33, i32 noundef 41943044) #3
  %48 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus, align 4
  %wr35 = getelementptr inbounds %struct.mt76_bus_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %wr35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wr35, align 4
  %add36 = add i32 %ofs, 874052
  tail call void %51(ptr noundef %dev, i32 noundef %add36, i32 noundef 46137348) #3
  %52 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus, align 4
  %wr38 = getelementptr inbounds %struct.mt76_bus_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %wr38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wr38, align 4
  %add39 = add i32 %ofs, 874056
  tail call void %55(ptr noundef %dev, i32 noundef %add39, i32 noundef 50331652) #3
  %56 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus, align 4
  %wr41 = getelementptr inbounds %struct.mt76_bus_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %wr41 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wr41, align 4
  %add42 = add i32 %ofs, 874060
  tail call void %59(ptr noundef %dev, i32 noundef %add42, i32 noundef 54525956) #3
  %60 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus, align 4
  %wr44 = getelementptr inbounds %struct.mt76_bus_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %wr44 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wr44, align 4
  %add45 = add i32 %ofs, 874064
  tail call void %63(ptr noundef %dev, i32 noundef %add45, i32 noundef 58720260) #3
  %64 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus, align 4
  %wr47 = getelementptr inbounds %struct.mt76_bus_ops, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %wr47 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wr47, align 4
  %add48 = add i32 %ofs, 874068
  tail call void %67(ptr noundef %dev, i32 noundef %add48, i32 noundef 62914560) #3
  %68 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus, align 4
  %wr50 = getelementptr inbounds %struct.mt76_bus_ops, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %wr50 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wr50, align 4
  %add51 = add i32 %ofs, 874112
  tail call void %71(ptr noundef %dev, i32 noundef %add51, i32 noundef 62914564) #3
  %72 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus, align 4
  %wr53 = getelementptr inbounds %struct.mt76_bus_ops, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %wr53 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wr53, align 4
  %add54 = add i32 %ofs, 874116
  tail call void %75(ptr noundef %dev, i32 noundef %add54, i32 noundef 67108868) #3
  %76 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus, align 4
  %wr56 = getelementptr inbounds %struct.mt76_bus_ops, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %wr56 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wr56, align 4
  %add57 = add i32 %ofs, 874120
  tail call void %79(ptr noundef %dev, i32 noundef %add57, i32 noundef 71303172) #3
  %80 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus, align 4
  %wr59 = getelementptr inbounds %struct.mt76_bus_ops, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %wr59 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wr59, align 4
  %add60 = add i32 %ofs, 874124
  tail call void %83(ptr noundef %dev, i32 noundef %add60, i32 noundef 75497472) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7915_dma_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mt76_dma_attach(ptr noundef %dev) #3
  %hif2 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %hif2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif2, align 128
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, i32 0, i32 16384
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %5(ptr noundef %dev, i32 noundef 872968, i32 noundef 0, i32 noundef 402653184) #3
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %wr = getelementptr inbounds %struct.mt76_bus_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr, align 4
  tail call void %9(ptr noundef %dev, i32 noundef 868876, i32 noundef -1) #3
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %wr3 = getelementptr inbounds %struct.mt76_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wr3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr3, align 4
  tail call void %13(ptr noundef %dev, i32 noundef 872972, i32 noundef -1) #3
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %wr5 = getelementptr inbounds %struct.mt76_bus_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wr5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wr5, align 4
  tail call void %17(ptr noundef %dev, i32 noundef 869104, i32 noundef 0) #3
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %wr7 = getelementptr inbounds %struct.mt76_bus_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wr7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr7, align 4
  tail call void %21(ptr noundef %dev, i32 noundef 873200, i32 noundef 0) #3
  %22 = ptrtoint ptr %hif2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hif2, align 128
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %entry.if.end26_crit_edge, label %if.then10

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %rmw12 = getelementptr inbounds %struct.mt76_bus_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmw12, align 4
  %add = add nuw nsw i32 %spec.select, 872968
  %call13 = tail call i32 %27(ptr noundef %dev, i32 noundef %add, i32 noundef 0, i32 noundef 402653184) #3
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus, align 4
  %wr15 = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr15, align 4
  %add16 = add nuw nsw i32 %spec.select, 868876
  tail call void %31(ptr noundef %dev, i32 noundef %add16, i32 noundef -1) #3
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %wr18 = getelementptr inbounds %struct.mt76_bus_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wr18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr18, align 4
  %add19 = add nuw nsw i32 %spec.select, 872972
  tail call void %35(ptr noundef %dev, i32 noundef %add19, i32 noundef -1) #3
  %36 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus, align 4
  %wr21 = getelementptr inbounds %struct.mt76_bus_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr21, align 4
  %add22 = add nuw nsw i32 %spec.select, 869104
  tail call void %39(ptr noundef %dev, i32 noundef %add22, i32 noundef 0) #3
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 4
  %wr24 = getelementptr inbounds %struct.mt76_bus_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wr24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr24, align 4
  %add25 = add nuw nsw i32 %spec.select, 873200
  tail call void %43(ptr noundef %dev, i32 noundef %add25, i32 noundef 0) #3
  br label %if.end26

if.end26:                                         ; preds = %if.then10, %entry.if.end26_crit_edge
  tail call fastcc void @__mt7915_dma_prefetch(ptr noundef %dev, i32 noundef 0) #3
  %44 = ptrtoint ptr %hif2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hif2, align 128
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %if.end26.mt7915_dma_prefetch.exit_crit_edge, label %if.then.i

if.end26.mt7915_dma_prefetch.exit_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7915_dma_prefetch.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @__mt7915_dma_prefetch(ptr noundef %dev, i32 noundef 16384) #3
  br label %mt7915_dma_prefetch.exit

mt7915_dma_prefetch.exit:                         ; preds = %if.then.i, %if.end26.mt7915_dma_prefetch.exit_crit_edge
  %phy = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 4
  %46 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy, align 8
  %dev.i.i = getelementptr inbounds %struct.mt76_phy, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i, align 4
  %call.i.i = tail call ptr @mt76_init_queue(ptr noundef %49, i32 noundef 0, i32 noundef 18, i32 noundef 2048, i32 noundef 873216) #3
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %mt76_init_tx_queue.exit.i, label %mt76_init_tx_queue.exit.thread.i

mt76_init_tx_queue.exit.thread.i:                 ; preds = %mt7915_dma_prefetch.exit
  call void @__sanitizer_cov_trace_pc() #5
  %qid3.i.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i.i, i32 0, i32 15
  %50 = ptrtoint ptr %qid3.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %qid3.i.i, align 4
  %q_tx.i.i = getelementptr inbounds %struct.mt76_phy, ptr %47, i32 0, i32 4
  %51 = ptrtoint ptr %q_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i.i, ptr %q_tx.i.i, align 4
  br label %mt7915_init_tx_queues.exit.thread

mt76_init_tx_queue.exit.i:                        ; preds = %mt7915_dma_prefetch.exit
  %cmp.i = icmp slt ptr %call.i.i, null
  br i1 %cmp.i, label %mt7915_init_tx_queues.exit, label %mt76_init_tx_queue.exit.i.mt7915_init_tx_queues.exit.thread_crit_edge

mt76_init_tx_queue.exit.i.mt7915_init_tx_queues.exit.thread_crit_edge: ; preds = %mt76_init_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt7915_init_tx_queues.exit.thread

mt7915_init_tx_queues.exit.thread:                ; preds = %mt76_init_tx_queue.exit.i.mt7915_init_tx_queues.exit.thread_crit_edge, %mt76_init_tx_queue.exit.thread.i
  %52 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phy, align 8
  %q_tx.1.i = getelementptr inbounds %struct.mt76_phy, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %q_tx.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %q_tx.1.i, align 8
  %arrayidx5.1.i = getelementptr %struct.mt76_phy, ptr %53, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %arrayidx5.1.i, align 4
  %57 = load ptr, ptr %phy, align 8
  %q_tx.2.i = getelementptr inbounds %struct.mt76_phy, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %q_tx.2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %q_tx.2.i, align 8
  %arrayidx5.2.i = getelementptr %struct.mt76_phy, ptr %57, i32 0, i32 4, i32 2
  %60 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %arrayidx5.2.i, align 4
  %61 = load ptr, ptr %phy, align 8
  %q_tx.3.i = getelementptr inbounds %struct.mt76_phy, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %q_tx.3.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %q_tx.3.i, align 8
  %arrayidx5.3.i = getelementptr %struct.mt76_phy, ptr %61, i32 0, i32 4, i32 3
  %64 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %arrayidx5.3.i, align 4
  %65 = load ptr, ptr %phy, align 8
  %q_tx.4.i = getelementptr inbounds %struct.mt76_phy, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %q_tx.4.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %q_tx.4.i, align 8
  %arrayidx5.4.i = getelementptr %struct.mt76_phy, ptr %65, i32 0, i32 4, i32 4
  %68 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %arrayidx5.4.i, align 4
  %call.i = tail call ptr @mt76_init_queue(ptr noundef %dev, i32 noundef 0, i32 noundef 17, i32 noundef 256, i32 noundef 873216) #3
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mt76_init_mcu_queue.exit, label %mt76_init_mcu_queue.exit.thread

mt7915_init_tx_queues.exit:                       ; preds = %mt76_init_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %69 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

mt76_init_mcu_queue.exit.thread:                  ; preds = %mt7915_init_tx_queues.exit.thread
  %qid3.i = getelementptr inbounds %struct.mt76_queue, ptr %call.i, i32 0, i32 15
  %70 = ptrtoint ptr %qid3.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 7, ptr %qid3.i, align 4
  %arrayidx.i = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 0
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %call.i222 = tail call ptr @mt76_init_queue(ptr noundef %dev, i32 noundef 1, i32 noundef 20, i32 noundef 256, i32 noundef 873216) #3
  %cmp.i.i223 = icmp ugt ptr %call.i222, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i223, label %mt76_init_mcu_queue.exit229, label %mt76_init_mcu_queue.exit229.thread

mt76_init_mcu_queue.exit:                         ; preds = %mt7915_init_tx_queues.exit.thread
  call void @__sanitizer_cov_trace_pc() #5
  %72 = ptrtoint ptr %call.i to i32
  br label %cleanup

mt76_init_mcu_queue.exit229.thread:               ; preds = %mt76_init_mcu_queue.exit.thread
  %qid3.i225 = getelementptr inbounds %struct.mt76_queue, ptr %call.i222, i32 0, i32 15
  %73 = ptrtoint ptr %qid3.i225 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 8, ptr %qid3.i225, align 4
  %arrayidx.i226 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 1
  %74 = ptrtoint ptr %arrayidx.i226 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i222, ptr %arrayidx.i226, align 4
  %call.i230 = tail call ptr @mt76_init_queue(ptr noundef %dev, i32 noundef 2, i32 noundef 16, i32 noundef 128, i32 noundef 873216) #3
  %cmp.i.i231 = icmp ugt ptr %call.i230, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i231, label %mt76_init_mcu_queue.exit237, label %mt76_init_mcu_queue.exit237.thread

mt76_init_mcu_queue.exit229:                      ; preds = %mt76_init_mcu_queue.exit.thread
  call void @__sanitizer_cov_trace_pc() #5
  %75 = ptrtoint ptr %call.i222 to i32
  br label %cleanup

mt76_init_mcu_queue.exit237.thread:               ; preds = %mt76_init_mcu_queue.exit229.thread
  %qid3.i233 = getelementptr inbounds %struct.mt76_queue, ptr %call.i230, i32 0, i32 15
  %76 = ptrtoint ptr %qid3.i233 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 9, ptr %qid3.i233, align 4
  %arrayidx.i234 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 22, i32 2
  %77 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i230, ptr %arrayidx.i234, align 4
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 24
  %78 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %queue_ops, align 4
  %alloc = getelementptr inbounds %struct.mt76_queue_ops, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %alloc, align 4
  %q_rx = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 23
  %arrayidx = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 1
  %call43 = tail call i32 %81(ptr noundef %dev, ptr noundef %arrayidx, i32 noundef 0, i32 noundef 512, i32 noundef 2048, i32 noundef 873728) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %mt76_init_mcu_queue.exit237.thread.cleanup_crit_edge

mt76_init_mcu_queue.exit237.thread.cleanup_crit_edge: ; preds = %mt76_init_mcu_queue.exit237.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

mt76_init_mcu_queue.exit237:                      ; preds = %mt76_init_mcu_queue.exit229.thread
  call void @__sanitizer_cov_trace_pc() #5
  %82 = ptrtoint ptr %call.i230 to i32
  br label %cleanup

if.end46:                                         ; preds = %mt76_init_mcu_queue.exit237.thread
  %83 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %queue_ops, align 4
  %alloc48 = getelementptr inbounds %struct.mt76_queue_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %alloc48 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %alloc48, align 4
  %arrayidx50 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 2
  %call51 = tail call i32 %86(ptr noundef %dev, ptr noundef %arrayidx50, i32 noundef 1, i32 noundef 512, i32 noundef 2048, i32 noundef 873728) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end54:                                         ; preds = %if.end46
  %87 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %queue_ops, align 4
  %alloc56 = getelementptr inbounds %struct.mt76_queue_ops, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %alloc56 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %alloc56, align 4
  %call59 = tail call i32 %90(ptr noundef %dev, ptr noundef %q_rx, i32 noundef 0, i32 noundef 1536, i32 noundef 2048, i32 noundef 869632) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end62:                                         ; preds = %if.end54
  %dbdc_support = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 17
  %91 = ptrtoint ptr %dbdc_support to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %dbdc_support, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool63.not = icmp eq i8 %92, 0
  br i1 %tobool63.not, label %if.end62.if.end83_crit_edge, label %if.then64

if.end62.if.end83_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end83

if.then64:                                        ; preds = %if.end62
  %93 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %queue_ops, align 4
  %alloc66 = getelementptr inbounds %struct.mt76_queue_ops, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %alloc66 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %alloc66, align 4
  %arrayidx68 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 3
  %add69 = add nuw nsw i32 %spec.select, 869632
  %call70 = tail call i32 %96(ptr noundef %dev, ptr noundef %arrayidx68, i32 noundef 1, i32 noundef 1536, i32 noundef 2048, i32 noundef %add69) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.then64.cleanup_crit_edge

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end73:                                         ; preds = %if.then64
  %97 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %queue_ops, align 4
  %alloc75 = getelementptr inbounds %struct.mt76_queue_ops, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %alloc75 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %alloc75, align 4
  %arrayidx77 = getelementptr %struct.mt76_dev, ptr %dev, i32 0, i32 23, i32 4
  %add78 = add nuw nsw i32 %spec.select, 873728
  %call79 = tail call i32 %100(ptr noundef %dev, ptr noundef %arrayidx77, i32 noundef 2, i32 noundef 512, i32 noundef 2048, i32 noundef %add78) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end73.if.end83_crit_edge, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end73.if.end83_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end83

if.end83:                                         ; preds = %if.end73.if.end83_crit_edge, %if.end62.if.end83_crit_edge
  %101 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %queue_ops, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %call85 = tail call i32 %104(ptr noundef %dev, ptr noundef nonnull @mt76_dma_rx_poll) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp = icmp slt i32 %call85, 0
  br i1 %cmp, label %if.end83.cleanup_crit_edge, label %if.end87

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end87:                                         ; preds = %if.end83
  %tx_napi_dev = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 17
  %tx_napi = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 27
  tail call fastcc void @netif_tx_napi_add(ptr noundef %tx_napi_dev, ptr noundef %tx_napi)
  tail call void @napi_enable(ptr noundef %tx_napi) #3
  %105 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bus, align 4
  %rmw90 = getelementptr inbounds %struct.mt76_bus_ops, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %rmw90 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rmw90, align 4
  %call91 = tail call i32 %108(ptr noundef %dev, i32 noundef 868668, i32 noundef 0, i32 noundef 7) #3
  %109 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bus, align 4
  %rmw93 = getelementptr inbounds %struct.mt76_bus_ops, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %rmw93 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rmw93, align 4
  %call94 = tail call i32 %112(ptr noundef %dev, i32 noundef 872764, i32 noundef 0, i32 noundef 7) #3
  %113 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bus, align 4
  %rmw96 = getelementptr inbounds %struct.mt76_bus_ops, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %rmw96 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rmw96, align 4
  %call97 = tail call i32 %116(ptr noundef %dev, i32 noundef 885052, i32 noundef 0, i32 noundef 7) #3
  %117 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bus, align 4
  %rmw99 = getelementptr inbounds %struct.mt76_bus_ops, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %rmw99 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rmw99, align 4
  %call100 = tail call i32 %120(ptr noundef %dev, i32 noundef 885052, i32 noundef 0, i32 noundef 7) #3
  %call101 = tail call zeroext i1 @__mt76_poll(ptr noundef %dev, i32 noundef 880708, i32 noundef 1, i32 noundef 0, i32 noundef 1000) #3
  %121 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bus, align 4
  %rmw103 = getelementptr inbounds %struct.mt76_bus_ops, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %rmw103 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rmw103, align 4
  %call104 = tail call i32 %124(ptr noundef %dev, i32 noundef 868872, i32 noundef 0, i32 noundef 5) #3
  %125 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bus, align 4
  %rmw106 = getelementptr inbounds %struct.mt76_bus_ops, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %rmw106 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmw106, align 4
  %call107 = tail call i32 %128(ptr noundef %dev, i32 noundef 872968, i32 noundef 0, i32 noundef 5) #3
  %129 = ptrtoint ptr %hif2 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hif2, align 128
  %tobool109.not = icmp eq ptr %130, null
  br i1 %tobool109.not, label %if.end87.if.end122_crit_edge, label %if.then110

if.end87.if.end122_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end122

if.then110:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #5
  %131 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bus, align 4
  %rmw112 = getelementptr inbounds %struct.mt76_bus_ops, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %rmw112 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rmw112, align 4
  %add113 = add nuw nsw i32 %spec.select, 868872
  %call114 = tail call i32 %134(ptr noundef %dev, i32 noundef %add113, i32 noundef 0, i32 noundef 5) #3
  %135 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bus, align 4
  %rmw116 = getelementptr inbounds %struct.mt76_bus_ops, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %rmw116 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rmw116, align 4
  %add117 = add nuw nsw i32 %spec.select, 872968
  %call118 = tail call i32 %138(ptr noundef %dev, i32 noundef %add117, i32 noundef 0, i32 noundef 5) #3
  %139 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %bus, align 4
  %rmw120 = getelementptr inbounds %struct.mt76_bus_ops, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %rmw120 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rmw120, align 4
  %call121 = tail call i32 %142(ptr noundef %dev, i32 noundef 880688, i32 noundef 0, i32 noundef 1) #3
  br label %if.end122

if.end122:                                        ; preds = %if.then110, %if.end87.if.end122_crit_edge
  tail call fastcc void @mt7915_irq_enable(ptr noundef %dev, i32 noundef 738426887)
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %if.end83.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.then64.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %mt76_init_mcu_queue.exit237, %mt76_init_mcu_queue.exit237.thread.cleanup_crit_edge, %mt76_init_mcu_queue.exit229, %mt76_init_mcu_queue.exit, %mt7915_init_tx_queues.exit
  %retval.0 = phi i32 [ 0, %if.end122 ], [ %69, %mt7915_init_tx_queues.exit ], [ %72, %mt76_init_mcu_queue.exit ], [ %75, %mt76_init_mcu_queue.exit229 ], [ %82, %mt76_init_mcu_queue.exit237 ], [ %call43, %mt76_init_mcu_queue.exit237.thread.cleanup_crit_edge ], [ %call51, %if.end46.cleanup_crit_edge ], [ %call59, %if.end54.cleanup_crit_edge ], [ %call70, %if.then64.cleanup_crit_edge ], [ %call79, %if.end73.cleanup_crit_edge ], [ %call85, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_dma_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_dma_rx_poll(ptr noundef, i32 noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_tx_napi_add(ptr noundef %dev, ptr noundef %napi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %state = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #3
  tail call void @netif_napi_add(ptr noundef %dev, ptr noundef %napi, ptr noundef nonnull @mt7915_poll_tx, i32 noundef 64) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7915_poll_tx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8152
  %queue_ops.i = getelementptr i8, ptr %napi, i32 -36
  %0 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tx_cleanup.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_cleanup.i, align 4
  %q_mcu.i = getelementptr i8, ptr %napi, i32 -808
  %4 = ptrtoint ptr %q_mcu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q_mcu.i, align 16
  tail call void %3(ptr noundef %add.ptr, ptr noundef %5, i1 noundef zeroext false) #3
  %6 = ptrtoint ptr %queue_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue_ops.i, align 4
  %tx_cleanup2.i = getelementptr inbounds %struct.mt76_queue_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %tx_cleanup2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_cleanup2.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %napi, i32 -804
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4.i, align 4
  tail call void %9(ptr noundef %add.ptr, ptr noundef %11, i1 noundef zeroext false) #3
  %call = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #3
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %hif2.i = getelementptr i8, ptr %napi, i32 2856
  %12 = ptrtoint ptr %hif2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hif2.i, align 128
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mt7915_dual_hif_set_irq_mask(ptr noundef %add.ptr, i1 noundef zeroext false, i32 noundef 0, i32 noundef 201359360) #3
  br label %if.end.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mt76_set_irq_mask(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0, i32 noundef 201359360) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %state.i.i = getelementptr i8, ptr %napi, i32 2868
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %irq_tasklet.i = getelementptr i8, ptr %napi, i32 2864
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet.i) #3
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7915_irq_enable(ptr noundef %dev, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %hif2 = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %hif2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif2, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mt7915_dual_hif_set_irq_mask(ptr noundef %dev, i1 noundef zeroext false, i32 noundef 0, i32 noundef %mask) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mt76_set_irq_mask(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef %mask) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %state.i = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 3, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.tasklet_schedule.exit_crit_edge

if.end.tasklet_schedule.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %irq_tasklet = getelementptr inbounds %struct.mt7915_dev, ptr %dev, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %irq_tasklet) #3
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7915_dma_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %rmw = getelementptr inbounds %struct.mt76_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 868872, i32 noundef 5, i32 noundef 0) #3
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %rmw2 = getelementptr inbounds %struct.mt76_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rmw2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw2, align 4
  %call3 = tail call i32 %7(ptr noundef %dev, i32 noundef 872968, i32 noundef 5, i32 noundef 0) #3
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %rmw5 = getelementptr inbounds %struct.mt76_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %rmw5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw5, align 4
  %call6 = tail call i32 %11(ptr noundef %dev, i32 noundef 872704, i32 noundef 48, i32 noundef 0) #3
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %rmw8 = getelementptr inbounds %struct.mt76_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rmw8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw8, align 4
  %call9 = tail call i32 %15(ptr noundef %dev, i32 noundef 872704, i32 noundef 0, i32 noundef 48) #3
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %rmw11 = getelementptr inbounds %struct.mt76_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %rmw11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw11, align 4
  %call12 = tail call i32 %19(ptr noundef %dev, i32 noundef 868608, i32 noundef 48, i32 noundef 0) #3
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %rmw14 = getelementptr inbounds %struct.mt76_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %rmw14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmw14, align 4
  %call15 = tail call i32 %23(ptr noundef %dev, i32 noundef 868608, i32 noundef 0, i32 noundef 48) #3
  tail call void @mt76_dma_cleanup(ptr noundef %dev) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_dma_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mt76_init_queue(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7915_dual_hif_set_irq_mask(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt76_set_irq_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i8 0, i8 2}
